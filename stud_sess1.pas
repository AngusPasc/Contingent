unit stud_sess1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, OleServer, WordXP, ComObj;

type
  Tstud_sessia = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label7: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Edit3: TEdit;
    SpinEdit2: TSpinEdit;
    BitBtn2: TBitBtn;
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ControlBar1: TControlBar;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    SpinEdit1: TSpinEdit;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn10: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBLookupComboBox5CloseUp(Sender: TObject);
    procedure SpinEdit1Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure save_sessia;
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);

  private
    { Private declarations }
  public
    coddisc, codprep: array [1 .. 20] of integer;
    kontr_t: array [1 .. 20, 1 .. 4] of integer;

  end;

var
  stud_sessia: Tstud_sessia;
  coduchp, fak, fo, sp, w_gr, kurs, sem, godpr, gr, goduch, spses,
    saves: integer;
  discpkr: array [1 .. 20] of string;
  grup, ksp: string;
  fves: string[5];

implementation

uses main1, prakt_progress1, stud_sess4;
{$R *.dfm}

procedure Tstud_sessia.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w10.Open;
  DataModule1.Table_w10.IndexName := 'grupsem';
  DataModule1.Table_w11.Open;
  DataModule1.Table_w11.IndexName := 'fospec';
  DataModule1.Table_w33.Open;
  DataModule1.Table_w34.Open;
  DataModule1.Table_w35.Open;
  DataModule1.Table_w36.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.IndexName := 'PRIMARY';
  DataModule1.Table7.Open;
  DataModule1.Table14.Open;
  DataModule1.Table15.Open;
  DataModule1.Table22.Open;
  DataModule1.Table23.Open;
  DataModule1.Table23.IndexName := 'disyearsem';
  if spfak <> 0 then
  begin
    Edit1.Text := fak_name;
    DBLookupComboBox1.Hide;
    case spfak of
      57:
        begin // ГЭФ
          Edit2.Hide;
          fo := 0;
          DataModule1.Table_w33.filter := '(pin=6 or pin=10) and priz=' + '''' +
            '1' + '''';
          DataModule1.Table_w33.filtered := True;
        end;
      65:
        begin // ФЗФО
          Edit2.Hide;
          fo := 0;
          DataModule1.Table_w33.filter := 'pin>6 and priz=' + '''' + '1' + '''';
          DataModule1.Table_w33.filtered := True;
        end
    else // ТФ
      begin
        DBLookupComboBox2.Hide;
        fo := 6;
        Edit2.Text := 'очная';
        DataModule1.Table_w36.filter := 'spotd=' + inttostr(fo) + ' and spfak='
          + inttostr(spfak) + ' and priz=' + '''' + '1' + '''';
        DataModule1.Table_w36.filtered := True;
      end;
    end;
  end
  else
  begin
    Edit1.Hide;
    DataModule1.Table_w34.filter := 'priz=' + '''' + '1' + '''';
    DataModule1.Table_w34.filtered := True;
  end;
  goduch := SpinEdit2.Value;
  sem := 1;
  kurs := (sem div 2) + (sem mod 2);
  SpeedButton2.Hide;
end;

procedure Tstud_sessia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if saves = 0 then // не нажимали кнопку сохранить
  begin
    if messagedlg('Сохранить изменения в списке дисциплин?', mtCustom,
      [mbYes, mbNo], 0) = mrYes then
      save_sessia;
  end;
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.Table_w10.Close;
  DataModule1.Table_w11.Close;
  DataModule1.Table_w33.Close;
  DataModule1.Table_w34.Close;
  DataModule1.Table_w35.Close;
  DataModule1.Table_w36.Close;
  DataModule1.Table_w37.Close;
  DataModule1.Table7.Close;
  DataModule1.Table14.Close;
  DataModule1.Table15.Close;
  DataModule1.Table22.Close;
  DataModule1.Table23.Close;
  DataModule1.Table_w10.filtered := False;
  DataModule1.Table_w33.filtered := False;
  DataModule1.Table_w34.filtered := False;
  DataModule1.Table_w36.filtered := False;
  DataModule1.Table_w37.filtered := False;
  main.Enabled := True;
end;

procedure Tstud_sessia.BitBtn2Click(Sender: TObject);

begin
  Close;
end;

procedure Tstud_sessia.DBLookupComboBox1Click(Sender: TObject);
begin
  fak := DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').asinteger;
  spfak := fak;
  if (spfak <> 65) // не ФЗФО и не ФССО
  then
  begin
    DBLookupComboBox2.Hide;
    Edit2.Text := 'очная';
    DataModule1.Table_w36.filter := 'spotd=' + inttostr(fo) + ' and spfak=' +
      inttostr(spfak) + ' and priz=' + '''' + '1' + '''';
    DataModule1.Table_w36.filtered := True;
  end
  else
  begin
    Edit2.Hide;
    DataModule1.Table_w33.filter := 'pin>6 and priz=' + '''' + '1' + '''';
    DataModule1.Table_w33.filtered := True;
  end;
end;

procedure Tstud_sessia.DBLookupComboBox2Click(Sender: TObject);
begin
  fo := DBLookupComboBox2.Listsource.dataset.fieldbyname('pin').asinteger;
  DataModule1.Table_w36.filter := 'spotd=' + inttostr(fo) + ' and spfak=' +
    inttostr(spfak) + ' and priz=' + '''' + '1' + '''';
  DataModule1.Table_w36.filtered := True;
  if sp <> 0 then
  begin
    DataModule1.Table_w37.filter := 'spotd=' + inttostr(fo) + ' and spfak=' +
      inttostr(spfak) + ' and spspec=' + inttostr(sp) + ' and priz=' + '''' +
      '1' + '''';
    DataModule1.Table_w37.filtered := True;
  end
  else
  begin
    showmessage('Выберите специальность!');
    DBLookupComboBox3.SetFocus;
  end;
end;

procedure Tstud_sessia.DBLookupComboBox3Click(Sender: TObject);
begin
  if (fo = 0) and ((spfak = 65) or (spfak = 66)) then
  begin
    showmessage('Выберите форму обучения');
    DBLookupComboBox2.SetFocus;
  end
  else
  begin
    sp := DBLookupComboBox3.Listsource.dataset.fieldbyname('spspec').asinteger;
    ksp := DBLookupComboBox3.Listsource.dataset.fieldbyname('spec').asstring;
    DataModule1.Table_w37.filter := 'spotd=' + inttostr(fo) + ' and spfak=' +
      inttostr(spfak) + ' and spspec=' + inttostr(sp) + ' and priz=' + '''' +
      '1' + '''';
    DataModule1.Table_w37.filtered := True;
    BitBtn1.Enabled := True;
    DataModule1.Table_w11.filtered := False;
    DataModule1.Table_w11.filter := 'spotd=' + inttostr(fo) + ' and spspec=' +
      inttostr(sp) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
      inttostr(kurs);
    DataModule1.Table_w11.filtered := True;
  end;
end;

procedure Tstud_sessia.DBLookupComboBox4Click(Sender: TObject);
begin
  { DataModule1.Table_w37.filter:='spotd='+inttostr(fo)+' and spfak='+inttostr(spfak)+' and spspec='+inttostr(sp)+' and priz='+''''+'1'+'''';
    DataModule1.Table_w37.filtered:=True;
    w_gr:= DBLookupComboBox4.Listsource.dataset.fieldbyname('grup').asinteger;
    grup := DBLookupComboBox4.Listsource.dataset.fieldbyname('name').asstring;
    gr := DBLookupComboBox4.Listsource.dataset.fieldbyname('pin').asinteger;
    ngr:= (DBLookupComboBox4.Listsource.dataset.fieldbyname('ngrup').asinteger) div 10;
    BitBtn1.Enabled:=True; }
end;

procedure Tstud_sessia.SpinEdit2Change(Sender: TObject);
begin
  sem := SpinEdit2.Value;
  kurs := (sem div 2) + (sem mod 2);
  Edit3.Text := inttostr(kurs);
  BitBtn1.Enabled := True;
  goduch := SpinEdit1.Value;
  DataModule1.Table_w11.filtered := False;
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(fo) + ' and spspec=' +
    inttostr(sp) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
end;

procedure Tstud_sessia.BitBtn1Click(Sender: TObject);
var
  i, j, k, l, l1, j1, o: integer;
  kontr: array [1 .. 4] of byte; // контрольные точки экзамен,зачет,курсовая
  ch: array [1 .. 3, 1 .. 12] of integer;
  // часы по семестрам 1 строка-лекции, 2 строка лабы, 3 строка практика
  sam, bg, sum, ksem, p, nom, ppos, ppos1, priznak: integer;
  // часы самост.работу
  kontr_name, nam, s, fio, all, naimk: string;
  sr: real;
begin
  // showmessage(datamodule1.table23.filter);
  // чистка
  // showmessage('w_gr='+inttostr(w_gr)+'  '+'gr='+inttostr(gr));
  DataModule1.Table23.filter := 'codgr=' + inttostr(w_gr);
  DataModule1.Table23.filtered := True;;
  for i := 1 to 20 do
  begin
    codprep[i] := 0;
    coddisc[i] := 0;
    for j := 1 to 4 do
      kontr_t[i, j] := 0;
  end;
  if stud_sessia.StringGrid1.RowCount <> 0 then
    stud_sessia.StringGrid1.RowCount := 2;
  stud_sessia.StringGrid1.Cells[0, 0] := '№';
  stud_sessia.StringGrid1.Cells[1, 0] := '     Дисциплина';
  stud_sessia.StringGrid1.Cells[2, 0] := ' Контроль';
  stud_sessia.StringGrid1.Cells[3, 0] := '  Преподаватель';
  stud_sessia.StringGrid1.Cells[4, 0] := ' Вес';
  stud_sessia.StringGrid1.Cells[5, 0] := 'часы';
  DataModule1.Table7.IndexName := 'PRIMARY';
  if not DataModule1.Table7.FindKey([w_gr]) then
  begin
    showmessage('Нет данных об учебном плане для группы!');
    exit;
  end;
  coduchp := DataModule1.Table7.fieldbyname('coduchp').asinteger;
  if (yearof(date) mod 10) >= ngr then
    godpr := (yearof(date) div 10) * 10 + ngr
  else
    godpr := ((yearof(date) div 10) - 1) * 10 + ngr;
  // if sem mod 2 =0 then godpr:=yearof(date)-kurs else godpr:=yearof(date)-kurs+1;
  // DataModule1.table_w10.filter:='spgrup='+inttostr(w_gr)+' and sem='+inttostr(sem)+' and coduchp='+inttostr(coduchp)+' and godpr='+inttostr(godpr);
  DataModule1.Table_w10.filter := 'spgrup=' + inttostr(gr) + ' and sem=' +
    inttostr(sem) + ' and coduchp=' + inttostr(coduchp) + ' and godpr=' +
    inttostr(godpr) + ' and spsessia=' + inttostr(spses);;
  DataModule1.Table_w10.filtered := True;
  i := 1;
  o := 0;
  if DataModule1.Table_w10.recordcount <> 0 then
  begin
    DataModule1.Table_w10.first;
    o := 1;
    while not DataModule1.Table_w10.Eof do
    begin
      stud_sessia.StringGrid1.Cells[0, i] := inttostr(i);
      stud_sessia.StringGrid1.Cells[1, i] := DataModule1.Table_w10.fieldbyname
        ('discip').asstring;
      coddisc[i] := DataModule1.Table_w10.fieldbyname('spdisc').asinteger;
      kontr_name := '';
      case DataModule1.Table_w10.fieldbyname('ekz').asinteger of
        1:
          begin
            kontr_name := 'экз';
            kontr_t[i, 1] := 1;
          end; // экзамен
        2:
          begin
            kontr_name := 'экз(п)';
            kontr_t[i, 1] := 2;
          end; // перезачет
        3:
          begin
            kontr_name := 'итог.оц';
            kontr_t[i, 1] := 3;
          end
      else
        begin
          kontr_name := '';
          kontr_t[i, 1] := 0;
        end;
      end;

      kontr_t[i, 2] := 0;
      if kontr_name <> '' then
      begin // зачет
        if DataModule1.Table_w10.fieldbyname('zach').asstring = '1' then
        begin
          kontr_name := kontr_name + '/зач';
          kontr_t[i, 2] := 1;
        end
        else if DataModule1.Table_w10.fieldbyname('zach').asstring = '2' then
        // перезачет
        begin
          kontr_name := kontr_name + '/зач(п)';
          kontr_t[i, 2] := 2;
        end;
      end
      else if DataModule1.Table_w10.fieldbyname('zach').asstring = '1' then
      begin
        kontr_name := kontr_name + 'зач';
        kontr_t[i, 2] := 1;
      end
      else if DataModule1.Table_w10.fieldbyname('zach').asstring = '2' then
      begin
        kontr_name := kontr_name + 'зач(п)';
        kontr_t[i, 2] := 2;
      end;

      kontr_t[i, 3] := 0;
      if kontr_name <> '' then
      begin // курс.работа
        if DataModule1.Table_w10.fieldbyname('kr').asstring = '1' then
        begin
          kontr_name := kontr_name + '/к.р';
          kontr_t[i, 3] := 1;
        end
        else if DataModule1.Table_w10.fieldbyname('kr').asstring = '2' then
        // перезачет
        begin
          kontr_name := kontr_name + '/к.р(п)';
          kontr_t[i, 3] := 2;
        end;
      end
      else if DataModule1.Table_w10.fieldbyname('kr').asstring = '1' then
      begin
        kontr_name := kontr_name + 'к.р';
        kontr_t[i, 3] := 1;
      end
      else if DataModule1.Table_w10.fieldbyname('kr').asstring = '2' then
      begin
        kontr_name := kontr_name + 'к.р(п)';
        kontr_t[i, 3] := 2;
      end;

      kontr_t[i, 4] := 0;
      if kontr_name <> '' then
      begin // курс.проект
        if DataModule1.Table_w10.fieldbyname('kp').asstring = '1' then
        begin
          kontr_name := kontr_name + '/к.п';
          kontr_t[i, 4] := 1;
        end
        else if DataModule1.Table_w10.fieldbyname('kp').asstring = '2' then
        // перезачет
        begin
          kontr_name := kontr_name + '/к.п(п)';
          kontr_t[i, 4] := 2;
        end;
      end
      else if DataModule1.Table_w10.fieldbyname('kp').asstring = '1' then
      begin
        kontr_name := kontr_name + 'к.п';
        kontr_t[i, 4] := 1;
      end
      else if DataModule1.Table_w10.fieldbyname('kp').asstring = '2' then
      begin
        kontr_name := kontr_name + 'к.п(п)';
        kontr_t[i, 4] := 2;
      end;

      stud_sessia.StringGrid1.Cells[2, i] := kontr_name;
      stud_sessia.StringGrid1.Cells[3, i] := DataModule1.Table_w10.fieldbyname
        ('prepod').asstring;
      stud_sessia.StringGrid1.Cells[4, i] := DataModule1.Table_w10.fieldbyname
        ('ves').asstring;
      stud_sessia.StringGrid1.Cells[5, i] := DataModule1.Table_w10.fieldbyname
        ('houres').asstring;
      DataModule1.Table_w10.next;
      i := i + 1;
      stud_sessia.StringGrid1.RowCount := stud_sessia.StringGrid1.RowCount + 1;
    end;

  end
  else
  begin
    showmessage('Список дисциплин будет заново сформирован!');
    DataModule1.Query6.Open;
    DataModule1.Query6.filter := 'coduchp=' + inttostr(coduchp);
    DataModule1.Query6.filtered := True;
    j := 0;
    i := 1;
    naimk := '';
    nom := 0;

    while not DataModule1.Query6.Eof do
    begin
      DataModule1.Table14.IndexName := 'PRIMARY';
      { if DataModule1.Query6.fieldbyname('coddis').asinteger=1452 then
        showmessage('Смотри'); }
      if not DataModule1.Table14.FindKey
        ([DataModule1.Query6.fieldbyname('coddis').asinteger]) then
        showmessage('Сведений по дисциплине нет!')
      else
      begin
        priznak := 1;
        if (DataModule1.Table14.fieldbyname('codkom').asstring = 'В') and
        // дисциплина по выбору
          (pos('1.', DataModule1.Query6.fieldbyname('nomstr').asstring) = 0)
        // не первая строка
        then
          priznak := 0;
        if priznak <> 0 then // обрабатываем
        begin
          // заполнение часов
          for k := 1 to 12 do
          begin
            nam := 'L' + inttostr(k);
            if DataModule1.Query6.fieldbyname(nam).AsFloat = 0 then
            begin
              ch[1, k] := 0;
              ch[2, k] := 0;
            end
            else
            begin
              l := pos(',', DataModule1.Query6.fieldbyname(nam).asstring);
              if l <> 0 then // через запятую
              begin
                ch[1, k] :=
                  strtoint(copy(DataModule1.Query6.fieldbyname(nam).asstring,
                  1, l - 1));
                l1 := length(DataModule1.Query6.fieldbyname(nam).asstring);
                s := copy(DataModule1.Query6.fieldbyname(nam).asstring, l + 1,
                  l1 - l); // часы на лаб.раб
                if length(s) = 1 then
                  ch[2, k] := strtoint(s) * 10
                else
                  ch[2, k] := strtoint(s);
              end
              else
              begin
                l := pos('.', DataModule1.Query6.fieldbyname(nam).asstring);
                if l <> 0 then // через точку
                begin
                  ch[1, k] :=
                    strtoint(copy(DataModule1.Query6.fieldbyname(nam)
                    .asstring, 1, l - 1));
                  l1 := length(DataModule1.Query6.fieldbyname(nam).asstring);
                  s := copy(DataModule1.Query6.fieldbyname(nam).asstring, l + 1,
                    l1 - l); // часы на лаб.раб
                  if length(s) = 1 then
                    ch[2, k] := strtoint(s) * 10
                  else
                    ch[2, k] := strtoint(s);
                end
                else // не найдена ни точка ни запятая
                begin
                  ch[1, k] := strtoint(DataModule1.Query6.fieldbyname(nam)
                    .asstring);
                  ch[2, k] := 0;
                end
              end
            end;
            nam := 'G' + inttostr(k);
            if DataModule1.Query6.fieldbyname(nam).AsFloat = 0 then
              ch[3, k] := 0
            else
            begin
              l := pos(',', DataModule1.Query6.fieldbyname(nam).asstring);
              if l <> 0 then // через запятую
                ch[3, k] :=
                  strtoint(copy(DataModule1.Query6.fieldbyname(nam).asstring, 1,
                  l - 1)) // часы на практ.раб
              else
              begin
                l := pos('.', DataModule1.Query6.fieldbyname(nam).asstring);
                if l <> 0 then // через точку
                  ch[3, k] :=
                    strtoint(copy(DataModule1.Query6.fieldbyname(nam).asstring,
                    1, l - 1)) // часы на практ.раб
                else // не найдена ни точка ни запятая
                  ch[3, k] := strtoint(DataModule1.Query6.fieldbyname(nam)
                    .asstring);
              end
            end
          end; // конец заполнения часов
          // кол-во семестров
          ksem := 0;
          for k := 1 to 12 do
          begin
            sum := ch[1, k] + ch[2, k] + ch[3, k];
            if sum <> 0 then
              ksem := ksem + 1;
            sum := 0;
          end;
          // анализ контрольных точек
          if pos(',', DataModule1.Query6.fieldbyname('ekz').asstring) <> 0 then
          // экзамен
            if (pos(inttostr(sem) + ',', DataModule1.Query6.fieldbyname('ekz')
              .asstring) <> 0) or
              (pos(inttostr(sem) + 'п,', DataModule1.Query6.fieldbyname('ekz')
              .asstring) <> 0) or
              (pos(',' + inttostr(sem), DataModule1.Query6.fieldbyname('ekz')
              .asstring) <> 0) or
              (pos(',' + inttostr(sem) + 'п',
              DataModule1.Query6.fieldbyname('ekz').asstring) <> 0) then
            begin
              j := j + 1;
              kontr[1] := 1;
              kontr_name := 'экз';
              kontr_t[i, 1] := 1;
              if ksem = 0 then
              begin
                ksem := 1;
                kontr_name := 'экз(п)';
                kontr_t[i, 1] := 2;
                sum := DataModule1.Query6.fieldbyname('smrab').asinteger;
              end;
            end
            else
            begin
              kontr[1] := 0;
              kontr_name := '';
              kontr_t[i, 1] := 0;
            end
          else
          begin
            ppos := pos(inttostr(10), DataModule1.Query6.fieldbyname('ekz')
              .asstring);
            ppos1 := pos(inttostr(11), DataModule1.Query6.fieldbyname('ekz')
              .asstring);
            pp := pos(inttostr(sem), DataModule1.Query6.fieldbyname('ekz')
              .asstring);
            if ((sem < 10) and (pp <> 0) and (pp <> ppos) and (pp <> ppos1)) or
              ((sem >= 10) and (pp <> 0)) or
              (pos(inttostr(sem) + 'п', DataModule1.Query6.fieldbyname('ekz')
              .asstring) <> 0) then
            begin
              j := j + 1;
              kontr[1] := 1;
              kontr_name := 'экз';
              kontr_t[i, 1] := 1;
              if ksem = 0 then
              begin
                ksem := 1;
                kontr_name := 'экз(п)';
                kontr_t[i, 1] := 2;
                sum := DataModule1.Query6.fieldbyname('smrab').asinteger;
              end;
            end
            else
            begin
              if (spfak = 66) and
                (pos(inttostr(sem), DataModule1.Query6.fieldbyname('rasz')
                .asstring) <> 0) then
              begin
                j := j + 1;
                kontr[1] := 1;
                kontr_name := 'итог.оц';
                kontr_t[i, 1] := 3;
              end
              else
              begin
                kontr[1] := 0;
                kontr_name := '';
                kontr_t[i, 1] := 0;
              end;
            end;
          end;

          if pos(',', DataModule1.Query6.fieldbyname('zach').asstring) <> 0 then
          // зачет
            if (pos(inttostr(sem) + ',', DataModule1.Query6.fieldbyname('zach')
              .asstring) <> 0) or
              (pos(inttostr(sem) + 'п,', DataModule1.Query6.fieldbyname('zach')
              .asstring) <> 0) or
              (pos(',' + inttostr(sem), DataModule1.Query6.fieldbyname('zach')
              .asstring) <> 0) or
              (pos(',' + inttostr(sem) + 'п',
              DataModule1.Query6.fieldbyname('zach').asstring) <> 0) then
            begin
              j := j + 1;
              kontr[2] := 1;
              kontr_t[i, 2] := 1;
              if kontr_name <> '' then
                kontr_name := kontr_name + '/ зач'
              else
                kontr_name := kontr_name + 'зач';
              if ksem = 0 then
              begin
                ksem := 1;
                sum := DataModule1.Query6.fieldbyname('smrab').asinteger;
                kontr_t[i, 2] := 2;
                if kontr_name <> '' then
                  kontr_name := kontr_name + '/ зач(п)'
                else
                  kontr_name := kontr_name + 'зач(п)';
              end;
            end
            else
            begin
              kontr[2] := 0;
              kontr_t[i, 2] := 0;
              kontr_name := kontr_name + ''
            end
          else
          begin
            ppos := pos(inttostr(10), DataModule1.Query6.fieldbyname('zach')
              .asstring);
            ppos1 := pos(inttostr(11), DataModule1.Query6.fieldbyname('zach')
              .asstring);
            pp := pos(inttostr(sem), DataModule1.Query6.fieldbyname('zach')
              .asstring);
            if ((sem < 10) and (pp <> 0) and (pp <> ppos) and (pp <> ppos1)) or
              ((sem >= 10) and (pp <> 0)) or
              (pos(inttostr(sem) + 'п', DataModule1.Query6.fieldbyname('zach')
              .asstring) <> 0) then
            begin
              j := j + 1;
              kontr[2] := 1;
              kontr_t[i, 2] := 1;
              if kontr_name <> '' then
                kontr_name := kontr_name + '/ зач'
              else
                kontr_name := kontr_name + 'зач';
              if ksem = 0 then
              begin
                ksem := 1;
                sum := DataModule1.Query6.fieldbyname('smrab').asinteger;
                kontr_t[i, 2] := 2;
                if kontr_name <> '' then
                  kontr_name := kontr_name + '/ зач(п)'
                else
                  kontr_name := kontr_name + 'зач(п)';
              end;
            end
            else
            begin
              kontr[2] := 0;
              kontr_t[i, 2] := 0;
              kontr_name := kontr_name + ''
            end;
          end;

          if pos(',', DataModule1.Query6.fieldbyname('kra').asstring) <> 0 then
          // курсовая работа
            if (pos(inttostr(sem) + ',', DataModule1.Query6.fieldbyname('kra')
              .asstring) <> 0) or
              (pos(inttostr(sem) + 'п,', DataModule1.Query6.fieldbyname('kra')
              .asstring) <> 0) or
              (pos(',' + inttostr(sem), DataModule1.Query6.fieldbyname('kra')
              .asstring) <> 0) or
              (pos(',' + inttostr(sem) + 'п',
              DataModule1.Query6.fieldbyname('kra').asstring) <> 0) then
            begin
              j := j + 1;
              kontr[3] := 1;
              kontr_t[i, 3] := 1;
              if kontr_name <> '' then
                kontr_name := kontr_name + '/ к.р'
              else
                kontr_name := kontr_name + 'к.р';
              if ksem = 0 then
              begin
                ksem := 1;
                sum := DataModule1.Query6.fieldbyname('smrab').asinteger;
                kontr_t[i, 3] := 2;
                if kontr_name <> '' then
                  kontr_name := kontr_name + '/ к.р(п)'
                else
                  kontr_name := kontr_name + 'к.р(п)';
              end;
            end
            else
            begin
              kontr[3] := 0;
              kontr_t[i, 3] := 0;
              kontr_name := kontr_name + ''
            end
          else
          begin
            ppos := pos(inttostr(10), DataModule1.Query6.fieldbyname('kra')
              .asstring);
            ppos1 := pos(inttostr(11), DataModule1.Query6.fieldbyname('kra')
              .asstring);
            pp := pos(inttostr(sem), DataModule1.Query6.fieldbyname('kra')
              .asstring);
            if (((sem < 10) and (pp <> 0) and (pp <> ppos) and (pp <> ppos1)) or
              ((sem >= 10) and (pp <> 0)) or
              (pos(inttostr(sem) + 'п', DataModule1.Query6.fieldbyname('kra')
              .asstring) <> 0)) then
            begin
              j := j + 1;
              kontr[3] := 1;
              kontr_t[i, 3] := 1;
              if kontr_name <> '' then
                kontr_name := kontr_name + '/ к.р'
              else
                kontr_name := kontr_name + 'к.р';
              if ksem = 0 then
              begin
                ksem := 1;
                sum := DataModule1.Query6.fieldbyname('smrab').asinteger;
                kontr_t[i, 3] := 2;
                if kontr_name <> '' then
                  kontr_name := kontr_name + '/ к.р(п)'
                else
                  kontr_name := kontr_name + 'к.р(п)';
              end;
            end
            else
            begin
              kontr[3] := 0;
              kontr_t[i, 3] := 0;
              kontr_name := kontr_name + ''
            end;
          end;

          if pos(',', DataModule1.Query6.fieldbyname('kpr').asstring) <> 0 then
          // курсовой проект
            if (pos(inttostr(sem) + ',', DataModule1.Query6.fieldbyname('kpr')
              .asstring) <> 0) or
              (pos(inttostr(sem) + 'п,', DataModule1.Query6.fieldbyname('kpr')
              .asstring) <> 0) or
              (pos(',' + inttostr(sem), DataModule1.Query6.fieldbyname('kpr')
              .asstring) <> 0) or
              (pos(',' + inttostr(sem) + 'п',
              DataModule1.Query6.fieldbyname('kpr').asstring) <> 0) then
            begin
              j := j + 1;
              kontr[4] := 1;
              kontr_t[i, 4] := 1;
              if kontr_name <> '' then
                kontr_name := kontr_name + '/ к.пр'
              else
                kontr_name := kontr_name + 'к.пр';
              if ksem = 0 then
              begin
                ksem := 1;
                sum := DataModule1.Query6.fieldbyname('smrab').asinteger;
                kontr_t[i, 4] := 2;
                if kontr_name <> '' then
                  kontr_name := kontr_name + '/ к.пр(п)'
                else
                  kontr_name := kontr_name + 'к.пр(п)';
              end;
            end
            else
            begin
              kontr[4] := 0;
              kontr_t[i, 4] := 0;
              kontr_name := kontr_name + ''
            end
          else
          begin
            ppos := pos(inttostr(10), DataModule1.Query6.fieldbyname('kpr')
              .asstring);
            ppos1 := pos(inttostr(11), DataModule1.Query6.fieldbyname('kpr')
              .asstring);
            pp := pos(inttostr(sem), DataModule1.Query6.fieldbyname('kpr')
              .asstring);
            if ((sem < 10) and (pp <> 0) and (pp <> ppos) and (pp <> ppos1)) or
              ((sem >= 10) and (pp <> 0)) or
              (pos(inttostr(sem) + 'п', DataModule1.Query6.fieldbyname('kpr')
              .asstring) <> 0) then
            begin
              j := j + 1;
              kontr[4] := 1;
              kontr_t[i, 4] := 1;
              if kontr_name <> '' then
                kontr_name := kontr_name + '/ к.пр'
              else
                kontr_name := kontr_name + 'к.пр';
              if ksem = 0 then
              begin
                ksem := 1;
                sum := DataModule1.Query6.fieldbyname('smrab').asinteger;
                kontr_t[i, 4] := 2;
                if kontr_name <> '' then
                  kontr_name := kontr_name + '/ к.пр(п)'
                else
                  kontr_name := kontr_name + 'к.пр(п)';
              end;
            end
            else
            begin
              kontr[4] := 0;
              kontr_t[i, 4] := 0;
              kontr_name := kontr_name + ''
            end;
          end;
          if (j <> 0) and
            (pos('Факульт', DataModule1.Table14.fieldbyname('naim').asstring)
            = 0) then
          begin // если есть контр.точки в этом семестре
            stud_sessia.StringGrid1.Cells[1, i] :=
              DataModule1.Table14.fieldbyname('naim').asstring;
            coddisc[i] := DataModule1.Query6.fieldbyname('coddis').asinteger;
            naimk := DataModule1.Table14.fieldbyname('naimk').asstring;
            // stud_sessia.StringGrid1.Cells[0,i]:=DataModule1.Query6.fieldbyname('coddis').asstring;
            nom := nom + 1;
            stud_sessia.StringGrid1.Cells[0, i] := inttostr(nom);
            stud_sessia.StringGrid1.Cells[2, i] := kontr_name;
            // поиск преподавателей
            if SpinEdit2.Value mod 2 = 0 then
              p := 2
            else
              p := 1; // полугодие
            { if (monthof(date)>8) and (monthof(date)<12) then beg_year:=yearof(date) else beg_year:=yearof(date)+1;
              bg:=beg_year-strtoint(Edit3.Text)+1;   //начало учебного года для семестра }
            bg := SpinEdit1.Value;
            if not DataModule1.Table23.FindKey
              ([DataModule1.Query6.fieldbyname('coddis').asinteger, bg, p]) then
            begin
              // showmessage('Сведений о преподавателях нет! Заполните информацию сами!');
              stud_sessia.StringGrid1.Cells[3, i] := ''
            end
            else
            begin
              /// ///////////моё
              k := DataModule1.Table23.recordcount;
              all := '';
              DataModule1.Query3.SQL.Clear;
              DataModule1.Query3.SQL.add('select * from dicprepod where coddis='
                + DataModule1.Query6.fieldbyname('coddis').asstring +
                ' and year=' + inttostr(bg) + ' and semester=' + inttostr(p) +
                ' and prlek=1 and codgr=' + inttostr(w_gr));
              DataModule1.Query3.Open;
              if DataModule1.Query3.recordcount = 0 then
              begin
              ///
                DataModule1.Query3.SQL.Clear;
                // datamodule1.Query3.SQL.add('select * from dicprepod where coddis='+DataModule1.Query6.fieldbyname('coddis').AsString+' and year='+inttostr(bg)+' and semester='+inttostr(p)+' and prlek=1');
                DataModule1.Query3.SQL.add
                  ('select a.id,a.cod,a.coduchp,a.coddis,b.coddis,a.prlek,a.prlab,a.prprak,a.codk,a.year,a.semester,a.codgr,a.codpot ');
                DataModule1.Query3.SQL.add
                  (' from dicprepod as a, potokgr as b where a.coddis=' +
                  DataModule1.Query6.fieldbyname('coddis').asstring +
                  ' and a.year=' + inttostr(bg) + ' and a.semester=' +
                  inttostr(p) +
                  ' and a.prlek=1 and a.codpot=b.codpot and b.codgr=' +
                  inttostr(w_gr));
                DataModule1.Query3.Open;
              end;
              ///
              if DataModule1.Query3.recordcount >= 1 then
              begin
                DataModule1.Table22.FindKey
                  ([DataModule1.Query3.fieldbyname('cod').asstring]);
                fio := DataModule1.Table22.fieldbyname('fam').asstring + ' ' +
                  copy(DataModule1.Table22.fieldbyname('name').asstring, 1, 1) +
                  '.' + copy(DataModule1.Table22.fieldbyname('otch').asstring,
                  1, 1) + '.';
                all := all + fio;
                codprep[i] := DataModule1.Table22.fieldbyname('id').asinteger;
              end
              else
              begin
                k := DataModule1.Table23.recordcount;
                all := '';
                if not DataModule1.Table22.FindKey
                  ([DataModule1.Table23.fieldbyname('cod').asstring]) then
                  fio := ''
                else
                begin
                  fio := DataModule1.Table22.fieldbyname('fam').asstring + ' ' +
                    copy(DataModule1.Table22.fieldbyname('name').asstring, 1, 1)
                    + '.' + copy(DataModule1.Table22.fieldbyname('otch')
                    .asstring, 1, 1) + '.';
                  all := all + fio;
                  codprep[i] := DataModule1.Table22.fieldbyname('id').asinteger;
                end;
              end;
              DataModule1.Query3.SQL.Clear;
              DataModule1.Query3.Close;
              /// ///////////моё

              { k:=DataModule1.Table23.RecordCount;
                all:='';
                if not DataModule1.Table22.FindKey([DataModule1.Table23.fieldbyname('cod').AsString]) then
                fio:=''
                else
                begin
                fio:=DataModule1.Table22.fieldbyname('fam').asstring+' '+copy(DataModule1.Table22.fieldbyname('name').asstring,1,1)+'.'+copy(DataModule1.Table22.fieldbyname('otch').asstring,1,1)+'.';
                all:=all+fio;
                codprep[i]:= DataModule1.Table22.fieldbyname('id').asinteger;
                end; }
              stud_sessia.StringGrid1.Cells[3, i] := all;

            end;
            // подсчет часов для ведомости
            if ((kontr[1] = 1) and (kontr[2] = 0) and (kontr[3] = 0) and
              (kontr[4] = 0)) or // экзамен или
              ((kontr[2] = 1) and (kontr[1] = 0) and (kontr[3] = 0) and
              (kontr[4] = 0)) // зачет
            then // лекции+лаб+практ+сам.раб/кол-во семестров
              stud_sessia.StringGrid1.Cells[5, i] :=
                floattostr(ch[1, sem] + ch[2, sem] + ch[3, sem] +
                DataModule1.Query6.fieldbyname('smrab').asinteger div ksem);

            if ((kontr[1] = 1) and (kontr[2] = 1) and (kontr[3] = 0) and
              (kontr[4] = 0)) // экзамен и зачет
            then // на экзамен - лекции, на зачет - практ+лабы+сам.раб/кол-во семестров
            begin
              sr := DataModule1.Query6.fieldbyname('smrab').asinteger div ksem;
              stud_sessia.StringGrid1.Cells[5, i] := floattostr(ch[1, sem]) +
                '/' + floattostr(ch[2, sem] + ch[3, sem] + sr);
            end;

            if ((kontr[1] = 1) and (kontr[2] = 0) and
              ((kontr[3] = 1) or (kontr[4] = 1)))
            // экзамен и курсовой проект или работа
            then // на экзамен - лекции, на курсовой - практ+лабы+сам.раб/кол-во семестров
            begin
              sr := DataModule1.Query6.fieldbyname('smrab').asinteger div ksem;
              stud_sessia.StringGrid1.Cells[5, i] := floattostr(ch[1, sem]) +
                '/' + floattostr(ch[2, sem] + ch[3, sem] + sr);
            end;

            if ((kontr[1] = 0) and (kontr[2] = 1) and
              ((kontr[3] = 1) or (kontr[4] = 1)))
            // зачет и курсовой проект или работа
            then // на зачет - лекции+практ+1/2(сам.раб/кол-во семестров), на курсовой - лабы+сам.раб/кол-во семестров
            begin
              sr := DataModule1.Query6.fieldbyname('smrab')
                .asinteger div (2 * ksem);
              stud_sessia.StringGrid1.Cells[5, i] :=
                floattostr(ch[1, sem] + ch[3, sem] + sr) + '/' +
                floattostr(ch[2, sem] + (DataModule1.Query6.fieldbyname('smrab')
                .asinteger - sr));
            end;

            if ((kontr[1] = 1) and (kontr[2] = 1) and (kontr[3] = 1) and
              (kontr[4] = 0)) or // экзамен и зачет и курсовая работа
              ((kontr[1] = 1) and (kontr[2] = 1) and (kontr[3] = 0) and
              (kontr[4] = 1)) // экзамен и зачет и курсовой проект
            then // на экзамен - лекции, на зачет - практ+1/2(сам.раб/кол-во семестров), на курсовой - лабы+1/2(сам.раб/кол-во семестров)
            begin
              sr := DataModule1.Query6.fieldbyname('smrab')
                .asinteger div (2 * ksem);
              stud_sessia.StringGrid1.Cells[5, i] := floattostr(ch[1, sem]) +
                '/' + floattostr(ch[3, sem] + sr) + '/' +
                floattostr(ch[2, sem] + (DataModule1.Query6.fieldbyname('smrab')
                .asinteger - sr));
            end;
            // конец подсчета часов

            discpkr[i] := naimk;
            // +#13+stud_sessia.StringGrid1.Cells[5,i]+#13+stud_sessia.StringGrid1.Cells[2,i]; //крат.наим.дисциплины часы контроль
            naimk := '';
            i := i + 1;
            stud_sessia.StringGrid1.RowCount :=
              stud_sessia.StringGrid1.RowCount + 1;
          end; // конец если j<>0
        end; // конец обрабатываем
      end; // если дисциплина найдена
      j := 0;
      DataModule1.Query6.next;

    end; // конец while

  end;
  stud_sessia.StringGrid1.RowCount := stud_sessia.StringGrid1.RowCount - 1;
  if o = 0 then
  begin
    for i := 1 to stud_sessia.StringGrid1.RowCount - 1 do
    begin
      fves := floattostr(1 / (stud_sessia.StringGrid1.RowCount - 1));
      stud_sessia.StringGrid1.Cells[4, i] := fves;
    end;
  end;
  BitBtn1.Enabled := False;
  DataModule1.Table23.filtered := False;
  DataModule1.Query6.Close;
end;

procedure Tstud_sessia.BitBtn3Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  spec, sem, disc, prep, ch_ekz, ch_zach: string;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
begin
  sp := 3; // ведомость на экзамен
  DataModule1.Table_w1.filter := 'spsost=1 and spgrup=' + inttostr(gr);
  DataModule1.Table_w1.filtered := True;
  spec := DBLookupComboBox3.Text;
  sem := inttostr(SpinEdit2.Value);
  disc := StringGrid1.Cells[1, StringGrid1.row];
  prep := StringGrid1.Cells[3, StringGrid1.row];
  Name_file := PChar('c:\doc\экзамен.ведомость ' + grup + '.doc');
  // экзаменационная ведомость
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.recordcount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\vedom1.doc'),
    Name_file, False);
  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  t1.CELL(3, 2).RANGE.Text := trim(fak_name);
  t1.CELL(3, 4).RANGE.Text := trim(grup);
  t1.CELL(4, 2).RANGE.Text := trim(spec);
  t1.CELL(4, 4).RANGE.Text := trim(sem);
  t1.CELL(5, 2).RANGE.Text := disc;
  t1.CELL(6, 2).RANGE.Text := prep;
  if kontr_t[StringGrid1.row, 1] = 0 then // экзамена нет
  begin
    t1.CELL(8, 5).RANGE.Text := ''; // часы на экзамен
    t1.CELL(8, 3).RANGE.Text := trim(StringGrid1.Cells[5, StringGrid1.row]);
    // часы на остальное
  end
  else if ((kontr_t[StringGrid1.row, 2] = 0) and
    (kontr_t[StringGrid1.row, 3] = 0) and (kontr_t[StringGrid1.row, 4] = 0))
  then // только экзамен
  begin
    t1.CELL(8, 5).RANGE.Text := trim(StringGrid1.Cells[5, StringGrid1.row]);
    t1.CELL(8, 3).RANGE.Text := '';
  end
  else
  begin
    i := pos('/', StringGrid1.Cells[5, StringGrid1.row]);
    t1.CELL(8, 5).RANGE.Text := copy(StringGrid1.Cells[5, StringGrid1.row],
      1, i - 1);
    t1.CELL(8, 3).RANGE.Text := copy(StringGrid1.Cells[5, StringGrid1.row],
      i + 1, length(StringGrid1.Cells[5, StringGrid1.row]) - i);
  end;
  prakt_progress.ProgressBar1.StepIt; // 5
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 9, 1).RANGE.Text := inttostr(i);
    t1.CELL(i + 9, 2).RANGE.Text :=
      copy(trim(DataModule1.Table_w1.fieldbyname('fam').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('vname').asstring), 1, 67);
    DataModule1.Table_w1.next;
    if i < n then
      t1.Rows.add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
end;

procedure Tstud_sessia.BitBtn4Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  grup, spec, sem, disc, prep: string;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
begin
  DataModule1.Table_w1.filter := 'spsost=1 and spgrup=' +
    inttostr(DataModule1.Table_w37.fieldbyname('pin').asinteger);
  DataModule1.Table_w1.filtered := True;
  grup := DataModule1.Table_w37.fieldbyname('name').asstring;
  spec := DBLookupComboBox3.Text;
  sem := inttostr(SpinEdit2.Value);
  disc := StringGrid1.Cells[1, StringGrid1.row];
  prep := StringGrid1.Cells[3, StringGrid1.row];
  Name_file := PChar('c:\doc\ведомость переаттест-и ' + grup + '.doc');
  // экзаменационная ведомость
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.recordcount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\vedom2.doc'),
    Name_file, False);
  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  t1.CELL(5, 2).RANGE.Text := trim(spec);
  t1.CELL(5, 4).RANGE.Text := trim(grup);
  t1.CELL(6, 4).RANGE.Text := trim(sem);
  t1.CELL(3, 2).RANGE.Text := disc;
  t1.CELL(6, 2).RANGE.Text := prep;
  prakt_progress.ProgressBar1.StepIt; // 5
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 8, 1).RANGE.Text := inttostr(i);
    t1.CELL(i + 8, 2).RANGE.Text := trim(DataModule1.Table_w1.fieldbyname('fam')
      .asstring) + ' ' + trim(DataModule1.Table_w1.fieldbyname('name').asstring)
      + ' ' + trim(DataModule1.Table_w1.fieldbyname('vname').asstring);
    if not DataModule1.Table_w2.FindKey
      ([DataModule1.Table_w1.fieldbyname('pin').asinteger]) then
      t1.CELL(i + 8, 4).RANGE.Text := 'данных нет'
    else
    begin
      t1.CELL(i + 8, 4).RANGE.Text := DataModule1.Table_w2.fieldbyname
        ('school').asstring;
    end;
    DataModule1.Table_w1.next;
    if i < n then
      t1.Rows.add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
end;

procedure Tstud_sessia.BitBtn5Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n, k: integer;
  spec, sem, disc, prep: string;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
begin
  sp := 4; // ведомость аттестационная
  DataModule1.Table_w1.filter := 'spsost=1 and spgrup=' +
    inttostr(DataModule1.Table_w37.fieldbyname('pin').asinteger);
  DataModule1.Table_w1.filtered := True;
  grup := DataModule1.Table_w37.fieldbyname('name').asstring;
  spec := DBLookupComboBox3.Text;
  sem := inttostr(SpinEdit2.Value);
  Name_file := PChar('c:\doc\аттестат.ведомость ' + grup + '.doc');
  // аттестационная ведомость
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.recordcount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\vedom0.doc'),
    Name_file, False);
  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  t1.CELL(3, 2).RANGE.Text := trim(fak_name);
  t1.CELL(3, 4).RANGE.Text := trim(grup);
  t1.CELL(4, 2).RANGE.Text := trim(spec);
  t1.CELL(4, 4).RANGE.Text := trim(sem);
  k := StringGrid1.RowCount; // кол-во строк-дисциплин
  for i := 1 to k - 1 do
    if (discpkr[i] <> '') or (k <= 11) then
      t1.CELL(5, i + 2).RANGE.Text := discpkr[i];

  prakt_progress.ProgressBar1.StepIt; // 5
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 8, 1).RANGE.Text := inttostr(i);
    t1.CELL(i + 8, 2).RANGE.Text :=
      copy(trim(DataModule1.Table_w1.fieldbyname('fam').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('vname').asstring), 1, 70);
    DataModule1.Table_w1.next;
    if i < n then
      t1.Rows.add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;

end;

procedure Tstud_sessia.BitBtn6Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  grup: string;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
begin
  // ведомость выхода на сессию
  DataModule1.Table_w1.filter := 'spsost=1 and spgrup=' +
    inttostr(DataModule1.Table_w37.fieldbyname('pin').asinteger);
  DataModule1.Table_w1.filtered := True;
  grup := DataModule1.Table_w37.fieldbyname('name').asstring;
  Name_file := PChar('c:\doc\список выход на сессию ' + grup + '.doc');
  // экзаменационная ведомость
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.recordcount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\vedom00.doc'),
    Name_file, False);
  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  t1.CELL(2, 2).RANGE.Text := trim(grup);
  prakt_progress.ProgressBar1.StepIt; // 5
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 3, 1).RANGE.Text := inttostr(i);
    t1.CELL(i + 3, 2).RANGE.Text :=
      copy(trim(DataModule1.Table_w1.fieldbyname('fam').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('vname').asstring), 1, 76);
    DataModule1.Table_w1.next;
    if i < n then
      t1.Rows.add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;

end;

procedure Tstud_sessia.BitBtn7Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  spec, sem, disc, prep, ch_ekz, ch_zach, kfak: string;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
begin
  DataModule1.Table_w1.filter := 'spsost=1 and spgrup=' + inttostr(gr);
  DataModule1.Table_w1.filtered := True;
  case spfak of
    57:
      kfak := 'ГЭФ';
    65:
      kfak := 'ФЗФО';
    98:
      kfak := 'ТФ'
  else
    kfak := '';
  end;
  spec := ksp;
  sem := inttostr(SpinEdit2.Value);
  disc := StringGrid1.Cells[1, StringGrid1.row];
  prep := StringGrid1.Cells[3, StringGrid1.row];
  Name_file := PChar('c:\doc\экзам.ведомость новая ' + grup + '.doc');
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.recordcount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\vedomn1.doc'),
    Name_file, False);
  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  t1.CELL(3, 2).RANGE.Text := disc;
  t1.CELL(3, 4).RANGE.Text := kfak;
  t1.CELL(4, 2).RANGE.Text := prep;
  t1.CELL(4, 4).RANGE.Text := trim(spec);
  t1.CELL(5, 4).RANGE.Text := trim(sem);
  t1.CELL(6, 5).RANGE.Text := trim(grup);
  prakt_progress.ProgressBar1.StepIt; // 5
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 8, 1).RANGE.Text := inttostr(i);
    t1.CELL(i + 8, 2).RANGE.Text :=
      copy(trim(DataModule1.Table_w1.fieldbyname('fam').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('vname').asstring), 1, 67);
    t1.CELL(i + 8, 3).RANGE.Text :=
      trim(DataModule1.Table_w1.fieldbyname('zachbook').asstring);

    DataModule1.Table_w1.next;
    if i < n then
      t1.Rows.add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
end;

procedure Tstud_sessia.DBLookupComboBox4CloseUp(Sender: TObject);
begin
  w_gr := DBLookupComboBox4.Listsource.dataset.fieldbyname('grup').asinteger;
  grup := DataModule1.Table_w37.fieldbyname('name').asstring;
  gr := DBLookupComboBox4.Listsource.dataset.fieldbyname('pin').asinteger;
  ngr := (DBLookupComboBox4.Listsource.dataset.fieldbyname('ngrup')
    .asinteger) div 10;
  BitBtn1.Enabled := True;
end;

procedure Tstud_sessia.SpeedButton4Click(Sender: TObject);
var
  ii: integer;
begin
  for ii := stud_sessia.StringGrid1.row to stud_sessia.StringGrid1.
    RowCount - 1 do
  begin
    codprep[ii] := codprep[ii + 1];
    coddisc[ii] := coddisc[ii + 1];
    discpkr[ii] := discpkr[ii + 1];
    kontr_t[ii, 1] := kontr_t[ii + 1, 1];
    kontr_t[ii, 2] := kontr_t[ii + 1, 2];
    kontr_t[ii, 3] := kontr_t[ii + 1, 3];
    kontr_t[ii, 4] := kontr_t[ii + 1, 4];
    stud_sessia.StringGrid1.Cells[1, ii] := stud_sessia.StringGrid1.Cells
      [1, ii + 1];
    stud_sessia.StringGrid1.Cells[2, ii] := stud_sessia.StringGrid1.Cells
      [2, ii + 1];
    stud_sessia.StringGrid1.Cells[3, ii] := stud_sessia.StringGrid1.Cells
      [3, ii + 1];
    stud_sessia.StringGrid1.Cells[4, ii] := stud_sessia.StringGrid1.Cells
      [4, ii + 1];
    stud_sessia.StringGrid1.Cells[5, ii] := stud_sessia.StringGrid1.Cells
      [5, ii + 1];
  end;
  stud_sessia.StringGrid1.RowCount := stud_sessia.StringGrid1.RowCount - 1;
end;

procedure Tstud_sessia.SpeedButton5Click(Sender: TObject);
begin
  Enabled := False;
  application.CreateForm(Tstud_sess_up, stud_sess_up);
  stud_sess_up.show;
end;

procedure Tstud_sessia.DBLookupComboBox5CloseUp(Sender: TObject);
begin
  spses := DBLookupComboBox5.Listsource.dataset.fieldbyname('pin').asinteger;
  Edit4.Text := DataModule1.Table_w11.fieldbyname('begdate').asstring;
  Edit5.Text := DataModule1.Table_w11.fieldbyname('enddate').asstring;
  if date > DataModule1.Table_w11.fieldbyname('begdate').asdatetime
  // нельзя изменять дисциплины в сессию может быть потеряна успеваемость
  then
  begin
    SpeedButton1.Hide;
    SpeedButton4.Hide;
    SpeedButton5.Hide;
    BitBtn8.Hide;
    saves := 1;
  end
  else
    saves := 0; // переменная для сохранения

end;

procedure Tstud_sessia.SpinEdit1Click(Sender: TObject);
begin
  goduch := SpinEdit1.Value;
  DataModule1.Table_w11.filtered := False;
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(fo) + ' and spspec=' +
    inttostr(sp) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
end;

procedure Tstud_sessia.StringGrid1DblClick(Sender: TObject);
begin
  Enabled := False;
  application.CreateForm(Tstud_sess_up, stud_sess_up);
  stud_sess_up.show;
end;

procedure Tstud_sessia.BitBtn8Click(Sender: TObject);
var
  k, i: integer;
  s: real;
begin
  // проверка суммы весов
  s := 0;
  k := StringGrid1.RowCount; // затем добавляем
  for i := 1 to k - 1 do
    s := s + strtofloat(StringGrid1.Cells[4, i]);
  if s = 1 then
  begin
    showmessage('Сумма весов дисциплин равна ' + floattostr(s) +
      ' - не равна 1! Измените веса!');
    exit;
  end;
  saves := 1;
  save_sessia;
  BitBtn1.Enabled := True;
end;

procedure Tstud_sessia.save_sessia;
var
  i, k: integer;
  s1, s2, s3, s4: string;
begin
  DataModule1.Table_w10.filtered := False;
  if (yearof(date) mod 10) >= ngr then
    godpr := (yearof(date) div 10) * 10 + ngr
  else
    godpr := ((yearof(date) div 10) - 1) * 10 + ngr;
  DataModule1.Table_w10.filter := 'spgrup=' + inttostr(gr) + ' and sem=' +
    inttostr(sem) + ' and coduchp=' + inttostr(coduchp) + ' and godpr=' +
    inttostr(godpr) + ' and spsessia=' + inttostr(spses);
  DataModule1.Table_w10.filtered := True;
  if DataModule1.Table_w10.recordcount <> 0 then
  begin // записи есть уже
    DataModule1.Query1.SQL.Clear; // удаляем сначало
    s1 := ' delete from uchsessia where spgrup=' + inttostr(gr) + ' and sem=' +
      inttostr(SpinEdit2.Value) + ' and coduchp=' + inttostr(coduchp) +
      ' and godpr=' + inttostr(godpr) + ' and spsessia=' + inttostr(spses);
    DataModule1.Query1.SQL.add(s1);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w10.Refresh;
  end;
  k := StringGrid1.RowCount; // затем добавляем
  if k > 1 then
  begin
    for i := 1 to k - 1 do
    begin
      DataModule1.Query1.SQL.Clear;
      s1 := 'insert  into uchsessia (spgrup,sem,spprepod,spdisc,godpr,coduchp,ekz,zach,kr,kp,houres,prepod,spsessia,ves)';
      s2 := ' values (' + inttostr(gr) + ',' + inttostr(SpinEdit2.Value) + ',' +
        inttostr(codprep[i]) + ',' + inttostr(coddisc[i]) + ',' +
        inttostr(godpr) + ',';
      s3 := inttostr(coduchp) + ',' + '''' + inttostr(kontr_t[i, 1]) + '''' +
        ',' + '''' + inttostr(kontr_t[i, 2]) + '''' + ',' + '''' +
        inttostr(kontr_t[i, 3]) + '''' + ',';
      s4 := '''' + inttostr(kontr_t[i, 4]) + '''' + ',' + '''' +
        StringGrid1.Cells[5, i] + '''' + ',' + '''' + StringGrid1.Cells[3, i] +
        '''' + ',' + inttostr(spses) + ',' + StringGrid1.Cells[4, i] + ')';
      DataModule1.Query1.SQL.add(s1 + s2 + s3 + s4);
      DataModule1.Query1.ExecSQL;
    end;
    DataModule1.Table_w10.Refresh;
  end;
end;

procedure Tstud_sessia.BitBtn9Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  spec, sem, disc, prep, ch_ekz, ch_zach, kfak: string;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
begin
  DataModule1.Table_w1.filter := 'spsost=1 and spgrup=' + inttostr(gr);
  DataModule1.Table_w1.filtered := True;
  case spfak of
    57:
      kfak := 'ГЭФ';
    65:
      kfak := 'ФЗФО';
    98:
      kfak := 'ТФ'
  else
    kfak := '';
  end;
  spec := ksp;
  sem := inttostr(SpinEdit2.Value);
  disc := StringGrid1.Cells[1, StringGrid1.row];
  prep := StringGrid1.Cells[3, StringGrid1.row];
  Name_file := PChar('c:\doc\зачет.ведомость новая ' + grup + '.doc');
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.recordcount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\vedomn2.doc'),
    Name_file, False);
  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  t1.CELL(3, 2).RANGE.Text := disc;
  t1.CELL(3, 4).RANGE.Text := kfak;
  t1.CELL(4, 2).RANGE.Text := prep;
  t1.CELL(4, 4).RANGE.Text := trim(spec);
  t1.CELL(5, 5).RANGE.Text := trim(sem);
  t1.CELL(6, 5).RANGE.Text := trim(grup);
  prakt_progress.ProgressBar1.StepIt; // 5
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 8, 1).RANGE.Text := inttostr(i);
    t1.CELL(i + 8, 2).RANGE.Text :=
      copy(trim(DataModule1.Table_w1.fieldbyname('fam').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('vname').asstring), 1, 67);
    t1.CELL(i + 8, 3).RANGE.Text :=
      trim(DataModule1.Table_w1.fieldbyname('zachbook').asstring);
    DataModule1.Table_w1.next;
    if i < n then
      t1.Rows.add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;

end;

procedure Tstud_sessia.SpeedButton1Click(Sender: TObject);
var
  ii, sum, k, l: integer;
  h: array [1 .. 20] of integer;
  s1, s2: string;
begin
  // расставляем веса пропорционально часам в семестре
  sum := 0;
  for ii := 1 to stud_sessia.StringGrid1.RowCount - 1 do // подсчет общей суммы
  begin
    h[ii] := 0;
    k := length(stud_sessia.StringGrid1.Cells[5, ii]);
    l := pos('/', stud_sessia.StringGrid1.Cells[5, ii]);
    if l = 0 then // рассматриваем вариант чч
      h[ii] := strtoint(stud_sessia.StringGrid1.Cells[5, ii])
    else
    begin
      s1 := copy(stud_sessia.StringGrid1.Cells[5, ii], 1, l - 1);
      // копируем до /
      h[ii] := strtoint(s1);
      s2 := copy(stud_sessia.StringGrid1.Cells[5, ii], l + 1, k - l);
      // копируем после /
      k := length(s2);
      l := pos('/', s2);
      if l = 0 then // рассматриваем вариант чч/чч
        h[ii] := h[ii] + strtoint(s2)
      else // рассматриваем вариант чч/чч/чч
        h[ii] := h[ii] + strtoint(copy(s2, l + 1, k - l));
    end;
    sum := sum + h[ii];
  end;
  for ii := 1 to stud_sessia.StringGrid1.RowCount - 1 do // расставляем веса
  begin
    fves := floattostr(h[ii] / sum);
    stud_sessia.StringGrid1.Cells[4, ii] := fves;
  end;
end;

procedure Tstud_sessia.SpeedButton2Click(Sender: TObject);
begin
  // продление сессии

end;

procedure Tstud_sessia.BitBtn10Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  spec, sem: string;
  Name_file: PWideChar;
  fil: OLEVariant;
begin
  spec := ksp;
  sem := inttostr(SpinEdit2.Value);
  Name_file := PChar('c:\doc\Сессия ' + spec + ' ' + sem + 'сем.doc');
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := stud_sessia.StringGrid1.RowCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\sessia1.doc'),
    Name_file, False);
  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  t1.CELL(2, 2).RANGE.Text := fak_name;
  t1.CELL(2, 4).RANGE.Text := inttostr(SpinEdit1.Value) + '/' +
    inttostr(SpinEdit1.Value + 1);
  t1.CELL(3, 2).RANGE.Text := trim(spec);
  t1.CELL(3, 4).RANGE.Text := trim(sem);
  prakt_progress.ProgressBar1.StepIt; // 5
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 5, 1).RANGE.Text := inttostr(i);
    t1.CELL(i + 5, 2).RANGE.Text := stud_sessia.StringGrid1.Cells[1, i] + '(' +
      inttostr(coddisc[i]) + ')';
    t1.CELL(i + 5, 3).RANGE.Text := stud_sessia.StringGrid1.Cells[5, i];
    t1.CELL(i + 5, 4).RANGE.Text := stud_sessia.StringGrid1.Cells[2, i];
    If i <> n then
      t1.Rows.add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;

end;

end.
