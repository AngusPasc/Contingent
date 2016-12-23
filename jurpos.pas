unit jurpos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls, DateUtils;

type
  TFjurpos = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpinEdit1: TSpinEdit;
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fjurpos: TFjurpos;
  gr: integer;
  gr_name: string;

implementation

uses main1, prakt_progress1;

{$R *.dfm}

procedure TFjurpos.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1, t2: OLEVariant;
  i, n: integer;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
  filt, str, sem: string;
begin
  filt := '';
  sem := '';
  DataModule1.Table_w1.Filter := 'spsost=1 and spgrup=' + inttostr(gr);
  DataModule1.Table_w1.Filtered := True;
  Name_file := PChar('c:\doc\Журнал посещения группы.' + trim(gr_name)
    + '.doc');

  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := false;
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\jurpos.doc'),
    Name_file, false);
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
  t1 := NEWDOC.Tables.Item(2);
  t2 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  t2.CELL(1, 1).RANGE.TEXT := trim(gr_name);

  prakt_progress.ProgressBar1.StepIt; // 5

  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 2, 1).RANGE.TEXT := inttostr(i);
    t1.CELL(i + 2, 2).RANGE.TEXT := trim(DataModule1.Table_w1.fieldbyname('fam')
      .AsString) + ' ' + trim(DataModule1.Table_w1.fieldbyname('name').AsString)
      + ' ' + trim(DataModule1.Table_w1.fieldbyname('vname').AsString);
    if DataModule1.Table_w1.fieldbyname('spstatus').AsString = '1' then
      t1.CELL(i + 2, 3).RANGE.TEXT := 'Бюджет'
    else
      t1.CELL(i + 2, 3).RANGE.TEXT := 'Внебюджет';
    t1.CELL(i + 2, 4).RANGE.TEXT :=
      trim(DataModule1.Table_w1.fieldbyname('zachbook').AsString);
    DataModule1.Table_w1.Next;
    if i < n then
      t1.Rows.Add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = false then
    WordApp.Quit;
  WordApp := unassigned;
  BitBtn1.Enabled := True;
end;

procedure TFjurpos.DBLookupComboBox1Click(Sender: TObject);
var
  ku, s: integer;
begin
  { if monthof(date)<8 then
    ku:=((yearof(date)-2010))-SpinEdit1.Value else
    ku:=((yearof(date)-2010))-SpinEdit1.Value+1;
    if ku<0 then
    ku:=10+ku;
    ku:=ku*10+1;
    showmessage(inttostr(ku));
    if checkbox1.Checked=true then
    begin
    DataModule1.Table_w37.Filter :='spfak=65 and priz=''1'''+' and ngrup='+ inttostr(ku);
    DataModule1.Table_w37.Filtered :=True;
    end else
    begin
    DataModule1.Table_w37.Filter :='spfak=65 and priz=''1''';
    DataModule1.Table_w37.Filtered :=True;
    end; }

  gr := DataModule1.Table_w37.fieldbyname('pin').AsInteger;
  gr_name := DataModule1.Table_w37.fieldbyname('name').AsString;
end;

procedure TFjurpos.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.IndexName := 'grup';
  // DataModule1.Table_w37.Filter :='spfak=65'+{inttostr(spfak)}+' and priz=''1''';
  DataModule1.Table_w37.Filter := 'spfak=65 and priz=''1''';
  DataModule1.Table_w37.Filtered := True;
end;

procedure TFjurpos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w37.Close;
  main.Enabled := True;

end;

procedure TFjurpos.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
  begin
    SpinEdit1.Enabled := True;
    Label1.Enabled := True;
    SpinEdit1.OnChange(Sender);
  end
  else
  begin
    DataModule1.Table_w37.Filter := 'spfak=65 and priz=''1''';
    DataModule1.Table_w37.Filtered := True;
    SpinEdit1.Enabled := false;
    Label1.Enabled := false;
  end;
end;

procedure TFjurpos.SpinEdit1Change(Sender: TObject);
var
  ku, s: integer;
begin
  if monthof(date) < 8 then
    ku := ((yearof(date) - 2010)) - SpinEdit1.Value
  else
    ku := ((yearof(date) - 2010)) - SpinEdit1.Value + 1;
  if ku < 0 then
    ku := 10 + ku;
  ku := ku * 10 + 1;
  // showmessage(inttostr(ku));
  if CheckBox1.Checked = True then
  begin
    DataModule1.Table_w37.Filter := 'spfak=65 and priz=''1''' + ' and ngrup=' +
      inttostr(ku);
    DataModule1.Table_w37.Filtered := True;
  end
  else
  begin
    DataModule1.Table_w37.Filter := 'spfak=65 and priz=''1''';
    DataModule1.Table_w37.Filtered := True;
  end;

end;

end.
