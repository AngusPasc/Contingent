unit acc_stat5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls, ComCtrls, DateUtils;

type
  Tacc_movekont = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    BeginDate: TDateTimePicker;
    Label3: TLabel;
    EndDate: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure new_raschet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_movekont: Tacc_movekont;
  kontb, kontvn: array [1 .. 5, 1 .. 15] of integer;
  otd: array [1 .. 5] of integer;
  itogb, itogvn: array [1 .. 15] of integer;
  pr, spr, s1, s2: string;
  filt: string;
  i, n, otchb, otchvn, j, diplitog, kol, kodst: integer;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_movekont.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w6.IndexFieldNames := 'mvfakt;acc';
  DataModule1.Table_w1.IndexName := 'PRIMARY';
  DataModule1.Table_w2.IndexName := 'idxkadacc';
  DataModule1.Table_w6.Open;
  DataModule1.Table_w1.Open;
  DataModule1.Table_w26.Open;
  DataModule1.Table_w2.Open;
  BeginDate.Date := Date;
  EndDate.Date := Date;

end;

procedure Tacc_movekont.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w6.Close;
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.Table_w26.Close;
  DataModule1.Table_w1.Filtered := False;
  main.Enabled := True;
end;

procedure Tacc_movekont.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_movekont.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  Name_file: PWideChar;
  fil: OLEVariant;

begin
  // datamodule1.Table_w6.SetRangeStart;
  // datamodule1.Table_w6.SetRange([begindate.Date],[enddate.Date]);
  // datamodule1.Table_w6.ApplyRange;
  DataModule1.Table_w6.IndexFieldNames := 'mvfakt';
  Name_file := PChar('c:\doc\Движение контингента с ' +
    datetostr(BeginDate.Date) + ' по ' + datetostr(EndDate.Date) + '.doc');
  prakt_progress := tprakt_progress.Create(application);
  // 'bitbtn1.Enabled:=false;
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  s1 := '''' + inttostr(yearof(BeginDate.Date)) + '-' +
    inttostr(monthof(BeginDate.Date)) + '-' +
    inttostr(dayof(BeginDate.Date)) + '''';
  s2 := '''' + inttostr(yearof(EndDate.Date)) + '-' +
    inttostr(monthof(EndDate.Date)) + '-' +
    inttostr(dayof(EndDate.Date)) + '''';

  // filt:= 'spevent<>26'; //все события кроме Реструктуризации института
  otd[1] := 6;
  otd[2] := 10;
  otd[3] := 7;
  otd[4] := 8;
  // форма обучения очная
  // DataModule1.Table_w6.Filter:=filt;
  // DataModule1.Table_w6.Filtered:=True;
  // datamodule1.Table_w6.First;
  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add
    ('select * from moves where spevent<>26 and mvfakt>=' + s1 + ' and mvfakt<='
    + s2); // все записи кроме реструктуризации
  DataModule1.Query1.ExecSQL;
  DataModule1.Query1.Open;
  DataModule1.Query1.First;
  n := DataModule1.Query1.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1

  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\statistika3.doc'),
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
  t1.Cell(2, 1).Range.Text := 'за период с ' + datetostr(BeginDate.Date) +
    ' по ' + datetostr(EndDate.Date);
  prakt_progress.ProgressBar1.StepIt; // 4
  for j := 1 to 15 do
  begin
    itogb[j] := 0;
    itogvn[j] := 0;
  end;
  for i := 1 to 5 do
    for j := 1 to 15 do
    begin
      kontb[i, j] := 0;
      kontvn[i, j] := 0;
    end;
  new_raschet; // САМ РАСЧЕТ
  // печать
  for i := 1 to 5 do
  begin
    otchb := kontb[i, 3] + kontb[i, 4] + kontb[i, 5] + kontb[i, 6] + kontb[i, 7]
      + kontb[i, 8];
    otchvn := kontvn[i, 3] + kontvn[i, 4] + kontvn[i, 5] + kontvn[i, 6] +
      kontvn[i, 7] + kontvn[i, 8];
    for j := 1 to 15 do
    begin
      case j of
        2:
          begin // t1.Cell(i+6,j+1).Range.Text:=inttostr(otchb)+'\'+inttostr(otchvn);
            t1.Cell(i + 6, 2 * j).Range.Text := inttostr(otchb);
            t1.Cell(i + 6, 2 * j + 1).Range.Text := inttostr(otchvn);
            itogb[j] := itogb[j] + otchb;
            itogvn[j] := itogvn[j] + otchvn;
          end;
        13:
          begin
            t1.Cell(i + 6, 28).Range.Text := inttostr(kontb[i, j]);
            t1.Cell(i + 6, 29).Range.Text := inttostr(kontvn[i, j]);
            itogb[j] := itogb[j] + kontb[i, j];
            itogvn[j] := itogvn[j] + kontvn[i, j];
          end;
        14:
          begin
            t1.Cell(i + 6, 26).Range.Text := inttostr(kontb[i, j]);
            t1.Cell(i + 6, 27).Range.Text := inttostr(kontvn[i, j]);
            itogb[j] := itogb[j] + kontb[i, j];
            itogvn[j] := itogvn[j] + kontvn[i, j];
          end
      else
        begin
          // t1.Cell(i+6,j+1).Range.Text:=inttostr(kontb[i,j])+'\'+inttostr(kontvn[i,j]);
          t1.Cell(i + 6, 2 * j).Range.Text := inttostr(kontb[i, j]);
          t1.Cell(i + 6, 2 * j + 1).Range.Text := inttostr(kontvn[i, j]);
          itogb[j] := itogb[j] + kontb[i, j];
          itogvn[j] := itogvn[j] + kontvn[i, j];
        end;
      end;
    end;
  end;
  for j := 1 to 15 do
    case j of
      13:
        begin
          t1.Cell(12, 28).Range.Text := inttostr(itogb[j]);
          t1.Cell(12, 29).Range.Text := inttostr(itogvn[j]);
        end;
      14:
        begin
          t1.Cell(12, 26).Range.Text := inttostr(itogb[j]);
          t1.Cell(12, 27).Range.Text := inttostr(itogvn[j]);
        end
    else
      begin
        t1.Cell(12, 2 * j).Range.Text := inttostr(itogb[j]);
        t1.Cell(12, 2 * j + 1).Range.Text := inttostr(itogvn[j]);
      end;
    end;
  t1.Cell(13, 1).Range.Text := datetostr(Date);
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;
  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
  DataModule1.Table_w6.CancelRange;

end;

procedure Tacc_movekont.new_raschet;
var
  i: integer;
begin
  for i := 1 to 4 do
  begin
    // сколько учится
    DataModule1.Table_w1.Filtered := False;
    if otd[i] = 10 then
    begin
      // средне-спец очное
      DataModule1.Table_w1.Filter := 'spsost=1 and spotd=' + inttostr(otd[i]) +
        ' and spfak=57 and (spstatus=1 or spstatus=3)'; // учится  на бюджете
      DataModule1.Table_w1.Filtered := True;
      kontb[2, 1] := DataModule1.Table_w1.RecordCount;
      DataModule1.Table_w1.Filtered := False;
      DataModule1.Table_w1.Filter := 'spsost=1 and spotd=' + inttostr(otd[i]) +
        ' and spfak=57 and spstatus=2'; // учится  на контракте
      DataModule1.Table_w1.Filtered := True;
      kontvn[2, 1] := DataModule1.Table_w1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=7 or spevent=53) and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено за академ. неуспе
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[2, 3] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=7 or spevent=53) and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено за академ. неуспе
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[2, 3] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=9 and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено по собств. желанию
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[2, 4] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=9 and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено по собств. желанию
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[2, 4] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=28 or spevent=69) and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено в др.вуз
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[2, 5] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=28 or spevent=69)  and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено в др.вуз
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[2, 5] := DataModule1.Query1.RecordCount;

      kontb[2, 6] := 0;
      kontvn[2, 6] := 0; // отчислен не закл.договор

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=5 or spevent=67) and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислен диплом
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[2, 7] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=5 or spevent=67) and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислен диплом
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[2, 7] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=4 or spevent=8 or spevent=27 or spevent=29 or spevent=30 or spevent=31 or spevent=34 or spevent=39 or spevent=40 or spevent=42 or spevent=56  or spevent=68 or spevent=70)');
      DataModule1.Query1.SQL.Add(' and spotd=10 and spfak=57 and mvfakt>=' + s1
        + ' and mvfakt<=' + s2); // отчислено другие причины
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[2, 8] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=4 or spevent=8 or spevent=27 or spevent=29 or spevent=30 or spevent=31 or spevent=34 or spevent=39 or spevent=40 or spevent=42 or spevent=56  or spevent=68 or spevent=70)');
      DataModule1.Query1.SQL.Add(' and spotd=10 and spfak=57 and mvfakt>=' + s1
        + ' and mvfakt<=' + s2); // отчислено другие причины
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[2, 8] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear; // сколько перевод с фак на фак на бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=37 and spotd=' + inttostr(otd[i]) +
        ' and spfak=57 and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[2, 9] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear; // сколько перевод с фак на фак на контракт
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=38 and spotd=' + inttostr(otd[i]) +
        ' and spfak=57 and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[2, 9] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      // сколько восстановлено ранее отчисл на бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=10 or spevent=12 or spevent=13) and spotd='
        + inttostr(otd[i]) + ' and spfak=57 and mvfakt>=' + s1 +
        ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[2, 10] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      // сколько восстановлено ранее отчисл на контракт
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=11 or spevent=25) and spotd=' +
        inttostr(otd[i]) + ' and spfak=57 and mvfakt>=' + s1 +
        ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[2, 10] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=32 or spevent=64) and spotd=' +
        inttostr(otd[i]) + ' and spfak=57 and mvfakt>=' + s1 +
        ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов на бюджет
      kontb[2, 11] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=33 or spevent=65) and spotd=' +
        inttostr(otd[i]) + ' and spfak=57 and mvfakt>=' + s1 +
        ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов  на контракт
      kontvn[2, 11] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=35 and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по мед показ
      DataModule1.Query1.Open;
      kontb[2, 12] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=35 and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по мед показ
      DataModule1.Query1.Open;
      kontvn[2, 12] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=52 and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по призыву в РА
      DataModule1.Query1.Open;
      kontb[2, 13] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=52 and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по призыву в РА
      DataModule1.Query1.Open;
      kontvn[2, 13] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=36 and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по сем обст
      DataModule1.Query1.Open;
      kontb[2, 14] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=36 and spotd=10 and spfak=57 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по сем обст
      DataModule1.Query1.Open;
      kontvn[2, 14] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear; // сколько вышло из академ бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=18 and spotd=' + inttostr(otd[i]) +
        ' and spfak=57 and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontb[2, 15] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear; // сколько вышло из академ  контракт
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=20 and spotd=' + inttostr(otd[i]) +
        ' and spfak=57 and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontvn[2, 15] := DataModule1.Query1.RecordCount;

      // средне-спец заочное
      DataModule1.Table_w1.Filter := 'spsost=1 and spotd=' + inttostr(otd[i]) +
        ' and spfak=65 and (spstatus=1 or spstatus=3)'; // учится  на бюджете
      DataModule1.Table_w1.Filtered := True;
      kontb[5, 1] := DataModule1.Table_w1.RecordCount;
      DataModule1.Table_w1.Filtered := False;
      DataModule1.Table_w1.Filter := 'spsost=1 and spotd=' + inttostr(otd[i]) +
        ' and spfak=65 and spstatus=2'; // учится  на контракте
      DataModule1.Table_w1.Filtered := True;
      kontvn[5, 1] := DataModule1.Table_w1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=7 or spevent=53) and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено за академ. неуспе
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[5, 3] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=7 or spevent=53) and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено за академ. неуспе
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[5, 3] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=9 and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено по собств. желанию
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[5, 4] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=9 and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено по собств. желанию
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[5, 4] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=28 or spevent=69)  and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено в др.вуз
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[5, 5] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=28 or spevent=69)  and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено в др.вуз
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[5, 5] := DataModule1.Query1.RecordCount;

      kontb[5, 6] := 0;
      kontvn[5, 6] := 0; // отчислен не закл.договор

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=5 or spevent=67) and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислен диплом
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[5, 7] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=5 or spevent=67) and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислен диплом
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[5, 7] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=4 or spevent=8 or spevent=27 or spevent=29 or spevent=30 or spevent=31 or spevent=34 or spevent=39 or spevent=40 or spevent=42 or spevent=56) and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено др.причины
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[5, 8] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=4 or spevent=8 or spevent=27 or spevent=29 or spevent=30 or spevent=31 or spevent=34 or spevent=39 or spevent=40 or spevent=42 or spevent=56 ) and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // отчислено др.причины
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[5, 8] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear; // сколько перевод с фак на фак на бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=37 and spotd=' + inttostr(otd[i]) +
        ' and spfak=65 and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontb[5, 9] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear; // сколько перевод с фак на фак на контракт
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=38 and spotd=' + inttostr(otd[i]) +
        ' and spfak=65 and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontvn[5, 9] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      // сколько восстановлено ранее отчисл на бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=10 or spevent=12 or spevent=13) and spotd='
        + inttostr(otd[i]) + ' and spfak=65 and mvfakt>=' + s1 +
        ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontb[5, 10] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      // сколько восстановлено ранее отчисл на бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=11 or spevent=25) and spotd=' +
        inttostr(otd[i]) + ' and spfak=65 and mvfakt>=' + s1 +
        ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontvn[5, 10] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=32 or spevent=64) and spotd=' +
        inttostr(otd[i]) + ' and spfak=65 and mvfakt>=' + s1 +
        ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов на бюджет
      kontb[5, 11] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=33 or spevent=65) and spotd=' +
        inttostr(otd[i]) + ' and spfak=65 and mvfakt>=' + s1 +
        ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов
      kontvn[5, 11] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=35 and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по мед показ
      DataModule1.Query1.Open;
      kontb[5, 12] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=35 and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по мед показ
      DataModule1.Query1.Open;
      kontvn[5, 12] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=52 and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по призыв в РА
      DataModule1.Query1.Open;
      kontb[5, 13] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=52 and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по призыв в РА
      DataModule1.Query1.Open;
      kontvn[5, 13] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=36 and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по сем обст
      DataModule1.Query1.Open;
      kontb[5, 14] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=36 and spotd=10 and spfak=65 and mvfakt>='
        + s1 + ' and mvfakt<=' + s2); // сколько в академ по сем обст
      DataModule1.Query1.Open;
      kontvn[5, 14] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear; // сколько вышло из академ бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=18 and spotd=' + inttostr(otd[i]) +
        ' and spfak=57 and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов на бюджет
      kontb[5, 15] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear; // сколько вышло из академ  контракт
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=20 and spotd=' + inttostr(otd[i]) +
        ' and spfak=57 and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов
      kontvn[5, 15] := DataModule1.Query1.RecordCount;

    end
    else
    begin
      DataModule1.Table_w1.Filter := 'spsost=1 and spotd=' + inttostr(otd[i]) +
        ' and (spstatus=1 or spstatus=3)'; // учится  на бюджете
      DataModule1.Table_w1.Filtered := True;
      kontb[i, 1] := DataModule1.Table_w1.RecordCount;
      DataModule1.Table_w1.Filtered := False;
      DataModule1.Table_w1.Filter := 'spsost=1 and spotd=' + inttostr(otd[i]) +
        ' and spstatus=2'; // учится  на контракте
      DataModule1.Table_w1.Filtered := True;
      kontvn[i, 1] := DataModule1.Table_w1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=7 or spevent=53) and spotd='
        + inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислено за академ. неуспе
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[i, 3] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=7 or spevent=53) and spotd='
        + inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислено за академ. неуспе
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[i, 3] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=9 and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислено по собств. желанию
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[i, 4] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=9 and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислено по собств. желанию
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[i, 4] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=28 or spevent=69)  and spotd='
        + inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислено в др.вуз
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[i, 5] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=28 or spevent=69)  and spotd='
        + inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислено в др.вуз
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[i, 5] := DataModule1.Query1.RecordCount;

      kontb[i, 6] := 0;
      kontvn[i, 6] := 0; // отчислен не закл.договор

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=5 or spevent=67) and spotd='
        + inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислен диплом
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[i, 7] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=5 or spevent=67) and spotd='
        + inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислен диплом
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[i, 7] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and (spevent=4 or spevent=8 or spevent=27 or spevent=29 or spevent=30 or spevent=31 or spevent=34 or spevent=39 or spevent=40 or spevent=42  or spevent=56 or spevent=68 or spevent=70) and spotd='
        + inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислено в РА
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[i, 8] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and (spevent=4 or spevent=8 or spevent=27 or spevent=29 or spevent=30 or spevent=31 or spevent=34 or spevent=39 or spevent=40 or spevent=42  or spevent=56  or spevent=68  or spevent=70) and spotd='
        + inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // отчислено в РА
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[i, 8] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear; // сколько перевод с фак на фак на бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=37 and spotd=' + inttostr(otd[i]) +
        ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontb[i, 9] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear; // сколько перевод с фак на фак на контракт
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=38 and spotd=' + inttostr(otd[i]) +
        ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontvn[i, 9] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      // сколько восстановлено ранее отчисл на бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=10 or spevent=12 or spevent=13) and spotd='
        + inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontb[i, 10] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear; // сколько восстановлено ранее отчисл
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=11 or spevent=25) and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontvn[i, 10] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=32 or spevent=64) and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов на бюджет
      kontb[i, 11] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where (spevent=33 or spevent=65) and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов
      kontvn[i, 11] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=35 and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // сколько в академ по мед показ
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[i, 12] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=35 and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // сколько в академ по мед показ
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[i, 12] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=52 and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // сколько в академ призыв в РА
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontb[i, 13] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=52 and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // сколько в академ  призыв в РА
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      kontvn[i, 13] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=1 and spevent=36 and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // сколько в академ по сем обст
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontb[i, 14] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add
        ('select * from moves where spstatus=2 and spevent=36 and spotd=' +
        inttostr(otd[i]) + ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      // сколько в академ по сем обст
      DataModule1.Query1.Open;
      DataModule1.Query1.First;
      kontvn[i, 14] := DataModule1.Query1.RecordCount;

      DataModule1.Query1.SQL.Clear; // сколько вышло из академ бюджет
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=18 and spotd=' + inttostr(otd[i]) +
        ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов на бюджет
      kontb[i, 15] := DataModule1.Query1.RecordCount;
      DataModule1.Query1.SQL.Clear; // сколько вышло из академ  контракт
      DataModule1.Query1.SQL.Add
        ('select * from moves where spevent=20 and spotd=' + inttostr(otd[i]) +
        ' and mvfakt>=' + s1 + ' and mvfakt<=' + s2);
      DataModule1.Query1.ExecSQL;
      DataModule1.Query1.Open;
      DataModule1.Query1.First; // сколько восстановл из др вузов
      kontvn[i, 15] := DataModule1.Query1.RecordCount;
    end;
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
  end;
end;

end.
