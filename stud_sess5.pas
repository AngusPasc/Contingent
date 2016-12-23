unit stud_sess5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, DBGrids;

type
  Tstud_spsessia = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit2: TEdit;
    ControlBar1: TControlBar;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn2: TBitBtn;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label3: TLabel;
    god: TSpinEdit;
    Label2: TLabel;
    kurs: TSpinEdit;
    Label4: TLabel;
    BeginDate: TDateTimePicker;
    Label7: TLabel;
    Enddate: TDateTimePicker;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure godChange(Sender: TObject);
    procedure kursChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_spsessia: Tstud_spsessia;
  fo: integer;
  namesess, filt: string;

implementation

uses main1, stud_sess6;
{$R *.dfm}

procedure Tstud_spsessia.FormActivate(Sender: TObject);
begin
  { DataModule1.Table_w33.Open;
    DataModule1.Table_w11.Open;
    DataModule1.Table_w34.Open;
    DataModule1.Table_w35.Open;
    DataModule1.Table_w36.Open;
    DataModule1.Table_w37.Open;
    DataModule1.Table_w11.IndexName:='fospec';
    DataModule1.Table_w37.IndexName:='PRIMARY'; }
  SpeedButton2.Hide;
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
    if filt <> '' then
    begin
      DataModule1.Table_w11.filter := filt;
      DataModule1.Table_w11.filtered := True;
    end
  end
  else
  begin // факультет не выбран
    Edit1.Hide;
    DataModule1.Table_w34.filter := 'priz=' + '''' + '1' + '''';
    DataModule1.Table_w34.filtered := True;
  end;
  BeginDate.date := date;
  Enddate.date := date;
end;

procedure Tstud_spsessia.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_spsessia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w11.close;
  DataModule1.Table_w33.close;
  DataModule1.Table_w34.close;
  DataModule1.Table_w35.close;
  DataModule1.Table_w36.close;
  DataModule1.Table_w37.close;
  DataModule1.Table_w11.filtered := False;
  DataModule1.Table_w33.filtered := False;
  DataModule1.Table_w34.filtered := False;
  DataModule1.Table_w36.filtered := False;
  DataModule1.Table_w37.filtered := False;
  main.Enabled := True;
end;

procedure Tstud_spsessia.DBLookupComboBox2Click(Sender: TObject);
begin
  fo := DBLookupComboBox2.Listsource.dataset.fieldbyname('pin').asinteger;
  DataModule1.Table_w36.filter := 'spotd=' + inttostr(fo) + ' and spfak=' +
    inttostr(spfak) + ' and priz=' + '''' + '1' + '''';
  DataModule1.Table_w36.filtered := True;
  DataModule1.Table_w11.filter := 'spfak=' + inttostr(spfak) + ' and spotd=' +
    inttostr(fo) + ' and spspec=' + inttostr(sp);
  DataModule1.Table_w11.filtered := True;

end;

procedure Tstud_spsessia.DBLookupComboBox1Click(Sender: TObject);
begin
  spfak := DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').asinteger;
  DataModule1.Table_w11.filter := 'spfak=' + inttostr(spfak);
  DataModule1.Table_w11.filtered := True;
end;

procedure Tstud_spsessia.SpeedButton5Click(Sender: TObject);
begin
  act := 2;
  filt := DataModule1.Table_w11.filter;
  Enabled := False;
  Application.CreateForm(Tstud_spsess_up, stud_spsess_up);
  stud_spsess_up.Show;
end;

procedure Tstud_spsessia.SpeedButton4Click(Sender: TObject);
begin
  // if  messagebox(Handle,'Удалить ' +'запись '+'?','Подтверждение',mb_yesno)=7 then exit;
  DataModule1.Table_w11.delete;
  DataModule1.Table_w11.Refresh;
end;

procedure Tstud_spsessia.SpeedButton2Click(Sender: TObject);
begin
  act := 1;
  Enabled := False;
  Application.CreateForm(Tstud_spsess_up, stud_spsess_up);
  stud_spsess_up.Show;
end;

procedure Tstud_spsessia.BitBtn1Click(Sender: TObject);
var
  j, k: integer;
  str1, str2, sp, sql1, sql2, sql3, pnamesess: string;
begin
  DataModule1.Table_w36.filter := 'spotd=' + inttostr(fo) + ' and spfak=' +
    inttostr(spfak) + ' and priz=' + '''' + '1' + '''';
  DataModule1.Table_w36.filtered := True;
  DataModule1.Table_w36.First;
  for j := 1 to DataModule1.Table_w36.RecordCount do
  begin
    DataModule1.Query1.SQL.Clear;
    sp := DataModule1.Table_w36.fieldbyname('spspec').asstring;
    if datetimetostr(BeginDate.date) <> '' then
      str1 := '''' + inttostr(yearof(BeginDate.date)) + '-' +
        inttostr(monthof(BeginDate.date)) + '-' +
        inttostr(dayof(BeginDate.date)) + ''''
    else
      str1 := 'Null';
    if datetimetostr(Enddate.date) <> '' then
      str2 := '''' + inttostr(yearof(Enddate.date)) + '-' +
        inttostr(monthof(Enddate.date)) + '-' +
        inttostr(dayof(Enddate.date)) + ''''
    else
      str2 := 'Null';
    pnamesess := namesess + ' ' + DataModule1.Table_w36.fieldbyname('spec')
      .asstring + inttostr(kurs.Value) + 'к';
    sql1 := 'insert into spsessia (name,spotd,spspec,kurs,goduch,begdate,enddate,spfak) ';
    sql2 := 'values (' + '''' + pnamesess + '''' + ',' + inttostr(fo) + ',' + sp
      + ',' + inttostr(kurs.Value);
    sql3 := ',' + inttostr(god.Value) + ',' + str1 + ',' + str2 + ',' +
      inttostr(spfak) + ')';
    DataModule1.Query1.SQL.Add(sql1 + sql2 + sql3);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w36.next;
  end;
  DataModule1.Table_w11.Refresh;
  DBGrid1.setfocus;
end;

procedure Tstud_spsessia.godChange(Sender: TObject);
begin
  DataModule1.Table_w11.filtered := False;
  DataModule1.Table_w11.filter := 'spfak=' + inttostr(spfak) + ' and spotd=' +
    inttostr(fo) + ' and goduch=' + inttostr(god.Value);
  DataModule1.Table_w11.filtered := True;
end;

procedure Tstud_spsessia.kursChange(Sender: TObject);
begin
  DataModule1.Table_w11.filtered := False;
  if kurs.Value = 0 then
    DataModule1.Table_w11.filter := 'spfak=' + inttostr(spfak) + ' and spotd=' +
      inttostr(fo) + ' and goduch=' + inttostr(god.Value)
  else
    DataModule1.Table_w11.filter := 'spfak=' + inttostr(spfak) + ' and spotd=' +
      inttostr(fo) + ' and goduch=' + inttostr(god.Value) + ' and kurs=' +
      inttostr(kurs.Value);
  DataModule1.Table_w11.filtered := True;
end;

procedure Tstud_spsessia.ComboBox1Change(Sender: TObject);
begin
  namesess := ComboBox1.Text;
end;

procedure Tstud_spsessia.ComboBox1CloseUp(Sender: TObject);
begin
  namesess := ComboBox1.Text;
end;

procedure Tstud_spsessia.FormCreate(Sender: TObject);
begin
  DataModule1.Table_w33.Open;
  DataModule1.Table_w11.Open;
  DataModule1.Table_w34.Open;
  DataModule1.Table_w35.Open;
  DataModule1.Table_w36.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w11.IndexName := 'fospec';
  DataModule1.Table_w37.IndexName := 'PRIMARY';
  if spfak <> 0 then
  begin
    filt := 'spfak=' + inttostr(spfak);
    DataModule1.Table_w11.filter := filt;
    DataModule1.Table_w11.filtered := True;
  end
  else
    filt := '';
end;

end.
