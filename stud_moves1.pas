unit stud_moves1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Spin,
  DB, DateUtils;

type
  Tacc_moves = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    SpinEdit1: TSpinEdit;
    Label13: TLabel;
    Edit7: TEdit;
    CheckBox1: TCheckBox;
    Label14: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_moves: Tacc_moves;
  old_gruppa, old_fak, old_fo, old_spec, old_kurs, oldsl, old_event: integer;
  // старые группа,фо,фак-т,спец-ть,курс,статус слушателя, событие приказа
  gruppa, fak, fo, spec, kurs: integer; // новые
  f_spec, f_gr: string; // фильтры для выбора
  sost, status, oldstatus, event, act_event: integer;
  mov_pin: longint; // pin приказа
  sql1, sql2, sql3, osn: string;
  oldlgota, lgota: integer; // льгота гос.обеспечения 1-есть, 0-нет

implementation

uses main1, stud_acc1, stud_del1, stud_moves4, umy_proc;
{$R *.dfm}

procedure Tacc_moves.FormCreate(Sender: TObject);
begin
  DataModule1.Table_w33.Open;
  DataModule1.Table_w34.Open;
  DataModule1.Table_w36.Open;
  DataModule1.Table_w26.IndexFieldNames := 'name';
  // DataModule1.Table_w37.Open;

end;

procedure Tacc_moves.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w33.Close;
  DataModule1.Table_w34.Close;
  DataModule1.Table_w36.Close;
  DataModule1.Table_w6.Filter := 'acc=' + inttostr(stud_pin);
  DataModule1.Table_w6.Filtered := True;
  DataModule1.Table_w26.Filtered := False;
  DataModule1.Table_w33.Filtered := False;
  DataModule1.Table_w34.Filtered := False;
  DataModule1.Table_w36.Filtered := False;
  DataModule1.Table_w37.Filtered := False;
  if pp = 1 // возврат в список студентов
  then
    stud_acc.Enabled := True;
  if pp = 2 // возврат в анализ по году поступления
  then
    stud_moves.Enabled := True;
end;

procedure Tacc_moves.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w1.Cancel;
  DataModule1.Table_w6.Cancel;
  Close;
end;

procedure Tacc_moves.FormActivate(Sender: TObject);
begin

  act_event := -1;
  if DataModule1.Table_w1.FieldByName('sl').AsInteger = 1 then
    CheckBox1.Checked := True
  else
    CheckBox1.Checked := False; // слушатель-1
  If (act = 2) or (act = 3) then // редактирование
  begin
    mov_pin := DataModule1.Table_w6.FieldByName('pin').AsInteger;
    Edit1.Text := DataModule1.Table_w6.FieldByName('mvnum').AsString;
    Edit3.Text := DataModule1.Table_w6.FieldByName('mvdate').AsString;
    Edit7.Text := DataModule1.Table_w6.FieldByName('mvfakt').AsString;
    Edit4.Text := DataModule1.Table_w6.FieldByName('mvosn').AsString;
    gruppa := DataModule1.Table_w6.FieldByName('spgrup').AsInteger;
    fo := DataModule1.Table_w6.FieldByName('spotd').AsInteger;
    fak := DataModule1.Table_w6.FieldByName('spfak').AsInteger;
    spec := DataModule1.Table_w6.FieldByName('spspec').AsInteger;
    SpinEdit1.Value := DataModule1.Table_w6.FieldByName('kurs').AsInteger;
    sost := DataModule1.Table_w1.FieldByName('spsost').AsInteger;
    status := DataModule1.Table_w1.FieldByName('spstatus').AsInteger;
    oldstatus := DataModule1.Table_w1.FieldByName('spstatus').AsInteger;
    oldsl := DataModule1.Table_w6.FieldByName('sl').AsInteger;
    event := DataModule1.Table_w6.FieldByName('spevent').AsInteger;
    old_event := DataModule1.Table_w6.FieldByName('spevent').AsInteger;
    kurs := DataModule1.Table_w6.FieldByName('kurs').AsInteger;
    act_event := DataModule1.Table_w6.FieldByName('act').AsInteger;
    oldlgota := DataModule1.Table_w6.FieldByName('lgota').AsInteger;
    DBLookupComboBox1.DataSource := DataModule1.DataSource_w6;
    DBLookupComboBox1.DataField := 'spevent';
    DBLookupComboBox2.DataSource := DataModule1.DataSource_w6;
    DBLookupComboBox2.DataField := 'spfak';
    DBLookupComboBox3.DataSource := DataModule1.DataSource_w6;
    DBLookupComboBox3.DataField := 'spotd';
    DBLookupComboBox4.DataSource := DataModule1.DataSource_w6;
    DBLookupComboBox4.DataField := 'spspec';
    DBLookupComboBox5.DataSource := DataModule1.DataSource_w6;
    DBLookupComboBox5.DataField := 'spgrup';
    // фильтры
    DataModule1.Table_w33.Filter := 'priz=''1'''; // для формы обучения
    DataModule1.Table_w33.Filtered := True;
    DataModule1.Table_w36.Filter := 'priz=''1'' and spfak=' + inttostr(fak) +
      ' and spotd=' + inttostr(fo);
    DataModule1.Table_w36.Filtered := True; // для связки
    DataModule1.Table_w37.Filter := 'spfak=' + inttostr(fak) + ' and spotd=' +
      inttostr(fo) + ' and spspec=' + inttostr(spec);
    DataModule1.Table_w37.Filtered := True; // для группы

  end;
  If act = 1 then // добавление
  begin
    Edit3.Text := datetostr(date());
    Edit7.Text := Edit3.Text;
    gruppa := DataModule1.Table_w1.FieldByName('spgrup').AsInteger;
    fo := DataModule1.Table_w1.FieldByName('spotd').AsInteger;
    fak := DataModule1.Table_w1.FieldByName('spfak').AsInteger;
    spec := DataModule1.Table_w1.FieldByName('spspec').AsInteger;
    SpinEdit1.Value := DataModule1.Table_w1.FieldByName('kurs').AsInteger;
    kurs := DataModule1.Table_w1.FieldByName('kurs').AsInteger;
    sost := DataModule1.Table_w1.FieldByName('spsost').AsInteger;
    status := DataModule1.Table_w1.FieldByName('spstatus').AsInteger;
    oldstatus := DataModule1.Table_w1.FieldByName('spstatus').AsInteger;
    oldsl := DataModule1.Table_w1.FieldByName('sl').AsInteger;
    oldlgota := DataModule1.Table_w1.FieldByName('lgota').AsInteger;
  end;
  Edit2.Text := stud_fio;
  Edit2.ReadOnly := True;
  Edit5.Text := stud_ls;
  Edit5.ReadOnly := True;
  Edit6.Text := stud_zb;
  Edit6.ReadOnly := True;

  { old_gruppa := DataModule1.Table_w1.fieldByname('spgrup').AsInteger;
    old_fo := DataModule1.Table_w1.fieldByname('spotd').AsInteger;
    old_fak := DataModule1.Table_w1.fieldByname('spfak').AsInteger;
    old_spec:= DataModule1.Table_w1.fieldByname('spspec').AsInteger;
    old_kurs := DataModule1.Table_w1.fieldByname('kurs').AsInteger; }
  DataModule1.Table_w34.Filter := 'pinrod=0 and priz=''1''';
  DataModule1.Table_w34.Filtered := True;
  DataModule1.Table_w26.Filter := 'priz=''1''';
  DataModule1.Table_w26.Filtered := True;

end;

procedure Tacc_moves.DBLookupComboBox2Click(Sender: TObject);
begin
  fak := DataModule1.Table_w34.FieldByName('pin').AsInteger;
  DataModule1.Table_w33.Filter := 'priz=''1''';
  DataModule1.Table_w33.Filtered := True;
  DataModule1.Table_w6.Refresh;
end;

procedure Tacc_moves.DBLookupComboBox3Click(Sender: TObject);
begin
  fo := DataModule1.Table_w33.FieldByName('pin').AsInteger;
  f_spec := 'priz=''1'' and spfak=' + inttostr(fak);
  DataModule1.Table_w36.Filter := f_spec;
  DataModule1.Table_w36.Filtered := True;
  DataModule1.Table_w6.Refresh;
end;

procedure Tacc_moves.DBLookupComboBox4Click(Sender: TObject);
begin
  spec := DataModule1.Table_w36.FieldByName('spspec').AsInteger;
  f_gr := 'spfak=' + inttostr(fak) +
    ' and spspec=' + inttostr(spec);
  DataModule1.Table_w37.Filter := f_gr;
  DataModule1.Table_w37.Filtered := True;
  DataModule1.Table_w6.Refresh;
end;

procedure Tacc_moves.DBLookupComboBox1Click(Sender: TObject);
begin
  event := DataModule1.Table_w26.FieldByName('pin').AsInteger;
  sost := DataModule1.Table_w26.FieldByName('spsost').AsInteger;
  status := DataModule1.Table_w26.FieldByName('spstatus').AsInteger;
  act_event := DataModule1.Table_w26.FieldByName('act').AsInteger;
  lgota := DataModule1.Table_w26.FieldByName('lgota').AsInteger;
  DataModule1.Table_w6.Refresh;
end;

procedure Tacc_moves.BitBtn1Click(Sender: TObject);
var
  str_f, str_st: string;
  obuch: integer; // статус студента может быть бюджет(1) или контракт(2)
  accsl, movessl: integer;
  // состояние текущее и предыдущее 0-студент, 1-слушатель, 2-был слушателем
begin
  if Edit1.Text = '' then
  begin
    showmessage('Заполните поле Номер приказа !');
    exit;
  end;
  if Edit3.Text = '' then
  begin
    showmessage('Заполните поле Дата приказа !');
    exit;
  end;

  if (act = 1) or (act = 2) then
  // добавление нового приказа или изменение последнего приказа
  begin
    DataModule1.Query1.SQL.Clear;
    sql1 := 'update acc set spgrup=' + inttostr(gruppa) + ',spotd=' +
      inttostr(fo) + ',spfak=' + inttostr(fak);
    sql2 := ',spspec=' + inttostr(spec) + ',kurs=' + inttostr(kurs) + ',spsost='
      + inttostr(sost) + ',spstatus=' + inttostr(status);

    movessl := oldsl;
    if oldsl = 0 then
    begin
      if CheckBox1.Checked = False then
        accsl := 0
      else
        accsl := 1;
    end
    else if oldsl = 1 then
    begin
      if CheckBox1.Checked = False then
        accsl := 2
      else
        accsl := 1;
    end
    else
    begin
      if CheckBox1.Checked = False then
        accsl := 2
      else
        accsl := 1;
    end;

    if (accsl = 1) or (DataModule1.Table_w1.FieldByName('lgota').AsInteger = 0)
    // студент либо слушатель либо не льготник
    then
      sql3 := ',sl=' + inttostr(accsl) + ',lgota=0 where pin=' +
        inttostr(stud_pin)
    else
      sql3 := ',sl=' + inttostr(accsl) + ',lgota=' + inttostr(lgota) +
        ' where pin=' + inttostr(stud_pin);

    if (old_event = event) and (event = 54) then
      sql3 := ',sl=' + inttostr(accsl) + ',lgota=1 where pin=' +
        inttostr(stud_pin) // зачислен на полное гос.обеспечение
    else if (old_event = event) and (event = 55) then
      sql3 := ',sl=' + inttostr(accsl) + ',lgota=0 where pin=' +
        inttostr(stud_pin)
    else
      sql3 := ',sl=' + inttostr(accsl) + ' where pin=' + inttostr(stud_pin);

    DataModule1.Query1.SQL.Add(sql1 + sql2 + sql3);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w1.Refresh;
    stud_gr := trim(DataModule1.Table_w1.FieldByName('gruppa').AsString);
    stud_acc.Edit16.Text := stud_gr;
  end;
  DataModule1.Query2.SQL.Clear;
  if trim(Edit3.Text) <> '' then // дата приказа
    str_d := '''' + inttostr(yearof(strtodate(Edit3.Text))) + '-' +
      inttostr(monthof(strtodate(Edit3.Text))) + '-' +
      inttostr(dayof(strtodate(Edit3.Text))) + ''''
  else
    str_d := 'Null';
  if trim(Edit7.Text) <> '' then // дата фактическая
    str_f := '''' + inttostr(yearof(strtodate(Edit7.Text))) + '-' +
      inttostr(monthof(strtodate(Edit7.Text))) + '-' +
      inttostr(dayof(strtodate(Edit7.Text))) + ''''
  else
    str_f := 'Null';
  If Edit4.Text = '' then
    osn := 'Null'
  else
    osn := '''' + Edit4.Text + '''';
  if act_event = 1 // начинает учиться
  then
    obuch := status // status берем из spevent
  else // status берем из запроса
  begin
    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add
      ('select spevent.spstatus,moves.acc,spevent.act from moves,spevent where moves.acc='
      + inttostr(stud_pin) +
      ' and moves.spevent=spevent.pin and spevent.act=1 order by moves.mvfakt');
    DataModule1.Query1.ExecSQL;
    DataModule1.Query1.Open;
    DataModule1.Query1.Last;
    obuch := DataModule1.Query1.FieldByName('spstatus').AsInteger;
  end;
  If (act = 2) or (act = 3) then // редактирование
  begin

    DataModule1.Query2.SQL.Clear;
    sql1 := 'update moves set spevent=' + inttostr(event) + ',mvnum=' + '''' +
      Edit1.Text + '''' + ',mvosn=' + osn;
    sql2 := ',spgrup=' + inttostr(gruppa) + ',spotd=' + inttostr(fo) + ',spfak='
      + inttostr(fak) + ',spspec=' + inttostr(spec) + ',kurs=' + inttostr(kurs);
    sql3 := ',mvdate=' + str_d + ',mvfakt=' + str_f + ',acc=' +
      inttostr(stud_pin) + ',spstatus=' + inttostr(obuch) + ',sl=' +
      inttostr(oldsl) + ',lgota=' + inttostr(oldlgota) +
      ',usrwrite=12 where pin=' + inttostr(mov_pin);
    DataModule1.Query2.SQL.Add(sql1 + sql2 + sql3);
  end;
  If act = 1 then // добавление
  begin

    DataModule1.Query2.SQL.Clear;
    sql1 := 'insert into moves  (acc,spevent,mvnum,mvdate,mvosn,spgrup,spotd,spfak,spspec,kurs,mvfakt,usrwrite,spstatus,sl,lgota) ';
    sql2 := 'values (' + inttostr(stud_pin) + ',' + inttostr(event) + ',' + ''''
      + Edit1.Text + '''' + ',' + str_d + ',' + osn;
    sql3 := ',' + inttostr(gruppa) + ',' + inttostr(fo) + ',' + inttostr(fak) +
      ',' + inttostr(spec) + ',' + inttostr(kurs) + ',' + str_f + ',12,' +
      inttostr(obuch) + ',' + inttostr(movessl) + ',' +
      inttostr(oldlgota) + ')';
    DataModule1.Query2.SQL.Add(sql1 + sql2 + sql3);
  end;

  DataModule1.Query2.ExecSQL;
  DataModule1.Table_w6.Refresh;
  /// /////////////////////////////////////
  // ************ Из ПЛАТНИКОВ ***********//
  nachislenie(stud_pin, 'notdel');
  /// //////////////////////////////////////
  Close;
end;

procedure Tacc_moves.DBLookupComboBox5Click(Sender: TObject);
begin
  gruppa := DataModule1.Table_w37.FieldByName('pin').AsInteger;
  DataModule1.Table_w6.Refresh;
end;

procedure Tacc_moves.SpinEdit1Change(Sender: TObject);
begin
  kurs := SpinEdit1.Value;
end;

procedure Tacc_moves.Edit3Exit(Sender: TObject);
begin
  If act = 1 then
    Edit7.Text := Edit3.Text;
end;

end.
