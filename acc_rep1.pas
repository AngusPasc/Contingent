unit acc_rep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls;

type
  Tacc_spstud = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel1: TPanel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_spstud: Tacc_spstud;
  ch: byte;
  gr, fo, spec: integer;
  gr_name, fo_name, spec_name: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_spstud.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.Filter := 'priz=''1''';
  DataModule1.Table_w35.Open;
  DataModule1.Table_w35.Filter := 'priz=''1''';
  DataModule1.Table_w33.Open;
  DataModule1.Table_w33.Filter := 'priz=''1''';
  DataModule1.Table_w33.Filtered := True;
  DataModule1.Table_w35.Filtered := True;
  DataModule1.Table_w37.Filtered := True;
  RadioButton1.Checked := True;
  RadioButton2.Checked := False;
  DBLookupComboBox1.Enabled := False;
end;

procedure Tacc_spstud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  // DataModule1.Table_w33.Close;
  // DataModule1.Table_w35.Close;
  DataModule1.Table_w37.Close;
  DataModule1.Table_w1.Filtered := False;
  DataModule1.Table_w33.Filtered := False;
  DataModule1.Table_w35.Filtered := False;
  DataModule1.Table_w37.Filtered := False;
  main.Enabled := True;
end;

procedure Tacc_spstud.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_spstud.RadioButton2Click(Sender: TObject);
begin
  DBLookupComboBox1.Enabled := True;
  ch := 2;
  DBLookupComboBox2.Enabled := False;
  DBLookupComboBox3.Enabled := False;
  SpinEdit1.Enabled := False;
end;

procedure Tacc_spstud.RadioButton1Click(Sender: TObject);
begin
  DBLookupComboBox1.Enabled := False;
  ch := 1;
  DBLookupComboBox2.Enabled := True;
  DBLookupComboBox3.Enabled := True;
  SpinEdit1.Enabled := True;
end;

procedure Tacc_spstud.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
  filt, str: string;
begin
  filt := '';
  if ch = 2 then // отчет по группе
    if gr = 0 then // не выбрали группу
    begin
      showmessage('Выберите группу!');
      DBLookupComboBox1.SetFocus;
      exit;
    end
    else
    begin
      DataModule1.Table_w1.Filter := 'spsost=1 and spgrup=' + inttostr(gr);
      Name_file := PChar('c:\doc\список_гр.' + trim(gr_name) + '.doc');
      fo_name := '';
      spec_name := '';
      fo := 0;
      spec := 0;
    end
  else // отчет по всему контингенту
  begin
    if fo <> 0 then
      filt := ' and spotd=' + inttostr(fo);
    if spec <> 0 then
      filt := filt + ' and spspec=' + inttostr(spec);
    if SpinEdit1.value <> 0 then
      filt := filt + ' and kurs=' + inttostr(SpinEdit1.value);
    DataModule1.Table_w1.Filter := 'spsost=1 ' + filt;
    gr_name := '';
    Name_file := PChar('c:\doc\список_студентов.doc');
  end;
  DataModule1.Table_w1.Filtered := True;
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
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report1.doc'),
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
  if ch = 2 then
    t1.CELL(3, 1).RANGE.TEXT := 'группа ' + trim(gr_name)
  else
  begin
    if fo <> 0 then
      str := 'форма обучения ' + trim(fo_name);
    if spec <> 0 then
      str := str + ' специальность ' + trim(spec_name);
    if SpinEdit1.value <> 0 then
      str := str + ' курс ' + inttostr(SpinEdit1.value);
    t1.CELL(3, 1).RANGE.TEXT := str;
    t1.CELL(5, 3).RANGE.TEXT := 'Группа';
  end;

  prakt_progress.ProgressBar1.StepIt; // 5

  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 5, 1).RANGE.TEXT := inttostr(i);
    t1.CELL(i + 5, 2).RANGE.TEXT := trim(DataModule1.Table_w1.fieldbyname('fam')
      .AsString) + ' ' + trim(DataModule1.Table_w1.fieldbyname('name').AsString)
      + ' ' + trim(DataModule1.Table_w1.fieldbyname('vname').AsString);
    if ch = 1 then // список общий
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

procedure Tacc_spstud.DBLookupComboBox1Click(Sender: TObject);
begin
  gr := DataModule1.Table_w37.fieldbyname('pin').AsInteger;
  gr_name := DataModule1.Table_w37.fieldbyname('name').AsString;
end;

procedure Tacc_spstud.DBLookupComboBox3Click(Sender: TObject);
begin
  fo := DataModule1.Table_w33.fieldbyname('pin').AsInteger;
  fo_name := DataModule1.Table_w33.fieldbyname('name').AsString;
end;

procedure Tacc_spstud.DBLookupComboBox2Click(Sender: TObject);
begin
  spec := DataModule1.Table_w35.fieldbyname('pin').AsInteger;
  spec_name := DataModule1.Table_w35.fieldbyname('sname').AsString;
end;

end.
