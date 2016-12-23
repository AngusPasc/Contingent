unit stud_sess6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils;

type
  Tstud_spsess_up = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    god: TSpinEdit;
    kurs: TSpinEdit;
    BeginDate: TDateTimePicker;
    Enddate: TDateTimePicker;
    Label5: TLabel;
    namesess: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure godChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_spsess_up: Tstud_spsess_up;
  sess_pin: integer;

implementation

uses main1, stud_sess5;
{$R *.dfm}

procedure Tstud_spsess_up.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_spsess_up.FormActivate(Sender: TObject);
begin
  if act = 2 // редактирование
  then
  begin
    sess_pin := DataModule1.Table_w11.fieldByname('pin').Asinteger;
    namesess.Text := DataModule1.Table_w11.fieldByname('name').Asstring;
    god.Value := DataModule1.Table_w11.fieldByname('goduch').Asinteger;
    kurs.Value := DataModule1.Table_w11.fieldByname('kurs').Asinteger;
    BeginDate.Date := DataModule1.Table_w11.fieldByname('begdate').asdatetime;
    Enddate.Date := DataModule1.Table_w11.fieldByname('enddate').asdatetime;
  end;

end;

procedure Tstud_spsess_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  stud_spsessia.Enabled := True;
end;

procedure Tstud_spsess_up.BitBtn1Click(Sender: TObject);
var
  sql1, sql2, sql3, str1, str2: string;
begin
  if BeginDate.Date >= Enddate.Date then
  begin
    showmessage('Ќеправильно ввели дату окончани€!');
    Enddate.SetFocus;
    exit;
  end;
  if datetimetostr(BeginDate.Date) <> '' then
    str1 := '''' + inttostr(yearof(BeginDate.Date)) + '-' +
      inttostr(monthof(BeginDate.Date)) + '-' +
      inttostr(dayof(BeginDate.Date)) + ''''
  else
    str1 := 'Null';
  if datetimetostr(Enddate.Date) <> '' then
    str2 := '''' + inttostr(yearof(Enddate.Date)) + '-' +
      inttostr(monthof(Enddate.Date)) + '-' +
      inttostr(dayof(Enddate.Date)) + ''''
  else
    str2 := 'Null';
  DataModule1.Query1.SQL.Clear;
  case act of
    { 1 :begin    // добавление
      sql1 :='insert into spsessia (name,spotd,spspec,kurs,goduch,begdate,enddate,spfak) ';
      sql2 :='values ('+''''+namesess.text+''''+','+inttostr(fo)+','+inttostr(sp)+','+inttostr(kurs.Value);
      sql3 :=','+inttostr(god.Value)+','+str1+','+str2+','+inttostr(spfak)+')';
      DataModule1.Query1.SQL.Add(sql1+sql2+sql3);
      end; }
    2:
      begin // редактирование
        DataModule1.Query1.SQL.Clear;
        sql1 := 'update spsessia set kurs=' + inttostr(kurs.Value) + ',goduch='
          + inttostr(god.Value) + ',begdate=' + str1;
        sql2 := ',enddate=' + str2 + ' where pin=' + inttostr(sess_pin);
        DataModule1.Query1.SQL.Add(sql1 + sql2);
      end;
  end;
  DataModule1.Query1.ExecSQL;
  DataModule1.Table_w11.Refresh;
  close;
end;

procedure Tstud_spsess_up.godChange(Sender: TObject);
begin
  if act = 1 then
  begin
    BeginDate.Date := strtodatetime('01.09.' + inttostr(god.Value));
    Enddate.Date := strtodatetime('01.09.' + inttostr(god.Value));
  end
  else
  begin
    BeginDate.Date := strtodatetime(inttostr(dayof(BeginDate.Date)) + '.' +
      inttostr(monthof(BeginDate.Date)) + '.' + inttostr(god.Value));
    Enddate.Date := strtodatetime(inttostr(dayof(Enddate.Date)) + '.' +
      inttostr(monthof(Enddate.Date)) + '.' + inttostr(god.Value));
  end
end;

end.
