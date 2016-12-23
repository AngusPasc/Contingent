unit abitu1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, DataModule, DB,
  DBCtrls, DateUtils;

type
  Tabitudn = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    nompr: TEdit;
    Label2: TLabel;
    datpr: TEdit;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  abitudn: Tabitudn;
  zach, fak, otd, spec, grup, kolv: integer;
  filtr, sprfak, sprspec, filtege, papa, mama, papajob, mamajob: string;

implementation

uses main1, umy_proc;
{$R *.dfm}

procedure Tabitudn.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tabitudn.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'PRIMARY';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w3.Open;
  DataModule1.Table_w6.Open;
  DataModule1.Table_w33.Open;
  DataModule1.Table_w33.Filter := 'priz=1';
  DataModule1.Table_w33.Filtered := True;
  DataModule1.Table_w34.Open;
  // DataModule1.Table_w34.Filter := 'priz=1 and pinrod=0';
  DataModule1.Table_w34.Filter := 'pin=65 or pin=57 or pin=98';
  DataModule1.Table_w34.Filtered := True;
  DataModule1.Table_w36.Open;
  DataModule1.Table_w37.Open;
  DataModule1.baza_h.IndexName := 'fio';
  DataModule1.baza_h.Open;
  DataModule1.snspec.Open;
  DataModule1.svidet.Open;
  if priz_dost <> 1 then
  begin
    DataModule1.baza_h.ReadOnly := True;
  end;
  filtr := 'zach<>0';
  DataModule1.baza_h.Filter := filtr;
  DataModule1.baza_h.Filtered := True;

  fak := 0;
  otd := 0;
  kolv := 0;
  grup := 0;
  spec := 0;
  sprfak := '';
  BitBtn3.Hide;
end;

procedure Tabitudn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.close;
  DataModule1.Table_w2.close;
  DataModule1.Table_w3.close;
  DataModule1.Table_w6.close;
  DataModule1.Table_w33.close;
  DataModule1.Table_w34.close;
  DataModule1.Table_w36.close;
  DataModule1.Table_w37.close;
  DataModule1.baza_h.close;
  DataModule1.snspec.close;
  DataModule1.svidet.close;
  DataModule1.Table_w34.Filtered := False;
  DataModule1.Table_w36.Filtered := False;
  DataModule1.Table_w37.Filtered := False;
  DataModule1.baza_h.Filtered := False;
  DataModule1.baza_h.ReadOnly := False;
  main.Enabled := True;
end;

procedure Tabitudn.BitBtn2Click(Sender: TObject);
var
  fam, name, vname, s1, s2, datr, pnum, pwho, pdate, adr, phone, mphone, schpr,
    mesr, str_d, mesj, dolj, telj, s3, s7: string;
  miln, mildate, milwho, s4, s5, s6, pr, m1, m2, m3, m4, nld, nzach, str_f,
    aul: string;
  gr, sost, stat, n, i, pinacc, event, citiz, sch, schgod, hostel, sex, marry,
    god, tip: integer;
  soc, lang, kat, ksiva, cod, mil, r1, r2, r3, r4, reiting, lotd, sl: integer;
  key: char;
  sum: real;
  ar1, ar2, ar3, ar4: integer;
begin
  if spec = 0 then
  begin
    showmessage('Выберите специальность!');
    DBLookupComboBox1.SetFocus;
    exit;
  end;
  if otd = 0 then
  begin
    showmessage('Выберите форму обучения!');
    DBLookupComboBox4.SetFocus;
    exit;
  end;
  if grup = 0 then
  begin
    showmessage('Выберите группу!');
    DBLookupComboBox3.SetFocus;
    exit;
  end;
  if kolv = 0 then
  begin
    showmessage('Не выделены абитуриенты для передачи!');
    DBGrid1.SetFocus;
    exit;
  end;
  if nompr.Text = '' then
  begin
    showmessage('Введите № приказа');
    nompr.SetFocus;
    exit;
  end;
  if datpr.Text = '' then
  begin
    showmessage('Введите дату приказа');
    datpr.SetFocus;
    exit;
  end;
  DataModule1.geography.IndexName := 'PRIMARY';
  DataModule1.geography.Open;
  DataModule1.Table_w1.IndexName := 'PRIMARY';
  // otd:=6       //дневное отделение
  // otd:=10       //средне-специальное отделение
  if otd = 10 then // ФССО
  begin
    case fak of
      57, 98:
        lotd := 6;
      65:
        lotd := 7;
    end;
  end
  else
    lotd := otd;
  DataModule1.baza_h.Filter := '(zapis>0) and (otd=' + inttostr(lotd) +
    ') and ( ' + filtr + ' )';
  DataModule1.baza_h.Filtered := True;
  Edit2.Text := inttostr(DataModule1.baza_h.RecordCount);
  while not DataModule1.baza_h.Eof do
  begin
    if DataModule1.baza_h.FieldByName('zapis').Asinteger = 1 // перекидываем
    then
    begin
      cod := DataModule1.baza_h.FieldByName('pin').Asinteger;
      // запомнили код абитуриента
      papa := '';
      mama := '';
      papajob := '';
      mamajob := '';
      // добавление в acc
      fam := trim(DataModule1.baza_h.FieldByName('fam').AsString); // фамилия
      name := trim(DataModule1.baza_h.FieldByName('name').AsString); // имя
      vname := trim(DataModule1.baza_h.FieldByName('otch').AsString);
      // отчество
      gr := grup; // группа
      sost := 1; // учится
      if DataModule1.baza_h.FieldByName('kat').Asinteger = 6
      // по контракту   абитура
      then
      begin
        stat := 2; // контракт    деканат
        event := 3 // зачисен на контракт
      end
      else
      begin
        stat := 1; // бюджет     деканат
        event := 2; // зачисен на бюджет
      end;
      god := yearof(date);
      // подсчет входного рейтинга как среднее за ЕГЭ
      if (fak = 98) or (fak = 57) then
      begin
        DataModule1.svidet.Filter := 'pin=' + inttostr(cod) + ' and ' + filtege;
        DataModule1.svidet.Filtered := True;
        DataModule1.svidet.first;
        sum := 0;
        for i := 1 to DataModule1.svidet.RecordCount do
        begin
          sum := sum + DataModule1.svidet.FieldByName('oc').asfloat;
          DataModule1.svidet.next;
        end;
        reiting := round(sum / 3); // среднее по трем ЕГЭ
      end;
      // № личного дела - он же № зачетки
      nld := trim(DataModule1.baza_h.FieldByName('lichdj').AsString) +
        trim(DataModule1.baza_h.FieldByName('lichd').AsString);
      // анализ слушатель или нет
      if DataModule1.baza_h.FieldByName('sl').Asinteger = 1 // cлушатель
      then
        sl := 1
      else
        sl := 0;
      // выполнение запроса
      DataModule1.Query1.SQL.Clear;
      s1 := 'insert  into acc (fam,name,vname,spgrup,spotd,spfak,spspec,kurs,spsost,spstatus,godpr,r_vxod,ls,zachbook,priz,pro,sl,deperson) values ('
        + '''' + fam + '''' + ',' + '''' + name + '''';
      s2 := ',' + '''' + vname + '''' + ',' + inttostr(gr) + ',' + inttostr(otd)
        + ',' + inttostr(fak) + ',' + inttostr(spec) + ',1,' + inttostr(sost) +
        ',' + inttostr(stat) + ',';
      s3 := inttostr(god) + ',' + inttostr(reiting) + ',' + '''' + nld + '''' +
        ',' + '''' + nld + '''' + ',' + '''' + '*' + '''' + ',' + '''' + '00' +
        '''' + ',' + inttostr(sl) + ',0)';
      DataModule1.Query1.SQL.Add(s1 + s2 + s3);
      DataModule1.Query1.ExecSQL; // добавляем в acc
      DataModule1.Table_w1.Refresh;
      DataModule1.Table_w1.Last;
      pinacc := DataModule1.Table_w1.FieldByName('pin').Asinteger;

      // добавление в move
      DataModule1.Query1.SQL.Clear;
      if datpr.Text <> '' then
        str_d := inttostr(yearof(strtodate(datpr.Text))) + '-' +
          inttostr(monthof(strtodate(datpr.Text))) + '-' +
          inttostr(dayof(strtodate(datpr.Text)));
      str_f := inttostr(yearof(strtodate(datpr.Text))) + '-09-01';
      s1 := 'insert  into moves (acc,spevent,mvnum,mvdate,spgrup,spotd,spfak,spspec,usrwrite,priz,kurs,mvfakt,sl) values (';
      s2 := inttostr(pinacc) + ',' + inttostr(event) + ',' + '''' + nompr.Text +
        '''' + ',' + '''' + str_d + '''' + ',' + inttostr(gr) + ',' +
        inttostr(otd) + ',' + inttostr(fak) + ',' + inttostr(spec) + ',12,' +
        '''' + '*' + '''' + ',1,' + '''' + str_f + '''' + ',' +
        inttostr(sl) + ')';
      DataModule1.Query1.SQL.Add(s1 + s2);
      DataModule1.Query1.ExecSQL; // добавляем в moves
      DataModule1.Table_w6.Refresh;

      // добавление в acckadr
      DataModule1.Query1.SQL.Clear;
      citiz := DataModule1.baza_h.FieldByName('graj').Asinteger; // гражданство
      datr := trim(DataModule1.baza_h.FieldByName('date_ro').AsString);
      // дата рождения
      if datr <> '' then
        datr := inttostr(yearof(strtodate(datr))) + '-' +
          inttostr(monthof(strtodate(datr))) + '-' +
          inttostr(dayof(strtodate(datr)));
      // место рождения
      mesr := '';
      m1 := '';
      m2 := '';
      m3 := '';
      m4 := '';
      if DataModule1.baza_h.FieldByName('mregion').AsString = '' then
      // не заносили ручками
      begin
        if DataModule1.baza_h.FieldByName('mregion1').Asinteger <> 0 then
        // регион
          if not DataModule1.geography.FindKey
            ([DataModule1.baza_h.FieldByName('mregion1').Asinteger]) then
            m1 := ''
          else
            m1 := trim(DataModule1.geography.FieldByName('name').AsString);

        if DataModule1.baza_h.FieldByName('mregion2').Asinteger <> 0 then
        // район
          if not DataModule1.geography.FindKey
            ([DataModule1.baza_h.FieldByName('mregion2').Asinteger]) then
            m2 := ''
          else
            m2 := trim(DataModule1.geography.FieldByName('name').AsString);

        if DataModule1.baza_h.FieldByName('mregion3').Asinteger <> 0 then
        // город
          if not DataModule1.geography.FindKey
            ([DataModule1.baza_h.FieldByName('mregion3').Asinteger]) then
            m3 := ''
          else
            m3 := trim(DataModule1.geography.FieldByName('name').AsString);

        if DataModule1.baza_h.FieldByName('mregion4').Asinteger <> 0 then
        // населен.пункт
          if not DataModule1.geography.FindKey
            ([DataModule1.baza_h.FieldByName('mregion4').Asinteger]) then
            m4 := ''
          else
            m4 := trim(DataModule1.geography.FieldByName('name').AsString);
        mesr := '';
        if m1 = '' then
          mesr := mesr
        else
          mesr := mesr + m1;
        if m2 = '' then
          mesr := mesr
        else
          mesr := mesr + ',' + m2;
        if m3 = '' then
          mesr := mesr
        else
          mesr := mesr + ',' + m3;
        if m4 = '' then
          mesr := mesr
        else
          mesr := mesr + ',' + m4;
        // mesr:=copy(m1+','+m2+','+m3+','+m4,1,79);
      end
      else
        mesr := trim(DataModule1.baza_h.FieldByName('mregion').AsString);

      ksiva := DataModule1.baza_h.FieldByName('tip_lich').Asinteger;
      // тип док-та личности
      pnum := trim(DataModule1.baza_h.FieldByName('passer').AsString) + ' ' +
        trim(DataModule1.baza_h.FieldByName('pasnom').AsString);
      // паспорт серия,№
      pwho := copy(trim(DataModule1.baza_h.FieldByName('kempasport').AsString),
        1, 39); // паспорт выдан
      pdate := trim(DataModule1.baza_h.FieldByName('datpasport').AsString);
      // паспорт когда
      if pdate <> '' then
        pdate := inttostr(yearof(strtodate(pdate))) + '-' +
          inttostr(monthof(strtodate(pdate))) + '-' +
          inttostr(dayof(strtodate(pdate)));
      // адрес
      adr := '';
      m1 := '';
      m2 := '';
      m3 := '';
      m4 := '';
      ar1 := 0;
      ar2 := 0;
      ar3 := 0;
      ar4 := 0;
      aul := '';
      if DataModule1.baza_h.FieldByName('aregion1').Asinteger <> 0 then
      // регион
        if not DataModule1.geography.FindKey
          ([DataModule1.baza_h.FieldByName('aregion1').Asinteger]) then
          m1 := ''
        else
        begin
          m1 := trim(DataModule1.geography.FieldByName('name').AsString);
          ar1 := DataModule1.baza_h.FieldByName('aregion1').Asinteger;
        end;
      if DataModule1.baza_h.FieldByName('aregion2').Asinteger <> 0 then // район
        if not DataModule1.geography.FindKey
          ([DataModule1.baza_h.FieldByName('aregion2').Asinteger]) then
          m2 := ''
        else
        begin
          m2 := trim(DataModule1.geography.FieldByName('name').AsString);
          ar2 := DataModule1.baza_h.FieldByName('aregion2').Asinteger;
        end;
      if DataModule1.baza_h.FieldByName('aregion3').Asinteger <> 0 then // город
        if not DataModule1.geography.FindKey
          ([DataModule1.baza_h.FieldByName('aregion3').Asinteger]) then
          m3 := ''
        else
        begin
          m3 := trim(DataModule1.geography.FieldByName('name').AsString);
          ar3 := DataModule1.baza_h.FieldByName('aregion3').Asinteger;
        end;
      if DataModule1.baza_h.FieldByName('aregion4').Asinteger <> 0 then
      // населен.пункт
        if not DataModule1.geography.FindKey
          ([DataModule1.baza_h.FieldByName('aregion4').Asinteger]) then
          m4 := ''
        else
        begin
          m4 := trim(DataModule1.geography.FieldByName('name').AsString);
          ar4 := DataModule1.baza_h.FieldByName('aregion4').Asinteger;
        end;

      aul := trim(DataModule1.baza_h.FieldByName('auls').AsString) + '.' +
        trim(DataModule1.baza_h.FieldByName('aul').AsString);

      mesr := '';
      if m1 = '' then
        mesr := mesr
      else
        mesr := mesr + m1;
      if m2 = '' then
        mesr := mesr
      else
        mesr := mesr + ',' + m2;
      if m3 = '' then
        mesr := mesr
      else
        mesr := mesr + ',' + m3;
      if m4 = '' then
        mesr := mesr
      else
        mesr := mesr + ',' + m4;

      if DataModule1.baza_h.FieldByName('akva').AsString = '' then
        adr := copy(mesr + ',' + trim(DataModule1.baza_h.FieldByName('auls')
          .AsString) + '.' + trim(DataModule1.baza_h.FieldByName('aul')
          .AsString) + ',' + trim(DataModule1.baza_h.FieldByName('adom')
          .AsString), 1, 79)
      else
        adr := copy(mesr + ',' + trim(DataModule1.baza_h.FieldByName('auls')
          .AsString) + '.' + trim(DataModule1.baza_h.FieldByName('aul')
          .AsString) + ',' + trim(DataModule1.baza_h.FieldByName('adom')
          .AsString) + ',' + trim(DataModule1.baza_h.FieldByName('akva')
          .AsString), 1, 79);

      // adr:=copy(m1+','+m2+','+m3+','+m4+','+trim(datamodule1.baza_h.FieldByName('auls').AsString)+'.'+trim(datamodule1.baza_h.FieldByName('aul').AsString)+','+trim(datamodule1.baza_h.FieldByName('adom').AsString)+','+trim(datamodule1.baza_h.FieldByName('akva').AsString),1,79);

      phone := trim(DataModule1.baza_h.FieldByName('phone').AsString);
      // телефон
      mphone := trim(DataModule1.baza_h.FieldByName('mobtel').AsString);
      // мобильный телефон

      sch := DataModule1.baza_h.FieldByName('coduch').Asinteger;
      // тип уч.заведения
      schpr := ''; // № уч.заведения
      schgod := DataModule1.baza_h.FieldByName('date_uh1').Asinteger;
      // год окончания уч.заведения

      hostel := DataModule1.baza_h.FieldByName('obsh').Asinteger; // общежитие
      sex := DataModule1.baza_h.FieldByName('pol').Asinteger; // пол
      // marry:=datamodule1.baza_h.FieldByName('sem_pol').Asinteger; //сем.положение

      soc := DataModule1.baza_h.FieldByName('soc_pol').Asinteger;
      // соц.положение
      lang := DataModule1.baza_h.FieldByName('injaz').Asinteger; // ин.яз
      kat := DataModule1.baza_h.FieldByName('kat').Asinteger; // категория

      mesj := trim(DataModule1.baza_h.FieldByName('mestjob').AsString);
      // место работы
      dolj := trim(DataModule1.baza_h.FieldByName('doljn').AsString);
      // должность работы
      telj := trim(DataModule1.baza_h.FieldByName('teljob').AsString);
      // телефон работы
      ksiva := DataModule1.baza_h.FieldByName('tip_lich').Asinteger;
      // тип док-та личности

      papa := trim(DataModule1.baza_h.FieldByName('papa').AsString); // отец
      papajob := trim(DataModule1.baza_h.FieldByName('papajob').AsString);
      // отец работа и местожительство
      mama := trim(DataModule1.baza_h.FieldByName('mama').AsString); // мама
      mamajob := trim(DataModule1.baza_h.FieldByName('mamajob').AsString);
      // мама работа и местожительство

      DataModule1.Query1.SQL.Clear;
      s1 := 'insert  into acckadr (acc,spcitiz,dat_ro,mes_ro,spksiva,pasnum,paswho,pasdate,address,phone,spschool,';
      s2 := 'schoolgod,hostel,sex,spsoc,splang,spkat,mesjob,doljob,teljob,priz,schoolpr,mobphone,aregion1,aregion2,aregion3,aregion4,aul,papa,mama,papajob,mamajob) values ('
        + inttostr(pinacc) + ',';
      s3 := inttostr(citiz) + ',' + '''' + datr + '''' + ',' + '''' + mesr +
        '''' + ',' + inttostr(ksiva) + ',' + '''' + pnum + '''' + ',' + '''' +
        pwho + '''' + ',' + '''' + pdate + '''' + ',';
      s4 := '''' + adr + '''' + ',' + '''' + phone + '''' + ',' + inttostr(sch)
        + ',' + inttostr(schgod) + ',' + '''' + inttostr(hostel) + '''' +
        ',' + '''';
      s5 := inttostr(sex) + '''' + ',' + inttostr(soc) + ',' + inttostr(lang) +
        ',' + inttostr(kat) + ',' + '''' + mesj + '''' + ',' + '''' + dolj +
        '''' + ',';
      s6 := '''' + telj + '''' + ',' + '''' + '1' + '''' + ',' + '''' + schpr +
        '''' + ',' + '''' + mphone + '''' + ',' + inttostr(ar1) + ',' +
        inttostr(ar2) + ',' + inttostr(ar3) + ',' + inttostr(ar4) + ',' + '''' +
        aul + '''' + ',';
      s7 := '''' + papa + '''' + ',' + '''' + mama + '''' + ',' + '''' + papajob
        + '''' + ',' + '''' + mamajob + '''' + ')';
      DataModule1.Query1.SQL.Add(s1 + s2 + s3 + s4 + s5 + s6 + s7);
      DataModule1.Query1.ExecSQL; // добавляем в acckadr
      DataModule1.Table_w2.Refresh;

      // добавление в accwar
      { DataModule1.Query1.SQL.Clear;
        mil := datamodule1.baza_h.FieldByName('otn_sl').Asinteger;

        if mil = 1 then // военнообязанный
        pr := '1'
        else
        pr :='0';
        tip:= datamodule1.baza_h.FieldByName('tip_voen').AsInteger;
        if tip>1 then  //не паспорт
        begin
        miln :=trim(datamodule1.baza_h.FieldByName('nomvoen').Asstring);  // № воен.док-та
        mildate :=trim(datamodule1.baza_h.FieldByName('datvoen').Asstring); // дата выдачи
        if mildate <> '' then
        mildate:=inttostr(yearof(strtodate(mildate)))+'-'+ inttostr(monthof(strtodate(mildate)))+'-'+inttostr(dayof(strtodate(mildate)));
        milwho :=trim(datamodule1.baza_h.FieldByName('kemvn').Asstring); // кем выдан
        r1:=datamodule1.baza_h.FieldByName('kemv1').AsInteger; //регион
        r2:=datamodule1.baza_h.FieldByName('kemv2').AsInteger; // район
        r3:=datamodule1.baza_h.FieldByName('kemv3').AsInteger; //город

        s1 :='insert  into accwar (acc,spmil1,milnum,mildate,milwho,priz,spreg1,spreg2,spreg3,tipdoc) values ('+inttostr(pinacc)+','+inttostr(mil)+','+''''+miln+''''+',';
        s2 :=''''+mildate+''''+','+''''+milwho+''''+','+''''+pr+''''+','+inttostr(r1)+','+inttostr(r2)+','+inttostr(r3)+','+inttostr(tip)+')';
        end
        else
        begin
        miln :='';
        milwho :='';
        s1 :='insert  into accwar (acc,spmil1,milnum,mildate,milwho,priz) values ('+inttostr(pinacc)+','+inttostr(mil)+','+''''+miln+''''+',';
        s2 :='Null,'+''''+milwho+''''+','+''''+pr+''''+')';
        end;
        DataModule1.Query1.SQL.Add(s1+s2);
        DataModule1.Query1.ExecSQL;        //добавляем в accwar
        DataModule1.table_w3.Refresh; }

      // запись pin в baza_h

      DataModule1.baza_h.Edit;
      DataModule1.baza_h.FieldByName('zapis').Asinteger := pinacc;
      DataModule1.baza_h.Post;

      if stat = 2 then
      begin
        /// /////////////////////////////////////
        // ************ Из ПЛАТНИКОВ ***********//
        nachislenie(pinacc, 'notdel');
        abitu_transfer(pinacc, DataModule1.baza_h.FieldByName('pin').Asinteger,
          DataModule1.baza_h.FieldByName('zach').Asinteger, otd, fak, spec);
      end;
      /// //////////////////////////////////////
    end;
    DataModule1.baza_h.next;
  end;
  showmessage('Передача данных прошла успешно!');
  DataModule1.geography.close;
  kolv := 0;
  DataModule1.baza_h.Filtered := False;
  DataModule1.baza_h.Filter := '(otd=' + inttostr(lotd) + ') and ( ' +
    filtr + ' )';
  DataModule1.baza_h.Filtered := True;

end;

procedure Tabitudn.DBGrid1CellClick(Column: TColumn);
begin
  if DataModule1.baza_h.FieldByName('zapis').Asinteger > 1 then
    showmessage('"Этот абитуриент уже передан в деканат!')
  else
  begin
    DataModule1.baza_h.Edit;
    if DataModule1.baza_h.FieldByName('zapis').Asinteger = 0 then
    begin
      DataModule1.baza_h.FieldByName('pr').AsString := '*';
      DataModule1.baza_h.FieldByName('zapis').Asinteger := 1;
      kolv := kolv + 1;
    end
    else
    begin
      DataModule1.baza_h.FieldByName('pr').AsString := '';
      DataModule1.baza_h.FieldByName('zapis').Asinteger := 0;
      kolv := kolv - 1;
    end;
    DataModule1.baza_h.Refresh;
    Edit2.Text := inttostr(kolv); // кол-во выделенных
  end;
end;

procedure Tabitudn.DBLookupComboBox1Click(Sender: TObject);
var
  k: integer;
begin
  if fak = 0 Then
  begin
    showmessage('Выберите сначало факультет! ');
    exit;
  end; // не выбран факультет
  grup := 0;
  kolv := 0;
  spec := DataModule1.Table_w36.FieldByName('spspec').Asinteger;
  sprspec := DataModule1.Table_w36.FieldByName('shifr').AsString;
  DataModule1.Table_w37.Filtered := False;

  filtr := '';
  // в приемке отдельно ФССО
  if otd = 10 then // ФССО
  begin
    case fak of
      57, 98:
        DataModule1.snspec.Filter := 'sprotd=6 and sprfak=' + '''' + '011' +
          '''' + ' and sprspec=' + '''' + sprspec + '''';
      65:
        DataModule1.snspec.Filter := 'sprotd=7 and sprfak=' + '''' + '011' +
          '''' + ' and sprspec=' + '''' + sprspec + '''';
    end;
  end
  else
  begin
    DataModule1.snspec.Filter := 'sprotd=' + inttostr(otd) + ' and sprfak=' +
      '''' + sprfak + '''' + ' and sprspec=' + '''' + sprspec + '''';
  end;

  DataModule1.Table_w37.Filter := 'priz=1 and spotd=' + inttostr(otd) +
    ' and spfak=' + inttostr(fak) + ' and spspec=' + inttostr(spec);
  DataModule1.Table_w37.Filtered := True;
  DataModule1.snspec.Filtered := True;
  DataModule1.snspec.first;
  if DataModule1.snspec.RecordCount = 0 then
  begin
    showmessage('На данную специальность приема не было!');
    exit;
  end;
  for k := 1 to DataModule1.snspec.RecordCount do
  begin
    if k = DataModule1.snspec.RecordCount then
    // последнее условие   убрать последний ' or'
      filtr := filtr + '(zach =' +
        inttostr(DataModule1.snspec.FieldByName('pin').Asinteger) + ')'
    else
    begin
      filtr := filtr + '(zach =' +
        inttostr(DataModule1.snspec.FieldByName('pin').Asinteger) + ') or';
      DataModule1.snspec.next;
    end;
  end;
  DataModule1.snspec.Filtered := False;
  DataModule1.baza_h.Filtered := False;
  if otd = 10 then
  begin
    if fak = 65 then
      DataModule1.baza_h.Filter := 'otd=7 and ( ' + filtr + ' )'
    else
      DataModule1.baza_h.Filter := 'otd=6 and ( ' + filtr + ' )';
  end
  else
    DataModule1.baza_h.Filter := 'otd=' + inttostr(otd) + ' and ( ' +
      filtr + ' )';
  DataModule1.baza_h.Filtered := True;
  Edit1.Text := inttostr(DataModule1.baza_h.RecordCount);
end;

procedure Tabitudn.DBLookupComboBox2Click(Sender: TObject);
begin
  fak := DataModule1.Table_w34.FieldByName('pin').Asinteger;
  spec := 0;
  grup := 0;
  kolv := 0;
  otd := 0;
  case fak of
    57:
      begin
        sprfak := '09';
        filtege := '(pr=9 or pr=10 or pr=12)';
      end; // ГЭФ  матем, русск, общ-во
    65:
      sprfak := '010'; // ФЗФО
    98:
      begin
        sprfak := '60';
        filtege := '(pr=9 or pr=10 or pr=8)';
      end; // ТФ  матем, русск, физика
  end;
  // 33: sprfak:='06';  // ТФ
  // 36: sprfak:='07';  //АТФ
  // 37: sprfak:='08';  //ЭТФ
  // 66: sprfak:='011';  //ФССО

end;

procedure Tabitudn.DBLookupComboBox3Click(Sender: TObject);
begin
  grup := DataModule1.Table_w37.FieldByName('pin').Asinteger;

end;

procedure Tabitudn.BitBtn3Click(Sender: TObject);
var
  adr, m1, m2, m3, m4, mesr, s1, aul, phone, mphone: string;
  codacc, kol: integer;
  ar1, ar2, ar3, ar4: integer;

begin
  DataModule1.baza_h.Filter := '(zapis>1)';
  DataModule1.baza_h.Filtered := True;
  DataModule1.baza_h.first;
  kol := 0;
  // DataModule1.Table_w2.IndexFieldNames:='idxkadacc';
  // DataModule1.geography.IndexName :='PRIMARY';
  // DataModule1.geography.Open;
  while not DataModule1.baza_h.Eof do
  begin
    codacc := DataModule1.baza_h.FieldByName('zapis').Asinteger;
    // pin абит-та в acc
    papa := '';
    mama := '';
    papajob := '';
    mamajob := '';
    DataModule1.Query1.SQL.Clear;
    if not DataModule1.Table_w2.FindKey([codacc]) then // поиск в acckadr
      showmessage('Студент не найден(pin=' + inttostr(codacc) + ')')
    else
    begin
      kol := kol + 1;
      papa := trim(DataModule1.baza_h.FieldByName('papa').AsString); // отец
      papajob := trim(DataModule1.baza_h.FieldByName('papajob').AsString);
      // отец работа и местожительство
      mama := trim(DataModule1.baza_h.FieldByName('mama').AsString); // мама
      mamajob := trim(DataModule1.baza_h.FieldByName('mamajob').AsString);
      // мама работа и местожительство
      s1 := 'update acckadr set papa=' + '''' + papa + '''' + ', mama=' + '''' +
        mama + '''' + ', papajob=' + '''' + papajob + '''' + ', mamajob=' + ''''
        + mamajob + '''' + ' where acc=' + inttostr(codacc);

      DataModule1.Query1.SQL.Add(s1);
      DataModule1.Query1.ExecSQL; // изменяем  acckadr
      DataModule1.Table_w2.Refresh;
    end;
    DataModule1.baza_h.next;
  end;
  DataModule1.geography.close;
  DataModule1.baza_h.Filtered := False;
end;

procedure Tabitudn.DBLookupComboBox4Click(Sender: TObject);
begin
  otd := DataModule1.Table_w33.FieldByName('pin').Asinteger;
  spec := 0;
  grup := 0;
  kolv := 0;
  DataModule1.Table_w36.Filtered := False;
  DataModule1.Table_w36.Filter := 'priz=1 and spotd=' + inttostr(otd) +
    ' and spfak=' + inttostr(fak);
  DataModule1.Table_w36.Filtered := True;
end;

end.
