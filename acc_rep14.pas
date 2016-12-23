unit acc_rep14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  ExtCtrls;

type
  Tacc_reppensia = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_reppensia: Tacc_reppensia;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_reppensia.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w24.Open;
end;

procedure Tacc_reppensia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.Table_w37.Close;
  DataModule1.Table_w24.Close;
  main.Enabled := True;
end;

procedure Tacc_reppensia.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_reppensia.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  Name_file: PWideChar;
  n1, i: integer;
  fil: OLEVariant;
  ss, s1, s2: string;
begin
  Name_file := PChar('c:\doc\отчет по студентам  для пенсионного фонда.doc');
  DataModule1.Query1.sql.clear;
  ss := 'select acc.fam,acc.name,acc.vname,acckadr.dat_ro,acc.godpr,spgrup.name,spstatus.name from acc,acckadr,spgrup,spstatus ';
  s1 := 'where (acc.spsost=1 or acc.spsost=6) and (acc.spotd=6 or (acc.spotd=10 and acc.spfak=57)) and acc.pin=acckadr.acc and acckadr.spsoc=6 and';
  s2 := ' acc.spgrup=spgrup.pin and acc.spstatus=spstatus.pin order by acc.fam';
  DataModule1.Query1.sql.add(ss + s1 + s2);
  DataModule1.Query1.execsql;
  DataModule1.Query1.Open;
  n1 := DataModule1.Query1.RecordCount;
  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := false;
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n1) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n1 * 6 * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report12.doc'),
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
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4

  for i := 1 to n1 do
  begin
    t1.Cell(i + 2, 1).Range.Text := inttostr(i);
    t1.Cell(i + 2, 2).Range.Text := DataModule1.Query1.fieldbyname('fam')
      .asstring + ' ' + DataModule1.Query1.fieldbyname('name').asstring + ' ' +
      DataModule1.Query1.fieldbyname('vname').asstring;
    t1.Cell(i + 2, 3).Range.Text := DataModule1.Query1.fieldbyname
      ('dat_ro').asstring;
    t1.Cell(i + 2, 4).Range.Text := DataModule1.Query1.fieldbyname
      ('godpr').asstring;
    t1.Cell(i + 2, 5).Range.Text :=
      inttostr(DataModule1.Query1.fieldbyname('godpr').asinteger + 5);
    t1.Cell(i + 2, 6).Range.Text := DataModule1.Query1.fieldbyname
      ('name_1').asstring;
    t1.Cell(i + 2, 7).Range.Text := DataModule1.Query1.fieldbyname
      ('name_2').asstring;
    t1.Rows.add();
    DataModule1.Query1.Next;
    prakt_progress.ProgressBar1.StepIt;
  end;
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
