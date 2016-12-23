unit umy_proc;

interface

uses datamodule, dateutils, SysUtils, Controls, windows, dialogs;

procedure after_change_fam(stud_pin: integer);
procedure nachislenie(stud_pin: integer; param: string);
procedure periodi(dat: tdate; var beg, en: tdate);
function kolmonths(BeginDate, EndDate: tdate; out DaysCount: Byte): integer;
procedure abitu_transfer(stud_pin1, abitu_pin1, abitu_zach1, spotd1, spfak1,
  spspec1: integer);

type
  raschet = record
    datb, daten: tdatetime;
    fob, fak, kurs, sobit, spec, pin_moves, fiks: integer;
    prizn: string;
    summ: real;
    smena: boolean;
    nach: string[1];
  end;

var
  masras: array [1 .. 100] of raschet;
  readymas, tmpmass: array [1 .. 100] of raschet;
  kolready, kolinmas: integer;

implementation

// *****************************************************************************
// Функция, которая возвращает разницу между двумя датами в месяцах.
// Исходные данные: BeginDate, EndDate - начальная и конечная даты;
// DaysCount - остаток разницы в днях (хотя скорее она исходная
// данная, а выходная).
// Выходные данные: возвращает разницу между датами в месяцах.
// *****************************************************************************
function kolmonths(BeginDate, EndDate: tdate; out DaysCount: Byte): integer;
// в данном случае правильнее использовать директиву не var, а out
var
  Days1, Days2, // количество дней начальной и конечной дат
  Months1, Months2, // количество месяцев начальной и конечной дат
  Years1, Years2: Word; // количество лет начальной и конечной дат
  BufferDate: tdatetime; // буфер для обмена значениями
begin
  // считываем количество дней, месяцев и лет каждой из дат и заносим в
  // соответствующие переменные (и не будем это делать через ТО место)
  DecodeDate(BeginDate, Years1, Months1, Days1);
  DecodeDate(EndDate, Years2, Months2, Days2);
  // Вычисляем суммарную разницу между датами по разницам в годах*12 и месяцах
  Result := (Years2 - Years1) * 12 + Months2 - Months1;
  // Учитываем влияние разницы в днях на количество месяцев + остаток в днях в
  // переменной DaysCount
  if Days2 < Days1 then // а зачем при сравнении одно из другого вычитать?
  begin // если разница отрицательна, то
    // вычитать единицу Борланд рекомендует так
    Dec(Result); // производим заем месяца из имеющихся
    // В зависимости от месяца в "меньшей" дате, вычисляем остаток в днях
    // Это тоже лучше делать штатными средствами
    DaysCount := DaysInAMonth(Years2, Months1) - Days1 + Days2;
  end // конец действий при отрицательной разнице дней
  else // при положительной или нулевой разнице дней
    DaysCount := Days2 - Days1; // банальная разность
end;
// *****************************************************************************

function godof(dat: tdate): integer;
begin
  if ((monthof(dat) >= 9) and (monthof(dat) <= 12)) then
    godof := yearof(dat);
  if ((monthof(dat) >= 1) and (monthof(dat) <= 8)) then
    godof := yearof(dat) - 1;
end;

/// //////////////////////////////////////
// после смены фамилии убрать из проекта
/// //////////////////////////////////////
procedure after_change_fam(stud_pin: integer);
begin
  datamodule1.qtmp.SQL.Clear;
  datamodule1.qtmp.SQL.Add('select pro from acc ');
  datamodule1.qtmp.SQL.Add('where pin=' + inttostr(stud_pin));
  datamodule1.qtmp.ExecSQL;
  datamodule1.qtmp.Open;

  if datamodule1.qtmp.FieldByName('pro').AsString = '10' then
  begin
    datamodule1.qtmp.SQL.Clear;
    datamodule1.qtmp.SQL.Add('update acc set pro=''00'' ');
    datamodule1.qtmp.SQL.Add('where pin=' + inttostr(stud_pin));
    datamodule1.qtmp.ExecSQL;
  end
  else if datamodule1.qtmp.FieldByName('pro').AsString = '11' then
  begin
    datamodule1.qtmp.SQL.Clear;
    datamodule1.qtmp.SQL.Add('update acc set pro=''01'' ');
    datamodule1.qtmp.SQL.Add('where pin=' + inttostr(stud_pin));
    datamodule1.qtmp.ExecSQL;
  end;
end;

/// ////////////////////////////////////////
// разбивка на периоды
/// ///////////////////////////////////////
procedure periodi(dat: tdate; var beg, en: tdate);
begin
  if ((monthof(dat) >= 7) and (monthof(dat) <= 12)) or (monthof(dat) = 1) then
  begin
    beg := encodedate(godof(dat), 9, 1);
    en := encodedate(godof(dat) + 1, 1, 31);
  end;
  if ((monthof(dat) >= 2) and (monthof(dat) <= 6)) then
  begin
    beg := encodedate(godof(dat) + 1, 2, 1);
    en := encodedate(godof(dat) + 1, 6, 30);
  end;
end;

procedure nachislenie(stud_pin: integer; param: string);
var
  kolmonth, god, i, j, godob, month, event, uchg, forma: integer;
  perbeg, perend, tempd: tdate;
  temp: raschet;
  filt, s, s1: string;
  dolg, oplat: real;
  gi: integer;
  year: integer;
  tempfile: textfile;
  tmpgod: integer;
  dolgsum, oplsum, dolg30_06: real;
  fiksquery: widestring;
  year30_06: integer; // за какой год остаток
  nachisleno, tekost: real;
  go_raschet: boolean; // true-студент платник false-бюджетник
  kbyte: Byte;
  sumcor: real;
  sob_, prik_spis_pin, zabalans_pin: integer;
  sumspis: real;
  sum_pogash: real; // сумма долга по приказу , погашенная
begin
  go_raschet := false;
  if param = 'notdel' then
  begin
    datamodule1.qtmp.SQL.Clear;
    datamodule1.qtmp.SQL.Add('select spstatus from acc where pin=' +
      inttostr(stud_pin));
    datamodule1.qtmp.ExecSQL;
    datamodule1.qtmp.Open;
    if (datamodule1.qtmp.FieldByName('spstatus').AsInteger in [2, 3]) then
      go_raschet := true
    else
    begin
      datamodule1.qtmp.SQL.Clear;
      datamodule1.qtmp.SQL.Add
        ('select spevent.pin as pin,spevent.spstatus as spstatus, moves.mvfakt from moves, spevent ');
      datamodule1.qtmp.SQL.Add('where moves.acc=' + inttostr(stud_pin) +
        ' and moves.spevent=spevent.pin ');
      datamodule1.qtmp.SQL.Add('order by moves.mvfakt');
      datamodule1.qtmp.ExecSQL;
      datamodule1.qtmp.Open;
      datamodule1.qtmp.First;
      while not datamodule1.qtmp.Eof do
      begin
        if datamodule1.qtmp.FieldByName('spstatus').AsInteger in [2, 3] then
          go_raschet := true;
        datamodule1.qtmp.Next;
      end;
    end;
  end
  else if param = 'del' then
    go_raschet := true;

  IF go_raschet THEN
  BEGIN
    for i := 1 to 100 do
    begin
      masras[i].datb := 0;
      masras[i].daten := 0;
      masras[i].nach := '';
      readymas[i].datb := 0;
      readymas[i].daten := 0;
      readymas[i].nach := '';
    end;

    datamodule1.Table_w35.Open;
    datamodule1.Table_w33.Open;

    if datamodule1.table_w6.indexfieldnames <> 'acc' then
      datamodule1.table_w6.indexfieldnames := 'acc';
    datamodule1.table_w6.Filtered := false;
    datamodule1.table_w6.Filter := 'acc=' + inttostr(stud_pin);
    datamodule1.table_w6.Filtered := true;
    if datamodule1.table_w6.indexfieldnames <> 'mvfakt' then
      datamodule1.table_w6.indexfieldnames := 'mvfakt';
    if (monthof(date) >= 9) and (monthof(date) <= 12) then
      god := yearof(date)
    else
      god := yearof(date) - 1;

    if datamodule1.table_w26.indexfieldnames <> 'pin' then // spevent
      datamodule1.table_w26.indexfieldnames := 'pin';

    if datamodule1.Table_w33.indexfieldnames <> 'pin' then // spotd
      datamodule1.Table_w33.indexfieldnames := 'pin';

    datamodule1.table_w6.First;
    i := 0;
    j := 1;
    while not datamodule1.table_w6.Eof do
    // заполнение массива событий для студента
    begin
      if datamodule1.table_w6spevent.AsInteger <> 26 then
      // начало фильтр без реорганизации
      Begin
        // заполнием список событий по студенту
        datamodule1.table_w26.findkey([datamodule1.table_w6spevent.AsInteger]);
        datamodule1.Table_w33.findkey([datamodule1.table_w6spotd.AsInteger]);
        inc(i);

        event := datamodule1.table_w6spevent.AsInteger;
        if datamodule1.table_w6mvfakt.AsString <> '' then
        begin
          masras[j].datb := datamodule1.table_w6mvfakt.asdatetime;
          if (j > 1) and (masras[j - 1].daten = 0) then
            masras[j - 1].daten := datamodule1.table_w6mvfakt.asdatetime;
        end
        else
        begin
          masras[j].datb := datamodule1.Table_w6mvdate.asdatetime;
          if (j > 1) and (masras[j - 1].daten = 0) then
            masras[j - 1].daten := datamodule1.Table_w6mvdate.asdatetime;
        end;
        masras[j].fob := datamodule1.table_w6spotd.AsInteger;
        masras[j].fak := datamodule1.table_w6spfak.AsInteger;
        masras[j].spec := datamodule1.table_w6spspec.AsInteger;
        masras[j].kurs := datamodule1.table_w6kurs.AsInteger;

        if event in [2, 10, 15] then
        begin
          masras[j].smena := true;
          event := 0;
        end
        else
          masras[j].smena := false;

        masras[j].sobit := datamodule1.table_w6spevent.AsInteger;
        masras[j].prizn := datamodule1.table_w26vfort.AsString;
        // showmessage(datetostr(masras[j].datb));
        inc(j);
      End; // конец фильтр без реорганизации
      datamodule1.table_w6.Next;
    end;

    kolinmas := j - 1;
    { if masras[kolinmas].daten=0 then
      begin
      if (masras[kolinmas].fob=8) and
      (masras[kolinmas].kurs=4) and
      (date()>=strtodate('01.02.'+inttostr(god+1))) and
      (date()<=strtodate('31.08.'+inttostr(god+1))) then
      begin
      masras[kolinmas].daten:=encodedate(god+1,1,31);
      end
      else
      begin
      if (date()>=strtodate('01.09.'+inttostr(god))) and
      (date()<=strtodate('31.01.'+inttostr(god+1))) then masras[kolinmas].daten:=encodedate(god+1,1,31);
      if (date()>=strtodate('01.02.'+inttostr(god+1))) and
      (date()<=strtodate('31.08.'+inttostr(god+1))) then masras[kolinmas].daten:=encodedate(god+1,6,30);
      end;
      end; }

    if masras[kolinmas].daten = 0 then
    begin
      if (masras[kolinmas].fob = 8) and (masras[kolinmas].kurs = 4) then
      begin
        if ((date() >= strtodate('01.09.' + inttostr(god))) and
          (date() <= strtodate('31.12.' + inttostr(god))) or
          (date() >= strtodate('01.01.' + inttostr(god + 1))) and
          (date() <= strtodate('31.07.' + inttostr(god + 1)))) then
          masras[kolinmas].daten := encodedate(god + 1, 1, 31)
        else
          masras[kolinmas].daten := encodedate(god + 1, 6, 30)
      end
      else
        masras[kolinmas].daten := encodedate(god + 1, 6, 30);
    end;

    /// ////////////////////////////////////////////////////
    // корректировка дат массива событий студента
    for i := 1 to kolinmas do
    begin
      // зачисление в число студентов
      if masras[i].sobit in [1, 2, 3] then
      begin
        periodi(masras[i].datb, perbeg, perend);
        masras[i].datb := perbeg;
      end;
      // Восстановление
      // прием студента из другого ВУЗа
      if masras[i].sobit = 33 then
      begin
        // на заочное
        if ((masras[i].fob in [7, 8]) or ((masras[i].fob = 10) and
          (masras[i].fak = 65))) then
        begin
          periodi(masras[i].datb, perbeg, perend);
          masras[i].datb := perbeg;
        end;
        // на очное
        if ((masras[i].fob in [6]) or ((masras[i].fob = 10) and
          (masras[i].fak = 57))) then
        begin
          if monthof(masras[i].datb) = 12 then
          begin
            month := 1;
            if (dayof(masras[i].datb) >= 20) then
              year := yearof(masras[i].datb) + 1
            else
              year := yearof(masras[i].datb);
          end
          else
          begin
            if monthof(masras[i].datb) <> 6 then
              month := monthof(masras[i].datb) + 1;
            if monthof(masras[i].datb) = 6 then
              month := monthof(masras[i].datb) + 3;
            year := yearof(masras[i].datb)
          end;
          if (dayof(masras[i].datb) >= 20) then
            masras[i].datb := encodedate(year, month, 1)
          else
            masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
        end;
        // showmessage(datetostr(masras[i].datb));
      end;

      if i > 1 then
      begin
        /// //////////////////////////////////////////////////////////
        // перевод
        // с контр на контр п. 3.2
        if (masras[i - 1].sobit in [3, 11, 13, 12, 33, 28, 14, 16, 38]) and
          (masras[i].sobit in [14, 16, 38]) then
        begin
          if monthof(masras[i].datb) = 12 then
          begin
            month := 1;
            if (dayof(masras[i].datb) >= 20) then
              year := yearof(masras[i].datb) + 1
            else
              year := yearof(masras[i].datb);
          end
          else
          begin
            if monthof(masras[i].datb) <> 6 then
              month := monthof(masras[i].datb) + 1;
            if monthof(masras[i].datb) = 6 then
              month := monthof(masras[i].datb) + 3;
            year := yearof(masras[i].datb)
          end;
          if (dayof(masras[i].datb) >= 20) then
            masras[i].datb := encodedate(year, month, 1)
          else
            masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
        end;
        // с бюджетного на платное
        // не меняется форма обучения (з=з или о=о) при переводе
        if (masras[i - 1].sobit in [2, 10, 15, 37, 32]) and
          (masras[i].sobit in [14, 16, 38]) and
          (masras[i - 1].fob = masras[i].fob) then
        begin
          // на заочное
          if ((masras[i].fob in [7, 8]) or ((masras[i].fob = 10) and
            (masras[i].fak = 65))) then
          begin
            periodi(masras[i].datb, perbeg, perend);
            masras[i].datb := perbeg;
          end;
          // на очное
          if ((masras[i].fob in [6]) or ((masras[i].fob = 10) and
            (masras[i].fak = 57))) then
          begin
            if monthof(masras[i].datb) = 12 then
            begin
              month := 1;
              if (dayof(masras[i].datb) >= 20) then
                year := yearof(masras[i].datb) + 1
              else
                year := yearof(masras[i].datb);
            end
            else
            begin
              if monthof(masras[i].datb) <> 6 then
                month := monthof(masras[i].datb) + 1;
              if monthof(masras[i].datb) = 6 then
                month := monthof(masras[i].datb) + 3;
              year := yearof(masras[i].datb)
            end;
            if (dayof(masras[i].datb) >= 20) then
              masras[i].datb := encodedate(year, month, 1)
            else
              masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
          end;
        end;
        // меняется форма обучения при переводе  ( з->o или о->з)
        if (masras[i - 1].sobit in [2, 10, 15, 37, 32]) and
          (masras[i].sobit in [14, 16, 38]) and
          (masras[i - 1].fob <> masras[i].fob) then
        begin
          // на заочное
          if ((masras[i].fob in [7, 8]) or ((masras[i].fob = 10) and
            (masras[i].fak = 65))) then
          begin
            periodi(masras[i].datb, perbeg, perend);
            masras[i].datb := perbeg;
          end;
          // на очное
          if ((masras[i].fob in [6]) or ((masras[i].fob = 10) and
            (masras[i].fak = 57))) then
          begin
            if monthof(masras[i].datb) = 12 then
            begin
              month := 1;
              if (dayof(masras[i].datb) >= 20) then
                year := yearof(masras[i].datb) + 1
              else
                year := yearof(masras[i].datb);
            end
            else
            begin
              if monthof(masras[i].datb) <> 6 then
                month := monthof(masras[i].datb) + 1;
              if monthof(masras[i].datb) = 6 then
                month := monthof(masras[i].datb) + 3;
              year := yearof(masras[i].datb)
            end;
            if (dayof(masras[i].datb) >= 20) then
              masras[i].datb := encodedate(year, month, 1)
            else
              masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
          end;
        end;
        /// /////////////////////////////////////////////////
        // выход из академа
        if masras[i].sobit = 20 then
        begin
          // на заочное
          if ((masras[i].fob in [7, 8]) or ((masras[i].fob = 10) and
            (masras[i].fak = 65))) then
          begin
            periodi(masras[i].datb, perbeg, perend);
            masras[i].datb := perbeg;
          end;
          // на очное
          if ((masras[i].fob in [6]) or ((masras[i].fob = 10) and
            (masras[i].fak = 57))) then
          begin
            if monthof(masras[i].datb) = 12 then
            begin
              month := 1;
              if (dayof(masras[i].datb) >= 20) then
                year := yearof(masras[i].datb) + 1
              else
                year := yearof(masras[i].datb);
            end
            else
            begin
              if monthof(masras[i].datb) <> 6 then
                month := monthof(masras[i].datb) + 1;
              if monthof(masras[i].datb) = 6 then
                month := monthof(masras[i].datb) + 3;
              year := yearof(masras[i].datb)
            end;
            if (dayof(masras[i].datb) >= 20) then
              masras[i].datb := encodedate(year, month, 1)
            else
              masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
          end;
        end;
        /// //////////////////////////////////////////////////////
      end;

      if i > 2 then
      begin
        // восстановлен после отчисления с бюджетного места
        if (masras[i - 2].sobit in [2, 10, 15, 18, 19, 32, 37]) and
        // учеба на бюджетном
          (masras[i - 1].sobit in [7, 8, 9, 27, 29, 30, 34, 39, 40, 42]) and
        // отчислен
          (masras[i].sobit in [11, 12, 13]) then
        begin
          // на заочное
          if ((masras[i].fob in [7, 8]) or ((masras[i].fob = 10) and
            (masras[i].fak = 65))) then
          begin
            periodi(masras[i].datb, perbeg, perend);
            masras[i].datb := perbeg;
          end;
          // на очное
          if ((masras[i].fob in [6]) or ((masras[i].fob = 10) and
            (masras[i].fak = 57))) then
          begin
            if monthof(masras[i].datb) = 12 then
            begin
              month := 1;
              if (dayof(masras[i].datb) >= 20) then
                year := yearof(masras[i].datb) + 1
              else
                year := yearof(masras[i].datb);
            end
            else
            begin
              if monthof(masras[i].datb) <> 6 then
                month := monthof(masras[i].datb) + 1;
              if monthof(masras[i].datb) = 6 then
                month := monthof(masras[i].datb) + 3;
              year := yearof(masras[i].datb)
            end;
            if (dayof(masras[i].datb) >= 20) then
              masras[i].datb := encodedate(year, month, 1)
            else
              masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
          end;
        end;
        /// ////////////////////////////////////////////////
        // воостановление после прохождения службы в РА студента, отчисленного в связи с призывом в РА
        if (masras[i - 1].sobit = 6) and (masras[i].sobit in [11, 12, 13]) then
        begin
          if monthof(masras[i].datb) = 12 then
          begin
            month := 1;
            if (dayof(masras[i].datb) >= 20) then
              year := yearof(masras[i].datb) + 1
            else
              year := yearof(masras[i].datb);
          end
          else
          begin
            if monthof(masras[i].datb) <> 6 then
              month := monthof(masras[i].datb) + 1;
            if monthof(masras[i].datb) = 6 then
              month := monthof(masras[i].datb) + 3;
            year := yearof(masras[i].datb)
          end;
          if (dayof(masras[i].datb) >= 20) then
            masras[i].datb := encodedate(year, month, 1)
          else
            masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
        end;
        /// ///////////////////////////////////////////////////
        // Восстановление после отчисления с платного
        if (masras[i - 2].sobit in [1, 3, 11, 12, 13, 14, 16, 17, 19, 33, 38])
          and (masras[i - 1].sobit in [7, 8, 9, 27, 29, 30, 34, 39, 40, 42]) and
          (masras[i].sobit in [11, 12, 13]) then
        begin
          // ------в течении одного учебного года или два подряд на курс выше---------
          if (godof(masras[i - 1].datb) = godof(masras[i].datb)) or
            ((godof(masras[i].datb) - godof(masras[i - 1].datb) = 1) and
            ((masras[i].kurs > masras[i - 1].kurs))) then
          begin
            // очное
            if ((masras[i].fob in [6]) or ((masras[i].fob = 10) and
              (masras[i].fak = 57))) then
            begin
              if monthof(masras[i].datb) = 12 then
              begin
                month := 1;
                if (dayof(masras[i].datb) >= 20) then
                  year := yearof(masras[i].datb) + 1
                else
                  year := yearof(masras[i].datb);
              end
              else
              begin
                if monthof(masras[i].datb) <> 6 then
                  month := monthof(masras[i].datb) + 1;
                if monthof(masras[i].datb) = 6 then
                  month := monthof(masras[i].datb) + 3;
                year := yearof(masras[i].datb)
              end;
              if (dayof(masras[i].datb) >= 20) then
                masras[i].datb := encodedate(year, month, 1)
              else
                masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
            end;
            // заочное
            if ((masras[i].fob in [7, 8]) or ((masras[i].fob = 10) and
              (masras[i].fak = 65))) then
            begin
              if (godof(masras[i - 1].datb) = godof(date()) - 1) and
                (godof(masras[i].datb) = godof(date())) then
                masras[i].nach := '*';
              masras[i].datb := masras[i - 1].datb;
              if monthof(masras[i].datb) = 12 then
              begin
                month := 1;
                if (dayof(masras[i].datb) >= 20) then
                  year := yearof(masras[i].datb) + 1
                else
                  year := yearof(masras[i].datb);
              end
              else
              begin
                if monthof(masras[i].datb) <> 6 then
                  month := monthof(masras[i].datb) + 1;
                if monthof(masras[i].datb) = 6 then
                  month := monthof(masras[i].datb) + 3;
                year := yearof(masras[i].datb)
              end;
              if (dayof(masras[i].datb) >= 20) then
                masras[i].datb := encodedate(year, month, 1)
              else
                masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
            end;
          end;
          // ------два года подряд на курс не выше того, с кот был отчислен или  перерыв более одного года------
          if (((godof(masras[i].datb) - godof(masras[i - 1].datb) = 1) and
            (masras[i].kurs <= masras[i - 1].kurs))) or
            (godof(masras[i].datb) - godof(masras[i - 1].datb) > 1) then
          begin
            // очное
            if ((masras[i].fob in [6]) or ((masras[i].fob = 10) and
              (masras[i].fak = 57))) then
            begin
              if monthof(masras[i].datb) = 12 then
              begin
                month := 1;
                if (dayof(masras[i].datb) >= 20) then
                  year := yearof(masras[i].datb) + 1
                else
                  year := yearof(masras[i].datb);
              end
              else
              begin
                if monthof(masras[i].datb) <> 6 then
                  month := monthof(masras[i].datb) + 1;
                if monthof(masras[i].datb) = 6 then
                  month := monthof(masras[i].datb) + 3;
                year := yearof(masras[i].datb)
              end;
              if (dayof(masras[i].datb) >= 20) then
                masras[i].datb := encodedate(year, month, 1)
              else
                masras[i].datb := encodedate(year, monthof(masras[i].datb), 1);
            end;
            if ((masras[i].fob in [7, 8]) or ((masras[i].fob = 10) and
              (masras[i].fak = 65))) then
            begin
              periodi(masras[i].datb, perbeg, perend);
              masras[i].datb := perbeg;
            end;
          end;
        end;
      end;
    end;

    kolready := 0;
    for i := 1 to kolinmas do
    begin
      if (monthof(masras[i].datb) = 7) or (monthof(masras[i].datb) = 8)
      { or (i=1) } then
        masras[i].datb := encodedate(yearof(masras[i].datb), 9, 1);
      if (monthof(masras[i].daten) = 7) or (monthof(masras[i].daten) = 8) then
        masras[i].daten := encodedate(yearof(masras[i].daten), 6, 30);
      if ((i < kolinmas) and (masras[i].prizn = 'B') and
        (masras[i].datb < masras[i + 1].datb)) or
        ((i = kolinmas) and (masras[i].prizn = 'B')) then
      begin
        inc(kolready);
        // showmessage(datetostr(masras[i].datb)+'-'+datetostr(masras[i].daten));
        readymas[kolready].datb := masras[i].datb;
        readymas[kolready].daten := masras[i].daten;
        readymas[kolready].fob := masras[i].fob;
        readymas[kolready].fak := masras[i].fak;
        readymas[kolready].spec := masras[i].spec;
        readymas[kolready].kurs := masras[i].kurs;
        readymas[kolready].sobit := masras[i].sobit;
        readymas[kolready].prizn := masras[i].prizn;
        readymas[kolready].smena := masras[i].smena;
        readymas[kolready].nach := masras[i].nach;
      end;
    end;
    {
      if (datamodule1.Table_w1.FieldByName('spotd').AsInteger=8) and
      (datamodule1.Table_w1.FieldByName('kurs').AsInteger=4) and
      (date()>=strtodate('01.02.'+inttostr(god+1))) and
      (date()<=strtodate('31.08.'+inttostr(god+1))) and
      (godof(readymas[kolready].daten)=god) and
      (readymas[kolready].daten>=strtodate('01.02.'+inttostr(god+1))) then
      readymas[kolready].daten:=encodedate(god+1,1,31);
    }
    if (datamodule1.Table_w1.FieldByName('spotd').AsInteger = 8) and
      (datamodule1.Table_w1.FieldByName('kurs').AsInteger = 4) then
    begin
      if (godof(readymas[kolready].daten) = god) then
      begin
        if (datamodule1.Table_w1.FieldByName('spsost').AsInteger = 1) then
        begin
          if ((date() >= strtodate('01.09.' + inttostr(god))) and
            (date() <= strtodate('31.12.' + inttostr(god))) or
            (date() >= strtodate('01.01.' + inttostr(god + 1))) and
            (date() <= strtodate('31.07.' + inttostr(god + 1)))) then
            readymas[kolready].daten := encodedate(god + 1, 1, 31)
          else
            readymas[kolready].daten := encodedate(god + 1, 6, 30);
        end
        else if (datamodule1.Table_w1.FieldByName('spstatus').AsInteger = 4) and
          (date() >= strtodate('01.02.' + inttostr(god + 1))) then
          readymas[kolready].daten := encodedate(god + 1, 1, 31);
      end;
    end
    else if (datamodule1.Table_w1.FieldByName('spstatus').AsInteger = 2) and
      (datamodule1.Table_w1.FieldByName('spsost').AsInteger = 1) then
      readymas[kolready].daten := encodedate(god + 1, 6, 30);

    i := 1;
    while i <= kolready do
    begin
      god := yearof(readymas[i].datb);
      month := monthof(readymas[i].datb);
      tempd := readymas[i].daten;
      if dayof(tempd) >= 20 then
        tempd := encodedate(yearof(tempd), monthof(tempd), daysinmonth(tempd))
      else
      begin
        if monthof(tempd) = 1 then
          tempd := encodedate(yearof(tempd) - 1, 12, 31)
        else
          tempd := encodedate(yearof(tempd), monthof(tempd) - 1,
            daysinmonth(encodedate(yearof(tempd), monthof(tempd) - 1, 1)));
      end;
      if monthof(tempd) in [7, 8] then
        tempd := encodedate(yearof(tempd), 6, 30);
      while (encodedate(god, month, daysinmonth(encodedate(god, month, 1)))
        <= tempd) do
      begin // 2
        readymas[i].daten := encodedate(god, month,
          daysinmonth(encodedate(god, month, 1)));
        if month = 12 then
        begin
          god := god + 1;
          month := 0;
        end;
        if (month = 6) and
          (encodedate(god, month, daysinmonth(encodedate(god, month, 1))) < date)
        then
        begin // 1
          month := 8;
          for j := kolready + 1 downto i + 1 do
            readymas[j] := readymas[j - 1];
          kolready := kolready + 1;
          i := i + 1;
          readymas[i].datb := encodedate(god, 9, 1);
        end; // 1
        month := month + 1;
      end; // 2
      i := i + 1;
    end;

    kolinmas := 0;
    for i := 1 to kolready do
    begin
      // showmessage(datetostr(readymas[i].datb)+'-'+datetostr(readymas[i].daten));
      inc(kolinmas);
      masras[kolinmas] := readymas[i];
    end;

    // ищем стоимость обучения
    if (masras[gi].fak = 66) and (masras[gi].fob = 7) then
    begin
      masras[gi].fak := 65;
      masras[gi].fob := 10;
    end;
    if (masras[gi].fak = 66) and (masras[gi].fob = 6) then
    begin
      masras[gi].fak := 57;
      masras[gi].fob := 10;
    end;
    datamodule1.Table1_3.Open;
    datamodule1.Table_w35.indexfieldnames := 'pin';
    datamodule1.Table_w33.indexfieldnames := 'pin';
    datamodule1.table6_3.Open;
    datamodule1.table6_3.indexname := 'PRIMARY';
    for gi := 1 to kolinmas do
    begin
      masras[gi].summ := 0;

      datamodule1.Table_w35.findkey([masras[gi].spec]);
      datamodule1.Table_w33.findkey([masras[gi].fob]);

      datamodule1.table6_3.Filtered := false;
      datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob) +
        ' and uchgod=' + inttostr(godof(masras[gi].datb)) + ' and sprfak=' +
        inttostr(masras[gi].fak);
      datamodule1.table6_3.Filtered := true;
      // если нет совпадений по год фо фак
      if datamodule1.table6_3.RecordCount = 0 then
      begin
        datamodule1.table6_3.Filtered := false;
        datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob) +
          ' and uchgod=' + inttostr(godof(masras[gi].datb)) + ' and sprspec=' +
          inttostr(masras[gi].spec);
        datamodule1.table6_3.Filtered := true;
        // если нет совпадений по год фо  спец
        if datamodule1.table6_3.RecordCount = 0 then
        begin
          datamodule1.table6_3.Filtered := false;
          datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob) +
            ' and uchgod=' + inttostr(godof(masras[gi].datb)) + ' and kurs=' +
            inttostr(masras[gi].kurs);
          datamodule1.table6_3.Filtered := true;
          // если нет совпадений по год фо курс
          if datamodule1.table6_3.RecordCount = 0 then
          begin
            datamodule1.table6_3.Filtered := false;
            datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob)
              + ' and uchgod=' + inttostr(godof(masras[gi].datb));
            datamodule1.table6_3.Filtered := true;
          end;
        end
        // если есть совпадения по год фо  спец
        else
        begin
          datamodule1.table6_3.Filtered := false;
          datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob) +
            ' and uchgod=' + inttostr(godof(masras[gi].datb)) + ' and sprspec='
            + inttostr(masras[gi].spec) + ' and kurs=' +
            inttostr(masras[gi].kurs);
          datamodule1.table6_3.Filtered := true;
          // если нет совпадений по год фо спец курс
          if datamodule1.table6_3.RecordCount = 0 then
          begin
            datamodule1.table6_3.Filtered := false;
            datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob)
              + ' and uchgod=' + inttostr(godof(masras[gi].datb)) +
              ' and sprspec=' + inttostr(masras[gi].spec);
            datamodule1.table6_3.Filtered := true;
          end;
        end;
        kolmonth := kolmonths(masras[gi].datb, masras[gi].daten, kbyte) + 1;
        masras[gi].summ := (datamodule1.Table6_3summa.AsFloat * 0.1) * kolmonth;
      end
      // если есть совпадения по год фо фак
      else
      begin
        datamodule1.table6_3.Filtered := false;
        datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob) +
          ' and uchgod=' + inttostr(godof(masras[gi].datb)) + ' and sprfak=' +
          inttostr(masras[gi].fak) + ' and sprspec=' +
          inttostr(masras[gi].spec);
        datamodule1.table6_3.Filtered := true;
        // если нет совпадения по год фо фак спец
        if datamodule1.table6_3.RecordCount = 0 then
        begin
          datamodule1.table6_3.Filtered := false;
          datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob) +
            ' and uchgod=' + inttostr(godof(masras[gi].datb)) + ' and sprfak=' +
            inttostr(masras[gi].fak) + ' and kurs=' + inttostr(masras[gi].kurs);
          datamodule1.table6_3.Filtered := true;
          // если нет совпадений по год фо фак курс
          if datamodule1.table6_3.RecordCount = 0 then
          begin
            datamodule1.table6_3.Filtered := false;
            datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob)
              + ' and uchgod=' + inttostr(godof(masras[gi].datb)) +
              ' and sprfak=' + inttostr(masras[gi].fak);
            datamodule1.table6_3.Filtered := true;
          end;
          kolmonth := kolmonths(masras[gi].datb, masras[gi].daten, kbyte) + 1;
          masras[gi].summ := (datamodule1.Table6_3summa.AsFloat * 0.1)
            * kolmonth;
        end
        // если есть совпадения по год фо фак спец
        else
        begin
          datamodule1.table6_3.Filtered := false;
          datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob) +
            ' and uchgod=' + inttostr(godof(masras[gi].datb)) + ' and sprfak=' +
            inttostr(masras[gi].fak) + ' and sprspec=' +
            inttostr(masras[gi].spec) + ' and kurs=' +
            inttostr(masras[gi].kurs);
          datamodule1.table6_3.Filtered := true;
          if datamodule1.table6_3.RecordCount = 0 then
          begin
            datamodule1.table6_3.Filtered := false;
            datamodule1.table6_3.Filter := 'sprotd=' + inttostr(masras[gi].fob)
              + ' and uchgod=' + inttostr(godof(masras[gi].datb)) +
              ' and sprfak=' + inttostr(masras[gi].fak) + ' and sprspec=' +
              inttostr(masras[gi].spec);
            datamodule1.table6_3.Filtered := true;
            kolmonth := kolmonths(masras[gi].datb, masras[gi].daten, kbyte) + 1;
            masras[gi].summ := (datamodule1.Table6_3summa.AsFloat * 0.1)
              * kolmonth;
          end
          else
          begin
            kolmonth := kolmonths(masras[gi].datb, masras[gi].daten, kbyte) + 1;
            masras[gi].summ := (datamodule1.Table6_3summa.AsFloat * 0.1)
              * kolmonth;
          end;
        end;
      end;
      // if datamodule1.Table6_3.RecordCount=0 then messagedlg('На '+inttostr(godof(masras[gi].datb))+' учебный год ( '+datamodule1.Table_w33name.AsString+' форма обучения) не определен план оплаты',mtwarning	,[mbok],0);

      datamodule1.qtmp_platn.SQL.Clear;
      datamodule1.qtmp_platn.SQL.Add('select plat from accdog where ');
      datamodule1.qtmp_platn.SQL.Add('acc=' + inttostr(stud_pin) +
        ' and lastdog=''1''');
      datamodule1.qtmp_platn.ExecSQL;
      datamodule1.qtmp_platn.Open;

      if datamodule1.qtmp_platn.FieldByName('plat').AsInteger = -3 then
      begin
        if (godof(masras[gi].datb) - datamodule1.table_w1godpr.AsInteger) = 0
        then
          masras[gi].summ := masras[gi].summ * 0;
        if (godof(masras[gi].datb) - datamodule1.table_w1godpr.AsInteger) = 1
        then
          masras[gi].summ := masras[gi].summ * 0.25;
        if (godof(masras[gi].datb) - datamodule1.table_w1godpr.AsInteger) = 2
        then
          masras[gi].summ := masras[gi].summ * 0.5;
        if (godof(masras[gi].datb) - datamodule1.table_w1godpr.AsInteger) = 3
        then
          masras[gi].summ := masras[gi].summ * 0.75;
        if (godof(masras[gi].datb) - datamodule1.table_w1godpr.AsInteger) >= 4
        then
          masras[gi].summ := masras[gi].summ;
      end;
      if datamodule1.qtmp_platn.FieldByName('plat').AsInteger = -2 then
        masras[gi].summ := masras[gi].summ * 0;

      if masras[gi].sobit = 25 then // если восстановлен для защиты в ГАК
        masras[gi].summ := datamodule1.Table6_3summa.AsFloat * 0.1;
      datamodule1.table6_3.Filtered := false;
    end;
    /// //////////////////////////////////////////////////////////////////////
    dolg := 0;
    oplat := 0;
    datamodule1.Table3_3.Open;
    if kolinmas > 0 then // вычисление задолженности
    begin // 5
      j := 0;
      uchg := 0;
      forma := 0;
      dolg := 0;
      if datamodule1.Table_w33.indexfieldnames <> 'pin' then
        datamodule1.Table_w33.indexfieldnames := 'pin';
      for i := 1 to kolinmas do
      begin // 3
        if (masras[i].datb < masras[i].daten) and
          ((godof(masras[i].datb) = godof(date())) or
          ((godof(masras[i].daten) = godof(date()) - 1) and
          (masras[i].nach = '*'))) then
        begin // 2
          j := j + 1;
          datamodule1.Table_w33.findkey([masras[i].fob]);
          s := '';
          if (forma <> masras[i].fob) then
          begin
            forma := masras[i].fob;
            s := datamodule1.Table_w33name.AsString +
              '---------------------------------------------------------------------------';
          end;
          if uchg <> godof(masras[i].datb) then
          begin
            uchg := godof(masras[i].datb);
            s := s + '01.09.' + inttostr(godof(masras[i].datb)) + '-' + '30.06.'
              + inttostr(godof(masras[i].datb) + 1);
          end;
          if s <> '' then
          begin // 1
            j := j + 1;
          end; // 1
          dolg := dolg + masras[i].summ;
          if length(inttostr(monthsbetween(masras[i].daten, masras[i].datb) +
            1)) < 2 then
            s := inttostr(monthsbetween(masras[i].daten, masras[i].datb)
              + 1) + ' '
          else
            s := inttostr(monthsbetween(masras[i].daten, masras[i].datb) + 1);
        end; // 2
      end; // 3

      /// /DateSeparator:='-';
      // ShortDateFormat:='yyyy-mm-dd';

      /// ///////////////////
      // Акты коррекции
      datamodule1.qtmp_platn.SQL.Clear;
      datamodule1.qtmp_platn.SQL.Add
        ('select aktnom, aktdate, vid, summa from actcor where acc=' +
        inttostr(stud_pin) + ' ');
      datamodule1.qtmp_platn.SQL.Add('and aktdate>=''' + inttostr(godof(date)) +
        '-08-01'' ');
      datamodule1.qtmp_platn.SQL.Add('order by aktdate');
      datamodule1.qtmp_platn.Close;
      datamodule1.qtmp_platn.Open;
      sumcor := 0;
      if not datamodule1.qtmp_platn.IsEmpty then
      begin
        datamodule1.qtmp_platn.First;
        while not datamodule1.qtmp_platn.Eof do
        begin
          if datamodule1.qtmp_platn.FieldByName('vid').AsString = '+' then
            sumcor := sumcor + datamodule1.qtmp_platn.FieldByName
              ('summa').AsFloat;
          if datamodule1.qtmp_platn.FieldByName('vid').AsString = '-' then
            sumcor := sumcor - datamodule1.qtmp_platn.FieldByName
              ('summa').AsFloat;
          datamodule1.qtmp_platn.Next;
        end;
      end;
      /// ///////////////////

      dolg := dolg + sumcor;
      nachisleno := dolg;

      // прибавление остатка за прошлый год
      datamodule1.qtmp_platn.SQL.Clear;
      datamodule1.qtmp_platn.SQL.Add
        ('select acc,ostatok,god from ostatki where ');
      datamodule1.qtmp_platn.SQL.Add('acc=' + inttostr(stud_pin) + ' and god=' +
        inttostr(godof(date()) - 1));
      datamodule1.qtmp_platn.ExecSQL;
      datamodule1.qtmp_platn.Open;
      dolg := datamodule1.qtmp_platn.FieldByName('ostatok').AsFloat - dolg;
      if not datamodule1.qtmp_platn.IsEmpty then
      begin
        dolg30_06 := datamodule1.qtmp_platn.FieldByName('ostatok').AsFloat;
        year30_06 := datamodule1.qtmp_platn.FieldByName('god').AsInteger;
      end;

      datamodule1.qtmp_platn.SQL.Clear;
      datamodule1.qtmp_platn.SQL.Add
        ('select acc,sprvdoc,ndoc,summa,d_o from platej where ');
      datamodule1.qtmp_platn.SQL.Add('acc=' + inttostr(stud_pin) +
        ' and d_o>=''' + inttostr(godof(date())) + '-08-01''');
      datamodule1.qtmp_platn.ExecSQL;
      datamodule1.qtmp_platn.Open;
      // DateSeparator:='.';
      // ShortDateFormat:='dd.mm.yyyy';
      i := 0;
      oplat := 0;
      datamodule1.qtmp_platn.First; // вычисление оплаченной суммы
      while not datamodule1.qtmp_platn.Eof do
      begin // 2
        oplat := oplat + datamodule1.qtmp_platn.FieldByName('summa').AsFloat;
        i := i + 1;
        datamodule1.qtmp_platn.Next;
      end; // 2

      // label175.Caption:='ОСТАТОК НА 30.06.'+inttostr(year30_06)+' : '+floattostr(dolg30_06);
      // label47.Caption:='ОПЛАТИЛ : '+floattostr(oplat);
      tekost := oplat + dolg;
    end;
    datamodule1.table6_3.Close;

    datamodule1.tcurrentost.Open;
    datamodule1.tcurrentost.Filtered := false;
    datamodule1.tcurrentost.Filter := 'acc=' + inttostr(stud_pin);
    datamodule1.tcurrentost.Filtered := true;

    // DecimalSeparator := '.';
    if datamodule1.tcurrentost.IsEmpty then
    begin
      datamodule1.qtmp_platn.SQL.Clear;
      datamodule1.qtmp_platn.SQL.Add
        ('insert into currentost (acc,summa) values (');
      datamodule1.qtmp_platn.SQL.Add(inttostr(stud_pin) + ',' +
        floattostr(tekost) + ')');
      datamodule1.qtmp_platn.ExecSQL;
    end
    else
    begin
      datamodule1.qtmp_platn.SQL.Clear;
      datamodule1.qtmp_platn.SQL.Add('update currentost set summa=' +
        floattostr(tekost) + ' ');
      datamodule1.qtmp_platn.SQL.Add('where acc=' + inttostr(stud_pin));
      datamodule1.qtmp_platn.ExecSQL;
    end;
    // DecimalSeparator := ',';
    datamodule1.tcurrentost.Filtered := false;
    datamodule1.tcurrentost.Refresh;
    /// /////////
    datamodule1.qtmp.SQL.Clear;
    datamodule1.qtmp.SQL.Add('select spevent from moves ');
    datamodule1.qtmp.SQL.Add('where acc=' + inttostr(stud_pin) + ' ');
    datamodule1.qtmp.SQL.Add('order by mvfakt ');
    datamodule1.qtmp.ExecSQL;
    datamodule1.qtmp.Open;

    // DateSeparator:='-';
    // ShortDateFormat:='yyyy-mm-dd';

    sob_ := 0;
    sumspis := 0;
    sum_pogash := 0;
    if not datamodule1.qtmp.IsEmpty then
    begin
      datamodule1.qtmp.Last;
      sob_ := datamodule1.qtmp.FieldByName('spevent').AsInteger;
      if sob_ in [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 19, 25, 27, 28, 29, 30,
        31, 32, 34, 35, 36, 37, 39, 40, 42] then
      begin
        datamodule1.qtmp_platn.SQL.Clear;
        datamodule1.qtmp_platn.SQL.Add('update accdog set rastorg=1 ');
        datamodule1.qtmp_platn.SQL.Add('where acc=' + inttostr(stud_pin) +
          ' and datedog<''2010-04-01''');
        datamodule1.qtmp_platn.ExecSQL;
        datamodule1.Table1_3.Refresh;
      end;
      // если воостанавливается , то проверка на приказы на списание задолженнности
      if sob_ in [10, 11, 12, 13, 25] then
      begin
        datamodule1.qtmp_platn.Close;
        datamodule1.qtmp_platn.SQL.Clear;
        datamodule1.qtmp_platn.SQL.Add('select pin,vid,summa from prik_spis ');
        datamodule1.qtmp_platn.SQL.Add('where acc=' + inttostr(stud_pin) +
          ' and vid=1 and pindoc=-1');
        datamodule1.qtmp_platn.Open;
        // если есть приказы на списание долга
        if not datamodule1.qtmp_platn.IsEmpty then
        begin
          prik_spis_pin := datamodule1.qtmp_platn.FieldByName('pin').AsInteger;
          sumspis := datamodule1.qtmp_platn.FieldByName('summa').AsFloat;
          // проверка был ли долг частично погашен
          datamodule1.qtmp_platn.Close;
          datamodule1.qtmp_platn.SQL.Clear;
          datamodule1.qtmp_platn.SQL.Add
            ('select sum(platej.summa) as summa from platej,zabalans ');
          datamodule1.qtmp_platn.SQL.Add('where zabalans.prik=' +
            inttostr(prik_spis_pin) + ' and ');
          datamodule1.qtmp_platn.SQL.Add
            ('event=2 and zabalans.doc=platej.pin ');
          datamodule1.qtmp_platn.Open;
          sum_pogash := 0;
          if not datamodule1.qtmp_platn.IsEmpty then
            sum_pogash := datamodule1.qtmp_platn.FieldByName('summa').AsFloat;
          // корректировка долга с учетом погашенной суммы
          sumspis := sumspis - sum_pogash;

          // запись в zabalans
          // DecimalSeparator:='.';
          datamodule1.qtmp_platn.Close;
          datamodule1.qtmp_platn.SQL.Clear;
          datamodule1.qtmp_platn.SQL.Add
            ('insert into zabalans (prik,event,doc,summa,dat) values ');
          datamodule1.qtmp_platn.SQL.Add('(' + inttostr(prik_spis_pin) +
            ',1,-1,' + floattostr(sumspis) + ',''' + datetostr(date()) + ''')');
          datamodule1.qtmp_platn.ExecSQL;
          // DecimalSeparator:=',';

          // получение внесенной записи в zabalans
          datamodule1.qtmp_platn.Close;
          datamodule1.qtmp_platn.SQL.Clear;
          datamodule1.qtmp_platn.SQL.Add('select pin from zabalans ');
          datamodule1.qtmp_platn.SQL.Add('where prik=' + inttostr(prik_spis_pin)
            + ' order by pin');
          datamodule1.qtmp_platn.Open;
          zabalans_pin := 0;
          if not datamodule1.qtmp_platn.IsEmpty then
          begin
            datamodule1.qtmp_platn.Last;
            zabalans_pin := datamodule1.qtmp_platn.FieldByName('pin').AsInteger;
            // обновление prik_spis
            datamodule1.qtmp_platn.Close;
            datamodule1.qtmp_platn.SQL.Clear;
            datamodule1.qtmp_platn.SQL.Add('update prik_spis set pindoc=' +
              inttostr(zabalans_pin) + ' ');
            datamodule1.qtmp_platn.SQL.Add
              ('where pin=' + inttostr(prik_spis_pin));
            datamodule1.qtmp_platn.ExecSQL;
          end;
        end;
      end;
    end;

    // DateSeparator:='.';
    // ShortDateFormat:='dd.mm.yyyy';
    datamodule1.Table1_3.Close;
  END;

  datamodule1.qtmp.SQL.Clear;
  datamodule1.qtmp.SQL.Add('select pro from acc ');
  datamodule1.qtmp.SQL.Add('where pin=' + inttostr(stud_pin));
  datamodule1.qtmp.ExecSQL;
  datamodule1.qtmp.Open;

  if datamodule1.qtmp.FieldByName('pro').AsString = '10' then
  begin
    datamodule1.qtmp.SQL.Clear;
    datamodule1.qtmp.SQL.Add('update acc set pro=''00'' ');
    datamodule1.qtmp.SQL.Add('where pin=' + inttostr(stud_pin));
    datamodule1.qtmp.ExecSQL;
  end
  else if datamodule1.qtmp.FieldByName('pro').AsString = '11' then
  begin
    datamodule1.qtmp.SQL.Clear;
    datamodule1.qtmp.SQL.Add('update acc set pro=''01'' ');
    datamodule1.qtmp.SQL.Add('where pin=' + inttostr(stud_pin));
    datamodule1.qtmp.ExecSQL;
  end;
  // DateSeparator:='.';
  // ShortDateFormat:='dd.mm.yyyy';
end;
// ************************ КОНЕЦ nachislenie **********************************
/// ////////////////////////////////////////////////////////////////////////////

/// ////////////////////////////////////////////////////////////////////////////
// Перекачка из abitu при зачислении (договоры и плательщики)
// stud_pin1 - pin студента (work_ok.acc.pin)
// abitu_pin1 - pin абитуриента (abitu.baza_h.pin)
// abitu_zach1 - pin специальности (из abitu.baza_h.zach, который равен abitu.snspec.pin) на котороую зачислен
// spotd1 - pin формы обучения на которую зачислен work_ok.acc.spotd
// spfak1 - pin факультета на который зачислен work_ok.acc.spfak
// spspec1 - pin специальности на которую зачислен work_ok.acc.spspec
/// ////////////////////////////////////////////////////////////////////////////
procedure abitu_transfer(stud_pin1, abitu_pin1, abitu_zach1, spotd1, spfak1,
  spspec1: integer);
var
  dog_pin, plat_pin: integer;
begin
  // DateSeparator:='-';
  // ShortDateFormat:='yyyy-mm-dd';
  // берем pin плательщика из abitu.accdog
  datamodule1.qtmp_abitu.Close;
  datamodule1.qtmp_abitu.SQL.Clear;
  datamodule1.qtmp_abitu.SQL.Add('select pin, plat from accdog ');
  datamodule1.qtmp_abitu.SQL.Add('where pin in ');
  datamodule1.qtmp_abitu.SQL.Add('(select lastdog from acc where abit=' +
    inttostr(abitu_pin1) + ')');
  datamodule1.qtmp_abitu.Open;
  if not datamodule1.qtmp_abitu.IsEmpty then
  begin
    plat_pin := datamodule1.qtmp_abitu.FieldByName('plat').AsInteger;
    dog_pin := datamodule1.qtmp_abitu.FieldByName('pin').AsInteger;
    // есть плательщик
    if plat_pin > 0 then
    begin
      // выбираем инфу о плательщике
      datamodule1.qtmp_abitu.Close;
      datamodule1.qtmp_abitu.SQL.Clear;
      datamodule1.qtmp_abitu.SQL.Add('select ');
      datamodule1.qtmp_abitu.SQL.Add('name,');
      datamodule1.qtmp_abitu.SQL.Add('adress,');
      datamodule1.qtmp_abitu.SQL.Add('phone,');
      datamodule1.qtmp_abitu.SQL.Add('okonh,');
      datamodule1.qtmp_abitu.SQL.Add('okpo,');
      datamodule1.qtmp_abitu.SQL.Add('inn,');
      datamodule1.qtmp_abitu.SQL.Add('rsc,');
      datamodule1.qtmp_abitu.SQL.Add('ofk,');
      datamodule1.qtmp_abitu.SQL.Add('ls,');
      datamodule1.qtmp_abitu.SQL.Add('kpp,');
      datamodule1.qtmp_abitu.SQL.Add('bik,');
      datamodule1.qtmp_abitu.SQL.Add('bnk,');
      datamodule1.qtmp_abitu.SQL.Add('tip,');
      datamodule1.qtmp_abitu.SQL.Add('ogrn,');
      datamodule1.qtmp_abitu.SQL.Add('pas_ser,');
      datamodule1.qtmp_abitu.SQL.Add('pas_num,');
      datamodule1.qtmp_abitu.SQL.Add('paswho,');
      datamodule1.qtmp_abitu.SQL.Add('pasdate from accplat ');
      datamodule1.qtmp_abitu.SQL.Add('where pin=' + inttostr(plat_pin));
      datamodule1.qtmp_abitu.Open;
      if not datamodule1.qtmp_abitu.IsEmpty then
      begin
        // проверяем на существование такого в platn.accplat
        datamodule1.qtmp_platn.Close;
        datamodule1.qtmp_platn.SQL.Clear;
        datamodule1.qtmp_platn.SQL.Add('select pin from accplat ');
        datamodule1.qtmp_platn.SQL.Add('where name=:a and adress=:b ');
        if datamodule1.qtmp_abitu.FieldByName('tip').AsInteger = 1 then
        begin
          datamodule1.qtmp_platn.SQL.Add('and pas_ser=:c ');
          datamodule1.qtmp_platn.SQL.Add('and pas_num=:d ');
          datamodule1.qtmp_platn.SQL.Add('and paswho=:e ');
          datamodule1.qtmp_platn.SQL.Add('and pasdate=:f ');
          datamodule1.qtmp_platn.Params[0].AsString :=
            datamodule1.qtmp_abitu.FieldByName('name').AsString;
          datamodule1.qtmp_platn.Params[1].AsString :=
            datamodule1.qtmp_abitu.FieldByName('adress').AsString;
          datamodule1.qtmp_platn.Params[2].AsString :=
            datamodule1.qtmp_abitu.FieldByName('pas_ser').AsString;
          datamodule1.qtmp_platn.Params[3].AsString :=
            datamodule1.qtmp_abitu.FieldByName('pas_num').AsString;
          datamodule1.qtmp_platn.Params[4].AsString :=
            datamodule1.qtmp_abitu.FieldByName('paswho').AsString;
          datamodule1.qtmp_platn.Params[5].AsString :=
            datamodule1.qtmp_abitu.FieldByName('pasdate').AsString;
        end
        else
        begin
          datamodule1.qtmp_platn.SQL.Add('and okonh=:c ');
          datamodule1.qtmp_platn.SQL.Add('and okpo=:d ');
          datamodule1.qtmp_platn.SQL.Add('and inn=:e ');
          datamodule1.qtmp_platn.SQL.Add('and rsc=:f ');
          datamodule1.qtmp_platn.SQL.Add('and ofk=:g ');
          datamodule1.qtmp_platn.SQL.Add('and ls=:h ');
          datamodule1.qtmp_platn.SQL.Add('and kpp=:j ');
          datamodule1.qtmp_platn.SQL.Add('and bik=:k ');
          datamodule1.qtmp_platn.SQL.Add('and bnk=:l ');
          datamodule1.qtmp_platn.SQL.Add('and ogrn=:n ');
          datamodule1.qtmp_platn.Params[0].AsString :=
            datamodule1.qtmp_abitu.FieldByName('name').AsString;
          datamodule1.qtmp_platn.Params[1].AsString :=
            datamodule1.qtmp_abitu.FieldByName('adress').AsString;
          datamodule1.qtmp_platn.Params[2].AsString :=
            datamodule1.qtmp_abitu.FieldByName('okonh').AsString;
          datamodule1.qtmp_platn.Params[3].AsString :=
            datamodule1.qtmp_abitu.FieldByName('okpo').AsString;
          datamodule1.qtmp_platn.Params[4].AsString :=
            datamodule1.qtmp_abitu.FieldByName('inn').AsString;
          datamodule1.qtmp_platn.Params[5].AsString :=
            datamodule1.qtmp_abitu.FieldByName('rsc').AsString;
          datamodule1.qtmp_platn.Params[6].AsString :=
            datamodule1.qtmp_abitu.FieldByName('ofk').AsString;
          datamodule1.qtmp_platn.Params[7].AsString :=
            datamodule1.qtmp_abitu.FieldByName('ls').AsString;
          datamodule1.qtmp_platn.Params[8].AsString :=
            datamodule1.qtmp_abitu.FieldByName('kpp').AsString;
          datamodule1.qtmp_platn.Params[9].AsString :=
            datamodule1.qtmp_abitu.FieldByName('bik').AsString;
          datamodule1.qtmp_platn.Params[10].AsString :=
            datamodule1.qtmp_abitu.FieldByName('bnk').AsString;
          datamodule1.qtmp_platn.Params[11].AsString :=
            datamodule1.qtmp_abitu.FieldByName('ogrn').AsString;
        end;
        datamodule1.qtmp_platn.Open;
        // если в platn.accplat такого нет, то вносим нового плательщика
        if datamodule1.qtmp_platn.IsEmpty then
        begin
          datamodule1.qtmp_platn.Close;
          datamodule1.qtmp_platn.SQL.Clear;
          datamodule1.qtmp_platn.SQL.Add('insert into accplat ');
          datamodule1.qtmp_platn.SQL.Add('(name,');
          datamodule1.qtmp_platn.SQL.Add('adress,');
          datamodule1.qtmp_platn.SQL.Add('phone,');
          datamodule1.qtmp_platn.SQL.Add('okonh,');
          datamodule1.qtmp_platn.SQL.Add('okpo,');
          datamodule1.qtmp_platn.SQL.Add('inn,');
          datamodule1.qtmp_platn.SQL.Add('rsc,');
          datamodule1.qtmp_platn.SQL.Add('ofk,');
          datamodule1.qtmp_platn.SQL.Add('ls,');
          datamodule1.qtmp_platn.SQL.Add('kpp,');
          datamodule1.qtmp_platn.SQL.Add('bik,');
          datamodule1.qtmp_platn.SQL.Add('bnk,');
          datamodule1.qtmp_platn.SQL.Add('tip,');
          datamodule1.qtmp_platn.SQL.Add('ogrn,');
          datamodule1.qtmp_platn.SQL.Add('pas_ser,');
          datamodule1.qtmp_platn.SQL.Add('pas_num,');
          datamodule1.qtmp_platn.SQL.Add('paswho,');
          datamodule1.qtmp_platn.SQL.Add('pasdate) values ');
          datamodule1.qtmp_platn.SQL.Add
            ('(:a,:b,:c,:d,:e,:f,:g,:h,:j,:k,:l,:m,:n,:o,:p,:r,:s,:t) ');
          datamodule1.qtmp_platn.Params[0].AsString :=
            datamodule1.qtmp_abitu.FieldByName('name').AsString;
          datamodule1.qtmp_platn.Params[1].AsString :=
            datamodule1.qtmp_abitu.FieldByName('adress').AsString;
          datamodule1.qtmp_platn.Params[2].AsString :=
            datamodule1.qtmp_abitu.FieldByName('phone').AsString;
          datamodule1.qtmp_platn.Params[3].AsString :=
            datamodule1.qtmp_abitu.FieldByName('okonh').AsString;
          datamodule1.qtmp_platn.Params[4].AsString :=
            datamodule1.qtmp_abitu.FieldByName('okpo').AsString;
          datamodule1.qtmp_platn.Params[5].AsString :=
            datamodule1.qtmp_abitu.FieldByName('inn').AsString;
          datamodule1.qtmp_platn.Params[6].AsString :=
            datamodule1.qtmp_abitu.FieldByName('rsc').AsString;
          datamodule1.qtmp_platn.Params[7].AsString :=
            datamodule1.qtmp_abitu.FieldByName('ofk').AsString;
          datamodule1.qtmp_platn.Params[8].AsString :=
            datamodule1.qtmp_abitu.FieldByName('ls').AsString;
          datamodule1.qtmp_platn.Params[9].AsString :=
            datamodule1.qtmp_abitu.FieldByName('kpp').AsString;
          datamodule1.qtmp_platn.Params[10].AsString :=
            datamodule1.qtmp_abitu.FieldByName('bik').AsString;
          datamodule1.qtmp_platn.Params[11].AsString :=
            datamodule1.qtmp_abitu.FieldByName('bnk').AsString;
          datamodule1.qtmp_platn.Params[12].AsString :=
            datamodule1.qtmp_abitu.FieldByName('tip').AsString;
          datamodule1.qtmp_platn.Params[13].AsString :=
            datamodule1.qtmp_abitu.FieldByName('ogrn').AsString;
          datamodule1.qtmp_platn.Params[14].AsString :=
            datamodule1.qtmp_abitu.FieldByName('pas_ser').AsString;
          datamodule1.qtmp_platn.Params[15].AsString :=
            datamodule1.qtmp_abitu.FieldByName('pas_num').AsString;
          datamodule1.qtmp_platn.Params[16].AsString :=
            datamodule1.qtmp_abitu.FieldByName('paswho').AsString;
          datamodule1.qtmp_platn.Params[17].AsString :=
            datamodule1.qtmp_abitu.FieldByName('pasdate').AsString;
          datamodule1.qtmp_platn.ExecSQL;

          // ищем pin плательщика
          datamodule1.qtmp_platn.SQL.Clear;
          datamodule1.qtmp_platn.SQL.Add('select max(pin) as m from accplat ');
          datamodule1.qtmp_platn.Open;
          plat_pin := datamodule1.qtmp_platn.FieldByName('m').AsInteger;
          datamodule1.qtmp_platn.Close;
        end;
      end;
    end
    // если платит сам
    else if plat_pin = 0 then
      plat_pin := datamodule1.qtmp_abitu.FieldByName('plat').AsInteger - 1
      // если платит институт
    else if plat_pin = -3 then
      plat_pin := datamodule1.qtmp_abitu.FieldByName('plat').AsInteger;

    // перекидка договора
    datamodule1.qtmp_abitu.Close;
    datamodule1.qtmp_abitu.SQL.Clear;
    datamodule1.qtmp_abitu.SQL.Add('select ');
    datamodule1.qtmp_abitu.SQL.Add('accdog.nomdog, ');
    datamodule1.qtmp_abitu.SQL.Add('accdog.date,');
    datamodule1.qtmp_abitu.SQL.Add('accdog.summ,');
    datamodule1.qtmp_abitu.SQL.Add('accdog.begdog,');
    datamodule1.qtmp_abitu.SQL.Add('accdog.enddog,');
    datamodule1.qtmp_abitu.SQL.Add('accdog.period, ');
    datamodule1.qtmp_abitu.SQL.Add('snspec.srok ');
    datamodule1.qtmp_abitu.SQL.Add('from accdog,snspec ');
    datamodule1.qtmp_abitu.SQL.Add('where accdog.pin=' +
      inttostr(dog_pin) + ' ');
    datamodule1.qtmp_abitu.SQL.Add('and snspec.pin=' + inttostr(abitu_zach1));
    datamodule1.qtmp_abitu.Open;
    if not datamodule1.qtmp_abitu.IsEmpty then
    begin
      datamodule1.qtmp_platn.SQL.Clear;
      datamodule1.qtmp_platn.SQL.Add('insert into accdog ');
      datamodule1.qtmp_platn.SQL.Add('(plat,');
      datamodule1.qtmp_platn.SQL.Add('nomdog,');
      datamodule1.qtmp_platn.SQL.Add('datedog,');
      datamodule1.qtmp_platn.SQL.Add('summ,');
      datamodule1.qtmp_platn.SQL.Add('begdog,');
      datamodule1.qtmp_platn.SQL.Add('enddog,');
      datamodule1.qtmp_platn.SQL.Add('period,');
      datamodule1.qtmp_platn.SQL.Add('acc,');
      datamodule1.qtmp_platn.SQL.Add('lastdog,');
      datamodule1.qtmp_platn.SQL.Add('spotd,');
      datamodule1.qtmp_platn.SQL.Add('spfak,');
      datamodule1.qtmp_platn.SQL.Add('spspec,');
      datamodule1.qtmp_platn.SQL.Add('kurs,');
      datamodule1.qtmp_platn.SQL.Add('srokd,');
      datamodule1.qtmp_platn.SQL.Add('rastorg) values ');
      datamodule1.qtmp_platn.SQL.Add('(:a,:b,');
      datamodule1.qtmp_platn.SQL.Add('''' + datamodule1.qtmp_abitu.FieldByName
        ('date').AsString + ''',');
      datamodule1.qtmp_platn.SQL.Add(':c,');
      datamodule1.qtmp_platn.SQL.Add('''' + datamodule1.qtmp_abitu.FieldByName
        ('begdog').AsString + ''',');
      datamodule1.qtmp_platn.SQL.Add('''' + datamodule1.qtmp_abitu.FieldByName
        ('enddog').AsString + ''',');
      datamodule1.qtmp_platn.SQL.Add(':d,:e,:f,:g,:h,:j,:k,');
      if datamodule1.qtmp_abitu.FieldByName('srok').AsFloat = 2 then
        datamodule1.qtmp_platn.SQL.Add('''2013-07-01'',')
      else if datamodule1.qtmp_abitu.FieldByName('srok').AsFloat = 3.5 then
        datamodule1.qtmp_platn.SQL.Add('''2015-03-01'',')
      else if datamodule1.qtmp_abitu.FieldByName('srok').AsFloat = 4 then
        datamodule1.qtmp_platn.SQL.Add('''2015-07-01'',')
      else if datamodule1.qtmp_abitu.FieldByName('srok').AsFloat = 5 then
        datamodule1.qtmp_platn.SQL.Add('''2016-07-01'',')
      else if datamodule1.qtmp_abitu.FieldByName('srok').AsFloat = 6 then
        datamodule1.qtmp_platn.SQL.Add('''2017-07-01'',')
      else
        datamodule1.qtmp_platn.SQL.Add('''2015-03-01'',');
      datamodule1.qtmp_platn.SQL.Add(':l) ');

      datamodule1.qtmp_platn.Params[0].AsInteger := plat_pin;
      datamodule1.qtmp_platn.Params[1].AsString :=
        datamodule1.qtmp_abitu.FieldByName('nomdog').AsString;

      datamodule1.qtmp_platn.Params[2].AsFloat :=
        datamodule1.qtmp_abitu.FieldByName('summ').AsFloat;

      datamodule1.qtmp_platn.Params[3].AsInteger :=
        datamodule1.qtmp_abitu.FieldByName('period').AsInteger;
      datamodule1.qtmp_platn.Params[4].AsInteger := stud_pin1;
      datamodule1.qtmp_platn.Params[5].AsString := '1';
      datamodule1.qtmp_platn.Params[6].AsInteger := spotd1;
      datamodule1.qtmp_platn.Params[7].AsInteger := spfak1;
      datamodule1.qtmp_platn.Params[8].AsInteger := spspec1;
      datamodule1.qtmp_platn.Params[9].AsInteger := 1;
      datamodule1.qtmp_platn.Params[10].AsInteger := 0;
      datamodule1.qtmp_platn.ExecSQL;
    end;
  end;
  // DateSeparator:='.';
  // ShortDateFormat:='dd.mm.yyyy';
end;
/// ////////////////////////////////////////////////////////////////////////////

end.
