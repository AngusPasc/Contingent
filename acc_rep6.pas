unit acc_rep6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls, DateUtils;

type
  Tacc_spstudsch = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Kurs: TSpinEdit;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure KursExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_spstudsch: Tacc_spstudsch;
  fak, gr: integer;
  gr_name, filt1: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_spstudsch.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.IndexName := 'idxkadacc';
  DataModule1.Table_w2.Open;
  DataModule1.Table_w37.Open;
  // DataModule1.Table_w19.Open;
  DataModule1.spschool.Open;

  DataModule1.Table_w34.Open;
  DataModule1.Table_w34.Filter := 'priz=''1''';
  DataModule1.Table_w34.Filtered := True;
  DataModule1.Table_w37.Filter := 'priz=''1''';
  DataModule1.Table_w37.Filtered := True;
  if spfak <> 0 then
  begin
    Edit1.Text := fak_name;
    DBLookupComboBox1.Enabled := False;
    DBLookupComboBox1.Hide;
    fak := spfak;
    filt1 := ' and spsost=1';
    DataModule1.Table_w37.Filter := 'spfak=' + inttostr(fak) +
      ' and priz=''1''';
    DataModule1.Table_w37.Filtered := True
  end
  else
  begin
    Edit1.Enabled := False;
    Edit1.Hide;
    filt1 := '';
  end;
end;

procedure Tacc_spstudsch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.spschool.Close;
  DataModule1.Table_w34.Close;
  DataModule1.Table_w37.Close;
  DataModule1.Table_w1.Filtered := False;
  DataModule1.Table_w34.Filtered := False;
  DataModule1.Table_w37.Filtered := False;
  main.Enabled := True;
end;

procedure Tacc_spstudsch.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  Name_file: PWideChar;
  fil: OLEVariant;
  godr, school, godok: string;
  god: integer; // год поступления
begin
  if fak = 0 then
  begin // не выбрали факультет
    showmessage('Выберите факультет!');
    DBLookupComboBox1.SetFocus;
    exit;
  end;
  god := yearof(date) - Kurs.Value + 1;
  // DataModule1.Table_w1.Filter :='godpr='+inttostr(god)+' and spfak='+inttostr(fak);
  if gr = 0 then // не выбрали группу
    DataModule1.Table_w1.Filter := 'kurs=' + inttostr(Kurs.Value) +
      ' and spfak=' + inttostr(fak) + filt1
  else
    DataModule1.Table_w1.Filter := 'spfak=' + inttostr(fak) + ' and spgrup=' +
      inttostr(gr) + filt1;
  DataModule1.Table_w1.Filtered := True;

  Name_file := PChar('c:\doc\список студентов_' + trim(fak_name) + '_' +
    inttostr(god) + '.doc');
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
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report8.doc'),
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
  t1.Cell(2, 1).Range.Text := 'Факультет: ' + fak_name;

  prakt_progress.ProgressBar1.StepIt; // 4
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.Cell(i + 5, 1).Range.Text := inttostr(i);
    t1.Cell(i + 5, 2).Range.Text := trim(DataModule1.Table_w1.fieldbyname('fam')
      .AsString) + ' ' + trim(DataModule1.Table_w1.fieldbyname('name').AsString)
      + ' ' + trim(DataModule1.Table_w1.fieldbyname('vname').AsString);
    if not DataModule1.Table_w2.FindKey
      ([DataModule1.Table_w1.fieldbyname('pin').Asinteger]) then
    begin
      godr := '';
      school := '';
      godok := '';
    end
    else
    begin
      godr := inttostr(yearof(DataModule1.Table_w2.fieldbyname('dat_ro')
        .AsDateTime));
      school := trim(DataModule1.Table_w2.fieldbyname('school').AsString) + ' '
        + trim(DataModule1.Table_w2.fieldbyname('schoolpr').AsString);
      // school:=trim (DataModule1.Table_w2.FieldByName('school').AsString);
      godok := DataModule1.Table_w2.fieldbyname('schoolgod').AsString;
    end;
    t1.Cell(i + 5, 3).Range.Text := godr;
    t1.Cell(i + 5, 4).Range.Text := school;
    t1.Cell(i + 5, 5).Range.Text := godok;
    if spfak <> 0 then
      t1.Cell(i + 5, 6).Range.Text := DataModule1.Table_w1.fieldbyname('godpr')
        .Asinteger
    else
      t1.Cell(i + 5, 6).Range.Text := god;
    case DataModule1.Table_w1.fieldbyname('spsost').Asinteger of
      1:
        t1.Cell(i + 5, 7).Range.Text := 'обучается в ' +
          DataModule1.Table_w1.fieldbyname('gruppa').AsString;
      2:
        t1.Cell(i + 5, 7).Range.Text := 'отчислен';
      4:
        t1.Cell(i + 5, 7).Range.Text := 'дипломир.';
      6:
        t1.Cell(i + 5, 7).Range.Text := 'академ.отп';
    end;
    t1.Rows.Add();
    DataModule1.Table_w1.Next;
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

procedure Tacc_spstudsch.DBLookupComboBox1Click(Sender: TObject);
begin
  fak := DataModule1.Table_w34.fieldbyname('pin').Asinteger;
  fak_name := DataModule1.Table_w34.fieldbyname('name').AsString;
  DataModule1.Table_w37.Filter := 'spfak=' + inttostr(fak) + ' and priz=''1''';
  DataModule1.Table_w37.Filtered := True;
end;

procedure Tacc_spstudsch.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_spstudsch.DBLookupComboBox2Click(Sender: TObject);
begin
  gr := DataModule1.Table_w37.fieldbyname('pin').Asinteger;
  gr_name := DataModule1.Table_w34.fieldbyname('name').AsString;
end;

procedure Tacc_spstudsch.KursExit(Sender: TObject);
begin
  gr := 0;
  gr_name := '';
end;

end.
