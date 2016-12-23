unit acc_rep12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls;

type
  Tacc_indnom = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_indnom: Tacc_indnom;
  fo: integer;
  fo_name: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_indnom.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w33.Open;
  DataModule1.Table_w33.Filter := 'priz=''1''';
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.Filter := 'priz=''1''';
end;

procedure Tacc_indnom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w33.Close;
  DataModule1.Table_w37.Close;
  DataModule1.Table_w1.Filtered := False;
  DataModule1.Table_w33.Filtered := False;
  DataModule1.Table_w37.Filtered := False;
  main.Enabled := True;
end;

procedure Tacc_indnom.DBLookupComboBox1Click(Sender: TObject);
begin
  fo := DataModule1.Table_w33.fieldbyname('pin').AsInteger;
  fo_name := DataModule1.Table_w33.fieldbyname('name').AsString;
end;

procedure Tacc_indnom.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
  filt, str: string;
begin
  if fo = 0 then
  begin
    fo := 6;
    fo_name := 'дневное';
  end;
  DataModule1.Table_w1.Filter := 'spsost=1 and spotd=' + inttostr(fo) +
    ' and kurs=' + inttostr(SpinEdit1.value) + ' and ls=' + '''' + '''';
  DataModule1.Table_w1.Filtered := True;
  Name_file := PChar('c:\doc\список_студентов.doc');
  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := False;
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\spisok1.doc'),
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
  t1.CELL(3, 3).RANGE.TEXT := 'Группа ';
  t1.CELL(2, 1).RANGE.TEXT := 'форма обучения ' + trim(fo_name);
  prakt_progress.ProgressBar1.StepIt; // 5

  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 3, 1).RANGE.TEXT := inttostr(i);
    t1.CELL(i + 3, 2).RANGE.TEXT := trim(DataModule1.Table_w1.fieldbyname('fam')
      .AsString) + ' ' + trim(DataModule1.Table_w1.fieldbyname('name').AsString)
      + ' ' + trim(DataModule1.Table_w1.fieldbyname('vname').AsString);
    t1.CELL(i + 5, 3).RANGE.TEXT :=
      trim(DataModule1.Table_w1.fieldbyname('gruppa').AsString);
    DataModule1.Table_w1.Next;
    if i < n then
      t1.Rows.Add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
  BitBtn1.Enabled := True;
end;

procedure Tacc_indnom.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
