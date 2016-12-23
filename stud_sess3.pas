unit stud_sess3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls;

type
  Tstud_svvedom = class(TForm)
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_svvedom: Tstud_svvedom;
  gr: integer;
  gr_name: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tstud_svvedom.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.IndexName := 'grup';
  DataModule1.Table_w37.Filter := 'spfak=' + inttostr(spfak) +
    ' and priz=''1''';
  DataModule1.Table_w37.Filtered := True;
end;

procedure Tstud_svvedom.DBLookupComboBox1Click(Sender: TObject);
begin
  gr := DataModule1.Table_w37.fieldbyname('pin').AsInteger;
  gr_name := DataModule1.Table_w37.fieldbyname('name').AsString;

end;

procedure Tstud_svvedom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w37.Close;
  main.Enabled := True;
end;

procedure Tstud_svvedom.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tstud_svvedom.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
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
  Name_file := PChar('c:\doc\свод.ведом_гр.' + trim(gr_name) + '.doc');

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
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\vedom3.doc'),
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
  case SpinEdit1.Value of
    1:
      sem := '1-2 семестр 20___уч.года курс 1';
    2:
      sem := '3-4 семестр 20___уч.года курс 2';
    3:
      sem := '5-6 семестр 20___уч.года курс 3';
    4:
      sem := '7-8 семестр 20___уч.года курс 4';
    5:
      sem := '9-10 семестр 20___уч.года курс 5';
    6:
      sem := '11-12 семестр 20___уч.года курс 6';
  end;
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);

  prakt_progress.ProgressBar1.StepIt; // 4
  t1.CELL(1, 3).RANGE.TEXT := trim(gr_name);
  t1.CELL(2, 2).RANGE.TEXT := 'за ' + sem;

  prakt_progress.ProgressBar1.StepIt; // 5

  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 4, 1).RANGE.TEXT := inttostr(i);
    t1.CELL(i + 4, 2).RANGE.TEXT := trim(DataModule1.Table_w1.fieldbyname('fam')
      .AsString) + ' ' + trim(DataModule1.Table_w1.fieldbyname('name').AsString)
      + ' ' + trim(DataModule1.Table_w1.fieldbyname('vname').AsString);
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

end.
