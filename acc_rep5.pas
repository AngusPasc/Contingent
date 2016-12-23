unit acc_rep5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls;

type
  Tacc_spstud109 = class(TForm)
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Godpr: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_spstud109: Tacc_spstud109;
  fo: integer;
  fo_name: string;

implementation

uses main1, prakt_progress1;

{$R *.dfm}

procedure Tacc_spstud109.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w6.IndexName := 'idxmovdat';
  DataModule1.Table_w1.IndexName := 'PRIMARY';
  DataModule1.Table_w6.Open;
  DataModule1.Table_w1.Open;
  DataModule1.Table_w33.Open;
  DataModule1.Table_w33.Filter := 'priz=''1''';
  DataModule1.Table_w33.Filtered := True;

end;

procedure Tacc_spstud109.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w6.Close;
  DataModule1.Table_w1.Close;
  DataModule1.Table_w33.Close;
  DataModule1.Table_w1.Filtered := False;
  DataModule1.Table_w33.Filtered := False;
  main.Enabled := True;
end;

procedure Tacc_spstud109.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  k1, k2, otd, nn, i, n, event: integer;
  Name_file: PWideChar;
  fil: OLEVariant;
  s: string;

begin
  if fo = 0 then // íå âûáğàëè ôîğìó îáó÷åíèÿ
  begin
    showmessage('Âûáåğèòå ôîğìó îáó÷åíèÿ!');
    DBLookupComboBox3.SetFocus;
    exit;
  end;

  DataModule1.Table_w6.SetRangeStart;
  DataModule1.Table_w6.SetRange([encodedate(Godpr.Value, 8, 1)],
    [encodedate(Godpr.Value, 9, 1)]);
  DataModule1.Table_w6.ApplyRange;

  Name_file := PChar('c:\doc\ñïèñîê_íà 1.9.' + inttostr(Godpr.Value) + ' ' +
    trim(fo_name) + '.doc');
  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := False;
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  DataModule1.Table_w6.Filter := 'spevent>=1 and spevent<=3 and spotd=' +
    inttostr(fo);
  DataModule1.Table_w6.Filtered := True;
  DataModule1.Table_w6.First;
  n := DataModule1.Table_w6.RecordCount;
  prakt_progress.Label1.Caption := 'Îáğàáîòêà ' + inttostr(n) + ' çàïèñåé.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report7.doc'),
    Name_file, False);

  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word íå äîñòóïåí.';
      raise;
    end;
  end;

  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  t1.Cell(3, 1).Range.Text := 'ãîä çà÷èñëåíèÿ: ' + inttostr(Godpr.Value);
  t1.Cell(4, 1).Range.Text := 'ôîğìà îáó÷åíèÿ: ' + fo_name;
  prakt_progress.ProgressBar1.StepIt; // 4
  nn := 1;
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Îáğàáîòêà ' + inttostr(n - i) +
      ' çàïèñåé.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    if not DataModule1.Table_w1.FindKey
      ([DataModule1.Table_w6.FieldByName('acc').AsInteger]) then
    begin
      showmessage('Íåò ñâåäåíèé! Pin=' +
        inttostr(DataModule1.Table_w6.FieldByName('pin').AsInteger));
      // DataModule1.Table_w6.Next
    end
    else
    begin
      t1.Cell(i + 5, 1).Range.Text := inttostr(nn);
      t1.Cell(i + 5, 2).Range.Text :=
        trim(DataModule1.Table_w1.FieldByName('fam').AsString) + ' ' +
        trim(DataModule1.Table_w1.FieldByName('name').AsString) + ' ' +
        trim(DataModule1.Table_w1.FieldByName('vname').AsString);
      if DataModule1.Table_w6.FieldByName('spevent').AsInteger = 1 then
      // áşäæåò
        t1.Cell(i + 5, 3).Range.Text := 'çà ñ÷åò èíñòèòóòà';
      if DataModule1.Table_w6.FieldByName('spevent').AsInteger = 2 then
      // áşäæåò
        t1.Cell(i + 5, 3).Range.Text := 'áşäæåò';
      if DataModule1.Table_w6.FieldByName('spevent').AsInteger = 3 then
      // áşäæåò
        t1.Cell(i + 5, 3).Range.Text := 'êîíòğàêò';
      nn := nn + 1;
      t1.Rows.Add();
    end;
    DataModule1.Table_w6.Next;
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;
  WordApp.visible := True;
  // showmessage(inttostr(k1)+' '+inttostr(k2));
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
  DataModule1.Table_w6.CancelRange;
  BitBtn1.Enabled := True;
end;

procedure Tacc_spstud109.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_spstud109.DBLookupComboBox3Click(Sender: TObject);
begin
  fo := DataModule1.Table_w33.FieldByName('pin').AsInteger;
  fo_name := DataModule1.Table_w33.FieldByName('name').AsString;

end;

end.
