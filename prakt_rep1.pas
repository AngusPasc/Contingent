unit prakt_rep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, datamodule, Buttons, OleServer, WordXP, ComObj;

type
  Tprakt_rep_diplom = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  prakt_rep_diplom: Tprakt_rep_diplom;
  fak, spec, gr: integer;
  filt1, filt2, filt3, fak_name, spec_name: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tprakt_rep_diplom.FormCreate(Sender: TObject);
begin
  datamodule1.Table_w34.Open;
  filt1 := 'pinrod=0 and priz=''1''';
  datamodule1.Table_w34.Filter := filt1;
  datamodule1.Table_w34.Filtered := True;

  datamodule1.Table_w36.Open;
  datamodule1.Table_w36.IndexName := 'idx4fak';

  datamodule1.Table_w37.Open;
  datamodule1.Table_w37.IndexName := 'PRIMARY';

  datamodule1.Table_w1.Open;
  datamodule1.Table_w1.IndexName := 'idxaccfam';
end;

procedure Tprakt_rep_diplom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  datamodule1.Table_w37.Close;
  datamodule1.Table_w36.Close;
  datamodule1.Table_w34.Close;
  datamodule1.Table_w1.Close;

  datamodule1.Table_w34.Filtered := False;
  datamodule1.Table_w36.Filtered := False;
  datamodule1.Table_w37.Filtered := False;
  main.Enabled := True;
end;

procedure Tprakt_rep_diplom.DBLookupComboBox1Click(Sender: TObject);
begin
  fak := DBLookupComboBox1.ListSource.Dataset.fieldbyname('pin').AsInteger;
  fak_name := DBLookupComboBox1.ListSource.Dataset.fieldbyname('name').AsString;
  filt2 := 'spotd=6 and priz=''1'' and spfak=' + inttostr(fak);
  datamodule1.Table_w36.Filter := filt2;
  datamodule1.Table_w36.Filtered := True;
end;

procedure Tprakt_rep_diplom.DBLookupComboBox2Click(Sender: TObject);
begin
  spec := DBLookupComboBox2.ListSource.Dataset.fieldbyname('spspec').AsInteger;
  spec_name := DBLookupComboBox2.ListSource.Dataset.fieldbyname('spec')
    .AsString;
  datamodule1.Table_w37.Filter := 'spotd=6 and priz=''1'' and spfak=' +
    inttostr(fak) + ' and spspec=' + inttostr(spec);
  datamodule1.Table_w37.Filtered := True;
end;

procedure Tprakt_rep_diplom.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tprakt_rep_diplom.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, j, n: integer;
  Name_file, STR: PWideChar;
  NAME_FILE1: STRING;
  BIG, SMALL: integer;
  f: Tprakt_progress;
  fil: OLEVariant;
begin
  // filt3 :='spotd=1 and spsost=1 and kurs=5 and spfak='+ inttostr(fak)+' and spspec='+inttostr(spec);
  filt3 := 'spotd=6 and spsost=1 and spfak=' + inttostr(fak) + ' and spspec=' +
    inttostr(spec) + ' and spgrup=' + inttostr(gr);
  datamodule1.Table_w1.Filter := filt3;
  datamodule1.Table_w1.Filtered := True;

  prakt_progress := Tprakt_progress.Create(application);
  BitBtn1.Enabled := False;
  BIG := wdLineWidth225pt;
  SMALL := wdLineWidth075pt;
  Name_file := PChar('c:\doc\диплом' + trim(spec_name) + '.doc');
  Repaint;
  fil := string(Name_file);

  prakt_progress.show;
  prakt_progress.Label1.Caption := 'Добавление в Word';
  application.ProcessMessages;
  n := datamodule1.Table_w1.RecordCount;
  if n = 0 then
  begin
    showmessage('Выберите другую группу!');
    exit;
  end;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1

  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\praktika1.doc'),
    Name_file, False);
  // CopyFile(PChar('c:\doc\praktika1.doc'),Name_file,false);

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
  t1.CELL(3, 2).RANGE.TEXT := trim(fak_name);
  t1.CELL(3, 4).RANGE.TEXT := trim(spec_name);

  prakt_progress.ProgressBar1.StepIt; // 5

  for i := 1 to n do
  begin
    prakt_progress.ProgressBar1.StepIt;
    t1.Rows.Add();
    t1.CELL(i + 6, 1).RANGE.TEXT := inttostr(i);
    t1.CELL(i + 6, 2).RANGE.TEXT := trim(datamodule1.Table_w1.fieldbyname('fam')
      .AsString) + ' ' + trim(datamodule1.Table_w1.fieldbyname('name').AsString)
      + ' ' + trim(datamodule1.Table_w1.fieldbyname('vname').AsString);
    if trim(datamodule1.Table_w1.fieldbyname('tel').AsString) <> '' then
      t1.CELL(i + 6, 3).RANGE.TEXT :=
        trim(datamodule1.Table_w1.fieldbyname('dom').AsString) + ', т.' +
        trim(datamodule1.Table_w1.fieldbyname('tel').AsString)
    else
      t1.CELL(i + 6, 3).RANGE.TEXT :=
        trim(datamodule1.Table_w1.fieldbyname('dom').AsString);
    datamodule1.Table_w1.Next;
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

procedure Tprakt_rep_diplom.DBLookupComboBox3Click(Sender: TObject);
begin
  gr := DBLookupComboBox3.ListSource.Dataset.fieldbyname('pin').AsInteger;

end;

end.
