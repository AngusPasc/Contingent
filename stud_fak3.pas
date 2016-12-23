unit stud_fak3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DataModule, OleServer,
  WordXP, ComObj;

type
  Tspis_gr = class(TForm)
    Button3: TButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spis_gr: Tspis_gr;

implementation

uses password, main1, stud_fak1, prakt_progress1;
{$R *.dfm}

procedure Tspis_gr.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.Indexname := 'grup';
  if podrcod = '41'
  // для ЦВР    редактировать!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  then
  begin
    DataModule1.Table_w1.Open;
    DataModule1.Table_w37.Filter := 'priz=' + '''' + '1' + ''''
  end
  else
    DataModule1.Table_w37.Filter := 'spfak=' + inttostr(spfak) + ' and priz=' +
      '''' + '1' + '''';
  DataModule1.Table_w37.Filtered := True;
  DataModule1.Table_w24.Open;
end;

procedure Tspis_gr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // DataModule1.Table_w37.Close;
  DataModule1.Table_w37.Filtered := False;
  if (sp = 1) and (podrcod = '41') then
  begin
    DataModule1.Table_w1.Close;
    main.Enabled := True;
  end // для ЦВР
  else if (sp = 1) or (sp = 2) then
    stud_fak.Enabled := True
end;

procedure Tspis_gr.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tspis_gr.Button3Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n, raz: integer;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
  grup: string;
begin
  DataModule1.Table_w1.Filter := 'spsost=1 and spgrup=' +
    inttostr(DataModule1.Table_w37.fieldbyname('pin').asinteger);
  DataModule1.Table_w1.Filtered := True;
  if (sp = 1) or (sp = 2) then // печать справок
  begin
    DataModule1.Table_w2.Indexname := 'idxkadacc';
    if sp = 1 // простой список
    then
      Name_file := PChar('c:\doc\список_группы ' + grup + '.doc')
    else
      Name_file := PChar('c:\doc\список_группы ' + grup +
        ' c личными данными.doc');
    grup := DataModule1.Table_w37.fieldbyname('name').AsString;
    prakt_progress := tprakt_progress.Create(application);
    Button3.Enabled := False;
    Button1.Enabled := False;
    Repaint;
    fil := string(Name_file);
    prakt_progress.show;
    n := DataModule1.Table_w1.RecordCount;
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.Max := 70 + n * 10;
    prakt_progress.ProgressBar1.StepIt; // 1
    if sp = 1 // простой список
    then
    begin
      CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\spisok1.doc'),
        Name_file, False);
      raz := 3;
    end
    else
    begin
      CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report2.doc'),
        Name_file, False);
      raz := 5;
    end;
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
    t1.CELL(2, 1).RANGE.TEXT := 'группа ' + trim(grup);
    prakt_progress.ProgressBar1.StepIt; // 5
    for i := 1 to n do
    begin
      prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
        ' записей.';
      application.ProcessMessages;
      prakt_progress.ProgressBar1.StepIt;
      t1.CELL(i + raz, 1).RANGE.TEXT := inttostr(i);
      t1.CELL(i + raz, 2).RANGE.TEXT :=
        trim(DataModule1.Table_w1.fieldbyname('fam').AsString) + ' ' +
        trim(DataModule1.Table_w1.fieldbyname('name').AsString) + ' ' +
        trim(DataModule1.Table_w1.fieldbyname('vname').AsString);
      if sp = 1 then
      begin
        t1.CELL(i + raz, 3).RANGE.TEXT :=
          trim(DataModule1.Table_w1.fieldbyname('status').AsString);
        t1.CELL(i + raz, 4).RANGE.TEXT :=
          trim(DataModule1.Table_w1.fieldbyname('zachbook').AsString);
      end;
      if sp = 2 then // список с личными данными
        if not DataModule1.Table_w2.FindKey
          ([DataModule1.Table_w1.fieldbyname('pin').asinteger]) then
          t1.CELL(i + raz, 4).RANGE.TEXT := 'данных нет'
        else
        begin
          t1.CELL(i + raz, 3).RANGE.TEXT := DataModule1.Table_w2.fieldbyname
            ('dat_ro').AsString;
          t1.CELL(i + raz, 4).RANGE.TEXT :=
            trim(DataModule1.Table_w2.fieldbyname('pasnum').AsString) + ' ' +
            trim(DataModule1.Table_w2.fieldbyname('pasdate').AsString) + ' ' +
            trim(DataModule1.Table_w2.fieldbyname('paswho').AsString);
          t1.CELL(i + raz, 5).RANGE.TEXT :=
            trim(DataModule1.Table_w2.fieldbyname('address').AsString);
          t1.CELL(i + raz, 6).RANGE.TEXT :=
            trim(DataModule1.Table_w2.fieldbyname('phone').AsString);
        end;
      DataModule1.Table_w1.Next;
      if i < n then
        t1.Rows.Add(); // чтобы не печатать пустую строку в конце
    end;
  end;

  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
  Button3.Enabled := True;
  Button1.Enabled := True;
end;

end.
