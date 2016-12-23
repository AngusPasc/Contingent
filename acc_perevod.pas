unit acc_perevod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DataModule, DateUtils;

type
  Tstud_perevodkurs = class(TForm)
    Mess: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_perevodkurs: Tstud_perevodkurs;
  dataperev: string;

implementation

uses main1;
{$R *.dfm}

procedure Tstud_perevodkurs.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_perevodkurs.FormActivate(Sender: TObject);
begin
  if monthof(date) <> 8 then // перевод происходит только в августе
  begin
    Mess.Caption := 'Перевод на новый курс происходит только в августе!';
    BitBtn1.Hide;
    BitBtn2.SetFocus;
    exit;
  end;
  DataModule1.config_rii.Open;
  DataModule1.config_rii.IndexFieldNames := 'varname';
  If not DataModule1.config_rii.FindKey(['newkurs']) then
  begin
    Mess.Caption := 'Не найдена предыдущая дата перевода!';
    BitBtn1.Hide;
    BitBtn2.SetFocus;
    exit;
  end;
  dataperev := DataModule1.config_rii.FieldByName('varvalue').AsString;
  If yearof(strtodatetime(dataperev)) = yearof(date) then
  // перевод был уже сделан
  begin
    Mess.Caption := 'Перевод на новый курс был уже сделан!';
    BitBtn1.Hide;
    BitBtn2.SetFocus;
    exit;
  end;
  DataModule1.Table_w1.Open;

end;

procedure Tstud_perevodkurs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule1.Table_w1.close;
  DataModule1.config_rii.close;
  DataModule1.Table_w1.Filtered := False;
  DataModule1.config_rii.Filtered := False;
  main.Enabled := True;
end;

procedure Tstud_perevodkurs.BitBtn1Click(Sender: TObject);
var
  str: string;
  npin: integer;
begin
  DataModule1.Table_w1.filter := 'spsost=1';
  DataModule1.Table_w1.Filtered := True;
  DataModule1.Table_w1.first;
  while not DataModule1.Table_w1.Eof do
  begin
    str := '';
    npin := DataModule1.Table_w1.FieldByName('pin').Asinteger;
    DataModule1.Query1.SQL.Clear;
    case DataModule1.Table_w1.FieldByName('kurs').Asinteger of
      1:
        str := 'update acc set kurs=2 where pin=' + inttostr(npin);
      2:
        str := 'update acc set kurs=3 where pin=' + inttostr(npin);
      3:
        str := 'update acc set kurs=4 where pin=' + inttostr(npin);
      4:
        str := 'update acc set kurs=5 where pin=' + inttostr(npin);
      5:
        str := 'update acc set kurs=6 where pin=' + inttostr(npin);
    end;
    if str <> '' then
    begin
      DataModule1.Query1.SQL.Add(str);
      DataModule1.Query1.ExecSQL;
    end;
    DataModule1.Table_w1.Next;
  end;
  DataModule1.Table_w1.Refresh;
  DataModule1.Query1.SQL.Clear;
  dataperev := '''' + inttostr(dayof(date)) + '.' + inttostr(monthof(date)) +
    '.' + inttostr(yearof(date)) + '''';
  str := 'update config_rii set varvalue=' + dataperev + ' where varname=' +
    '''' + 'newkurs' + '''';
  DataModule1.Query1.SQL.Add(str);
  DataModule1.Query1.ExecSQL;
  DataModule1.config_rii.Refresh;
  BitBtn1.Hide;
  showmessage('Готово!');
end;

end.
