unit acc_stat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls, DateUtils;

type
  Tstat_polv = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stat_polv: Tstat_polv;
  fak, otd: integer;
  fak_name: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tstat_polv.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'PRIMARY';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.IndexName := 'idxkadacc';
  DataModule1.Table_w2.Open;
  DataModule1.Table_w33.Open;
  DataModule1.Table_w33.Filter := 'pin=7 or pin=8';
  DataModule1.Table_w33.Filtered := True;
  DataModule1.Table_w34.Open;
  DataModule1.Table_w34.Filter := 'priz=''1''';
  DataModule1.Table_w34.Filtered := True;
end;

procedure Tstat_polv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.Table_w33.Close;
  DataModule1.Table_w34.Close;
  DataModule1.Table_w1.Filtered := False;
  DataModule1.Table_w33.Filtered := False;
  DataModule1.Table_w34.Filtered := False;
  main.Enabled := True;
end;

procedure Tstat_polv.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tstat_polv.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  Name_file: PWideChar;
  fil: OLEVariant;
  god: integer; // год поступления
  k: array [1 .. 2, 1 .. 9] of integer;
  // массив численности студ-в -см. таблицу в файле
  s, ss, s1: string;
begin
  if fak = 0 then
  begin // не выбрали факультет обучения
    showmessage('Выберите факультет!');
    DBLookupComboBox1.SetFocus;
    exit;
  end;
  god := yearof(date); // текущий год

  Name_file := PChar('c:\doc\состав студентов по возрасту и полу.doc');
  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := False;
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  case fak of
    57:
      DataModule1.Table_w1.Filter := 'spsost=1 and spfak=' + inttostr(fak) +
        ' and spotd<>10'; // исключаем ФССО
    65:
      DataModule1.Table_w1.Filter := 'spsost=1 and spfak=' + inttostr(fak) +
        ' and spotd=' + inttostr(otd);
  else
    DataModule1.Table_w1.Filter := 'spsost=1 and spfak=' + inttostr(fak);
  end;
  DataModule1.Table_w1.Filtered := True;
  k[1, 1] := DataModule1.Table_w1.RecordCount;
  // общее кол-во студентов на факультете

  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + 18 * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\statistika1.doc'),
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
  DataModule1.Query1.SQL.Clear;
  case fak of
    57:
      s := 'select acc.pin from acc,acckadr where acc.pin=acckadr.acc and acc.spsost=1 and acc.spfak='
        + inttostr(fak) + ' and acc.spotd<>10';
    65:
      s := 'select acc.pin from acc,acckadr where acc.pin=acckadr.acc and acc.spsost=1 and acc.spfak='
        + inttostr(fak) + ' and acc.spotd=' + inttostr(otd);
  else
    s := 'select acc.pin from acc,acckadr where acc.pin=acckadr.acc and acc.spsost=1 and acc.spfak='
      + inttostr(fak);
  end;
  ss := ' and acckadr.sex=' + '''' + '0' + '''';
  DataModule1.Query1.SQL.Add(s + ss);
  DataModule1.Query1.Open;
  k[2, 1] := DataModule1.Query1.RecordCount; // кол-во женщин на факультете
  t1.Cell(6, 2).Range.Text := k[1, 1];
  t1.Cell(7, 2).Range.Text := k[2, 1];
  for i := 2 to 9 do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(19 - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    case fak of
      57:
        s := 'select acc.pin from acc,acckadr where acc.pin=acckadr.acc and acc.spsost=1 and acc.spfak='
          + inttostr(fak) + ' and acc.spotd<>10';
      65:
        s := 'select acc.pin from acc,acckadr where acc.pin=acckadr.acc and acc.spsost=1 and acc.spfak='
          + inttostr(fak) + ' and acc.spotd=' + inttostr(otd);
    else
      s := 'select acc.pin from acc,acckadr where acc.pin=acckadr.acc and acc.spsost=1 and acc.spfak='
        + inttostr(fak);
    end;
    DataModule1.Query1.SQL.Clear;
    case i of
      2: // 17 лет и менее
        begin
          s1 := ' and acckadr.dat_ro>=' + '''' + inttostr(god - 18) +
            '-01-01' + '''';
          DataModule1.Query1.SQL.Add(s + s1); // всего
          DataModule1.Query1.Open;
          k[1, i] := DataModule1.Query1.RecordCount;
          DataModule1.Query1.SQL.Clear;
          DataModule1.Query1.SQL.Add(s + s1 + ss);
          DataModule1.Query1.Open;
          k[2, i] := DataModule1.Query1.RecordCount; // из них женщин
        end;
      9: // 24 года и более
        begin
          s1 := ' and acckadr.dat_ro<=' + '''' + inttostr(god - 25) +
            '-12-31' + '''';
          DataModule1.Query1.SQL.Add(s + s1); // всего
          DataModule1.Query1.Open;
          k[1, i] := DataModule1.Query1.RecordCount;
          DataModule1.Query1.SQL.Clear;
          DataModule1.Query1.SQL.Add(s + s1 + ss);
          DataModule1.Query1.Open;
          k[2, i] := DataModule1.Query1.RecordCount; // из них женщин
        end
    else
      begin
        s1 := ' and acckadr.dat_ro>=' + '''' + inttostr(god - (i + 16)) +
          '-01-01' + '''' + ' and acckadr.dat_ro<=' + '''' +
          inttostr(god - (i + 16)) + '-12-31' + '''';
        DataModule1.Query1.SQL.Add(s + s1); // всего
        DataModule1.Query1.Open;
        k[1, i] := DataModule1.Query1.RecordCount;
        DataModule1.Query1.SQL.Clear;
        DataModule1.Query1.SQL.Add(s + s1 + ss);
        DataModule1.Query1.Open;
        k[2, i] := DataModule1.Query1.RecordCount; // из них женщин
      end;
    end;
    t1.Cell(6, i + 1).Range.Text := k[1, i];
    t1.Cell(7, i + 1).Range.Text := k[2, i];
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
  Label3.Enabled := False;
  DBLookupComboBox2.Enabled := False;
end;

procedure Tstat_polv.DBLookupComboBox1Click(Sender: TObject);
begin
  fak := DataModule1.Table_w34.fieldbyname('pin').AsInteger;
  fak_name := DataModule1.Table_w34.fieldbyname('name').AsString;
  if fak = 65 then
  begin
    Label3.Enabled := True;
    DBLookupComboBox2.Enabled := True;
  end;
end;

procedure Tstat_polv.DBLookupComboBox2Click(Sender: TObject);
begin
  otd := DataModule1.Table_w33.fieldbyname('pin').AsInteger;
end;

end.
