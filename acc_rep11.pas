unit acc_rep11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, datamodule, OleServer, WordXP, ComObj,
  Spin, ExtCtrls, DateUtils;

type
  Tstud_kontengent = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_kontengent: Tstud_kontengent;
  fak, fo, spec, kurs: integer;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tstud_kontengent.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w6.Open;
  DataModule1.spschool.Open;
  DataModule1.Table_w33.Open;
  DataModule1.Table_w33.Filter := 'priz=''1''';
  DataModule1.Table_w34.Open;
  DataModule1.Table_w34.Filter := 'priz=''1''';
  DataModule1.Table_w35.Open;
  DataModule1.Table_w36.Open;
  DataModule1.Table_w35.Filter := 'priz=''1''';
  DataModule1.Table_w33.Filtered := True;
  DataModule1.Table_w34.Filtered := True;
  DataModule1.Table_w35.Filtered := True;
  fo := 0;
  fak := 0;
  spec := 0;
  kurs := 0;
end;

procedure Tstud_kontengent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.Table_w6.Close;
  DataModule1.spschool.Close;
  // DataModule1.Table_w36.Close;
  // DataModule1.Table_w37.Close;
  DataModule1.Table_w1.Filtered := False;
  DataModule1.Table_w33.Filtered := False;
  DataModule1.Table_w34.Filtered := False;
  DataModule1.Table_w35.Filtered := False;
  main.Enabled := True;
end;

procedure Tstud_kontengent.DBLookupComboBox3CloseUp(Sender: TObject);
begin
  fo := DataModule1.Table_w33.fieldbyname('pin').AsInteger;
  DataModule1.Table_w36.Filter := 'spotd=' + inttostr(fo) + ' and spfak=' +
    inttostr(fak) + ' and priz=''1''';
  DataModule1.Table_w36.Filtered := True;
end;

procedure Tstud_kontengent.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  spec := DataModule1.Table_w36.fieldbyname('spspec').AsInteger;

end;

procedure Tstud_kontengent.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  fak := DataModule1.Table_w34.fieldbyname('pin').AsInteger;
  if (fak <> 65) then
  begin { DBLookupComboBox3.Enabled:=False; }
    fo := 6; // очная
    DataModule1.Table_w36.Filter := 'spfak=' + inttostr(fak) +
      ' and priz=''1''';
    DataModule1.Table_w36.Filtered := True;
  end
  else
  begin
    DBLookupComboBox3.Enabled := True;
    fo := 0;
  end;
end;

procedure Tstud_kontengent.BitBtn2Click(Sender: TObject);
begin

  Close;
end;

procedure Tstud_kontengent.SpinEdit1Change(Sender: TObject);
begin
  kurs := SpinEdit1.Value;
end;

procedure Tstud_kontengent.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n, k, j: integer;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
  filt, str: string;
begin
  filt := '(spsost=1 or spsost=6)'; // обучается или в академе
  if fak = 0 then
  begin
    showmessage('Выберите факультет!');
    DBLookupComboBox1.SetFocus;
    exit;
  end;
  if fo = 0 then
    filt := filt + ' and spfak=' + inttostr(fak)
  else
    filt := filt + ' and spfak=' + inttostr(fak) + ' and spotd=' + inttostr(fo);
  if spec <> 0 then
    filt := filt + ' and spspec=' + inttostr(spec);
  if kurs = 1 then
    filt := filt + ' and kurs=1 and godpr=' + inttostr(yearof(date));
  if kurs <> 0 then
    filt := filt + ' and kurs=' + inttostr(SpinEdit1.Value);
  DataModule1.Table_w1.Filter := filt;
  DataModule1.Table_w1.Filtered := True;
  Name_file := PChar('c:\doc\контингент на ' + datetostr(date) + '.doc');
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
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report11.doc'),
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
  t1.CELL(1, 2).RANGE.TEXT := datetostr(date);

  prakt_progress.ProgressBar1.StepIt; // 5
  DataModule1.Table_w2.IndexName := 'idxkadacc'; // поиск по pin студента
  DataModule1.Table_w6.IndexName := 'idxmovacc';

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
    if not DataModule1.Table_w2.FindKey
      ([DataModule1.Table_w1.fieldbyname('pin').AsInteger]) then
      t1.CELL(i + 2, 4).RANGE.TEXT := 'данных нет'
    else
    begin
      t1.CELL(i + 2, 3).RANGE.TEXT := DataModule1.Table_w2.fieldbyname
        ('dat_ro').AsString;
      t1.CELL(i + 2, 4).RANGE.TEXT :=
        trim(DataModule1.Table_w2.fieldbyname('address').AsString);
      t1.CELL(i + 2, 5).RANGE.TEXT :=
        trim(DataModule1.Table_w2.fieldbyname('school').AsString) + ' в ' +
        trim(DataModule1.Table_w2.fieldbyname('schoolgod').AsString);
      t1.CELL(i + 2, 6).RANGE.TEXT := DataModule1.Table_w1.fieldbyname
        ('godpr').AsString;
    end;
    DataModule1.Table_w6.Filter := 'spevent=1 or spevent=2 or spevent=3';
    DataModule1.Table_w6.Filtered := True;
    if not DataModule1.Table_w6.FindKey
      ([DataModule1.Table_w1.fieldbyname('pin').AsInteger]) then
      t1.CELL(i + 2, 7).RANGE.TEXT := 'данных нет'
    else
    begin
      t1.CELL(i + 2, 7).RANGE.TEXT := '№ ' + DataModule1.Table_w6.fieldbyname
        ('mvnum').AsString + ' от ' + DataModule1.Table_w6.fieldbyname
        ('mvdate').AsString;
    end;

    t1.CELL(i + 2, 8).RANGE.TEXT := trim(DataModule1.Table_w1.fieldbyname('fak')
      .AsString) + ',' + trim(DataModule1.Table_w1.fieldbyname('spec')
      .AsString);
    t1.CELL(i + 2, 9).RANGE.TEXT :=
      trim(DataModule1.Table_w1.fieldbyname('gruppa').AsString) + ',' +
      trim(DataModule1.Table_w1.fieldbyname('kurs').AsString) + ' курс';
    DataModule1.Table_w6.Filter := 'acc=' + DataModule1.Table_w1.fieldbyname
      ('pin').AsString;
    DataModule1.Table_w6.Filtered := True;
    k := DataModule1.Table_w6.RecordCount;
    if k > 1 then
    begin
      DataModule1.Table_w6.next;
      str := '';
      for j := 1 to k do
      begin
        str := str + '№' + DataModule1.Table_w6.fieldbyname('mvnum').AsString +
          ' от ' + DataModule1.Table_w6.fieldbyname('mvdate').AsString + ' ' +
          DataModule1.Table_w6.fieldbyname('event').AsString + ', ';
        DataModule1.Table_w6.next;
      end;
      t1.CELL(i + 2, 10).RANGE.TEXT := str;
    end;
    DataModule1.Table_w1.next;

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

end.
