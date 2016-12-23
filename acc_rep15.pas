unit acc_rep15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls, ComCtrls, DateUtils;

type
  Tacc_spstudlgota = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_spstudlgota: Tacc_spstudlgota;
  lgota: integer;
  lg_name: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_spstudlgota.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexFieldNames := 'kurs;spgrup';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.Filter := 'priz=''1''';
  DataModule1.snvnek.Open;
  DataModule1.Table_w37.Filtered := True;
  lgota := 0;
  lg_name := '';
end;

procedure Tacc_spstudlgota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.Table_w37.Close;
  DataModule1.snvnek.Close;
  DataModule1.Table_w1.Filtered := False;
  DataModule1.Table_w37.Filtered := False;
  main.Enabled := True;
end;

procedure Tacc_spstudlgota.DBLookupComboBox1Click(Sender: TObject);
begin
  lgota := DataModule1.snvnek.fieldbyname('pin').AsInteger;
  lg_name := DataModule1.snvnek.fieldbyname('pname').AsString;
end;

procedure Tacc_spstudlgota.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_spstudlgota.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  Name_file: PWideChar;
  fil: OLEVariant;
begin
  if lgota = 0 then // не выбрали льготу
  begin
    showmessage('Выберите льготу!');
    DBLookupComboBox1.SetFocus;
    exit;
  end;
  DataModule1.Table_w1.Filter :=
    '(spstatus=1 or spstatus=3 or spstatus=6 or spstatus=7) and lgota=' +
    inttostr(lgota);
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  Name_file := PChar('c:\doc\список студентов льготников на ' +
    datetimetostr(date) + '.doc');
  DataModule1.Table_w1.Filtered := True;
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report13.doc'),
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
  t1.CELL(2, 2).RANGE.TEXT := lg_name;
  t1.CELL(2, 3).RANGE.TEXT := datetimetostr(date);
  prakt_progress.ProgressBar1.StepIt; // 5
  DataModule1.Table_w2.IndexName := 'idxkadacc'; // поиск по pin студента
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
    if not DataModule1.Table_w2.FindKey
      ([DataModule1.Table_w1.fieldbyname('pin').AsInteger]) then
      t1.CELL(i + 3, 4).RANGE.TEXT := 'данных нет'
    else
      t1.CELL(i + 3, 3).RANGE.TEXT := DataModule1.Table_w2.fieldbyname
        ('dat_ro').AsString;
    t1.CELL(i + 3, 4).RANGE.TEXT :=
      trim(DataModule1.Table_w1.fieldbyname('gruppa').AsString);
    t1.CELL(i + 3, 5).RANGE.TEXT :=
      trim(DataModule1.Table_w1.fieldbyname('sost').AsString);
    if ((DataModule1.Table_w1spstatus.AsInteger = 6) or
      (DataModule1.Table_w1spstatus.AsInteger = 7)) then
    begin
      DataModule1.query1.SQL.Clear;
      DataModule1.query1.SQL.add
        ('select a.pin,a.spstatus,a.acc,b.name from moves as a,spstatus as b where a.spstatus=b.pin and a.acc='
        + DataModule1.Table_w1.fieldbyname('pin').AsString);
      DataModule1.query1.Open;
      DataModule1.query1.Last;
      if ((DataModule1.query1.fieldbyname('spstatus').AsString = '1') or
        (DataModule1.query1.fieldbyname('spstatus').AsString = '2')) then
        t1.CELL(i + 3, 6).RANGE.TEXT :=
          trim(DataModule1.query1.fieldbyname('name').AsString)
      else
      begin
        DataModule1.query1.Prior;
        if ((DataModule1.query1.fieldbyname('spstatus').AsString = '1') or
          (DataModule1.query1.fieldbyname('spstatus').AsString = '2')) then
          t1.CELL(i + 3, 6).RANGE.TEXT :=
            trim(DataModule1.query1.fieldbyname('name').AsString);
      end;
    end
    else
      t1.CELL(i + 3, 6).RANGE.TEXT :=
        trim(DataModule1.Table_w1.fieldbyname('status').AsString);
    DataModule1.Table_w1.Next;

    if i < n then
      t1.Rows.add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
end;

end.
