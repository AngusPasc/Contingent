unit stud_fak2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, datamodule, DateUtils,
  ComCtrls;

type
  Tspr_call = class(TForm)
    Edit28: TEdit;
    Label1: TLabel;
    Label35: TLabel;
    Edit29: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Datev: TDateTimePicker;
    Begindate: TDateTimePicker;
    EndDate: TDateTimePicker;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spr_call: Tspr_call;
  pin_call: integer;

implementation

uses main1, stud_fak1;
{$R *.dfm}

procedure Tspr_call.FormActivate(Sender: TObject);
begin
  Edit28.Text := stud_fio;
  Edit28.ReadOnly := True;
  Edit28.Enabled := False;
  Edit29.Text := stud_gr;
  Edit29.ReadOnly := True;
  Edit29.Enabled := False;
  If act = 1 then // добавление
  begin
    // DataModule1.Table_w8.IndexFieldNames:='numout';
    DataModule1.Table_w8.IndexName := 'idxcallnum';
    DataModule1.Table_w8.Filtered := False;
    DataModule1.Table_w8.Refresh;
    DataModule1.Table_w8.Filter := 'spfak=' + inttostr(spfak);
    DataModule1.Table_w8.Filtered := True;
    DataModule1.Table_w8.Last;
    Datev.Date := Date();
    Begindate.Date := Date();
    EndDate.Date := Date();
    Edit1.Text := inttostr(DataModule1.Table_w8.fieldbyname('numout')
      .asinteger + 1);
    Edit3.Text := stud_fio;
    DataModule1.Table_w8.Filtered := False;
    DataModule1.Table_w8.Filter := 'acc=' + inttostr(stud_pin);
    DataModule1.Table_w8.Filtered := True;

  end;
  If act = 2 then // редактирование
  begin
    pin_call := DataModule1.Table_w8.fieldbyname('pin').asinteger;
    Edit1.Text := DataModule1.Table_w8.fieldbyname('numout').Asstring;
    Datev.Date := DataModule1.Table_w8.fieldbyname('dateout').asdatetime;
    Edit3.Text := DataModule1.Table_w8.fieldbyname('namerod').Asstring;
    Edit4.Text := DataModule1.Table_w8.fieldbyname('mesjob').Asstring;
    Begindate.Date := DataModule1.Table_w8.fieldbyname('datebegin').asdatetime;
    EndDate.Date := DataModule1.Table_w8.fieldbyname('dateend').asdatetime;
    RadioGroup1.ItemIndex := DataModule1.Table_w8.fieldbyname('at').asinteger;
  end;
end;

procedure Tspr_call.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  stud_fak.Enabled := True;
end;

procedure Tspr_call.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tspr_call.BitBtn1Click(Sender: TObject);
var
  d1, d2, d3, sql1, sql2: string;
begin
  if Edit1.Text = '' then
  begin
    showmessage('¬ведите є справки');
    exit;
  end;
  d1 := inttostr(yearof(Datev.Date)) + '-' + inttostr(monthof(Datev.Date)) + '-'
    + inttostr(dayof(Datev.Date));
  d2 := inttostr(yearof(Begindate.Date)) + '-' +
    inttostr(monthof(Begindate.Date)) + '-' + inttostr(dayof(Begindate.Date));
  d3 := inttostr(yearof(EndDate.Date)) + '-' + inttostr(monthof(EndDate.Date)) +
    '-' + inttostr(dayof(EndDate.Date));
  if act = 1 then // добавл€ем в callenge
  begin
    DataModule1.Query1.SQL.Clear;
    sql1 := 'insert  into callenge (acc,dateout,numout,mesjob,datebegin,dateend,namerod,spfak,at)';
    sql2 := ' values (' + inttostr(stud_pin) + ',' + '''' + d1 + '''' + ',' +
      Edit1.Text + ',' + '''' + Edit4.Text + '''' + ',' + '''' + d2 + '''' + ','
      + '''' + d3 + '''' + ',' + '''' + Edit3.Text + '''' + ',' +
      inttostr(spfak) + ',' + inttostr(RadioGroup1.ItemIndex) + ')';
    DataModule1.Query1.SQL.Add(sql1 + sql2);

  end;

  if act = 2 then // редактируем accgood
  begin
    DataModule1.Query1.SQL.Clear;
    sql1 := ' update callenge set acc=' + inttostr(stud_pin) + ', dateout=' +
      '''' + d1 + '''' + ', numout=' + Edit1.Text + ', mesjob=' + '''' +
      Edit4.Text + '''';
    sql2 := ', datebegin=' + '''' + d2 + '''' + ', dateend=' + '''' + d3 + ''''
      + ', namerod=' + '''' + Edit3.Text + '''' + ', spfak=' + inttostr(spfak) +
      ', at=' + inttostr(RadioGroup1.ItemIndex) + ' where pin=' +
      inttostr(pin_call);
    DataModule1.Query1.SQL.Add(sql1 + sql2);

  end;
  DataModule1.Query1.ExecSQL;
  DataModule1.Table_w8.Refresh;
  close;
end;

end.
