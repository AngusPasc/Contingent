unit reiting1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, OleServer, WordXP, ComObj;

type
  Treiting_gr = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    raschet: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label5: TLabel;
    SpinEdit2: TSpinEdit;
    Label6: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpinEdit1Change(Sender: TObject);
    procedure raschetClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  reiting_gr: Treiting_gr;
  f, sem: integer;

implementation

uses password, main1, prakt_progress1;
{$R *.dfm}

procedure Treiting_gr.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Treiting_gr.FormActivate(Sender: TObject);
begin
  DataModule1.Table_wr.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.indexname := 'grup';
  reiting_gr.StringGrid1.Cells[0, 0] := 'є';
  reiting_gr.StringGrid1.Cells[1, 0] := '  √руппы';
  reiting_gr.StringGrid1.Cells[2, 0] := '„исло студентов';
  reiting_gr.StringGrid1.Cells[3, 0] := ' –ейтинг';
  reiting_gr.StringGrid1.Cells[4, 0] := ' ол-во задолжников';
  reiting_gr.StringGrid1.Cells[5, 0] := '% задолжников';
  reiting_gr.StringGrid1.Cells[6, 0] := '% студентов c R>=50';
  reiting_gr.StringGrid1.Cells[7, 0] := '% студентов c R>=75';
  Edit1.Text := datetostr(date);
  Edit2.Text := fak_name;
  if (spfak <> 0) and (podrcod <> '02') then
    DBLookupComboBox1.Hide
  else
  begin
    DataModule1.Table_w34.filter := 'pin=98 or pin=57';
    DataModule1.Table_w34.filtered := True;
    Edit2.Hide;
  end;
  sem := SpinEdit1.value;
end;

procedure Treiting_gr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_wr.close;
  DataModule1.Table_w37.close;
  main.Enabled := True;
end;

procedure Treiting_gr.SpinEdit1Change(Sender: TObject);
begin
  sem := SpinEdit1.value;
end;

procedure Treiting_gr.raschetClick(Sender: TObject);
var
  k, n, gr, r, rgr, dolg, r50, r75, i: integer;
  prdolg, pr50, pr75, ngr, nkurs, rkurs: integer;
begin
  if RadioButton1.Checked = True then // зимн€€ сесси€
    sem := SpinEdit1.value * 2 - 1
  else
    sem := SpinEdit1.value * 2;
  ngr := (SpinEdit2.value - (2000 + SpinEdit1.value - 1)) * 10 mod 100;
  // номера групп
  nkurs := 0;
  rkurs := 0;
  DataModule1.Table_w37.filter := 'ngrup>' + inttostr(ngr) + ' and ngrup<' +
    inttostr(ngr + 9) + ' and spfak=' + inttostr(spfak) +
    ' and spotd=6 and priz=' + '''' + '1' + '''';
  DataModule1.Table_w37.filtered := True;
  DataModule1.Table_w37.first;
  reiting_gr.StringGrid1.RowCount := 2;
  k := 1;
  while not DataModule1.Table_w37.eof do
  begin
    gr := DataModule1.Table_w37.fieldbyname('pin').asinteger;
    if (SpinEdit2.value - 2008 = 0) then
    begin
      if RadioButton1.Checked = True then // зимн€€ сесси€
        sem := (SpinEdit1.value - (SpinEdit2.value - 2008)) * 2 - 1
      else
        sem := (SpinEdit1.value - (SpinEdit2.value - 2008)) * 2;
      DataModule1.Table_wr.filter := 'spgrup=' + inttostr(gr);
    end
    else
      DataModule1.Table_wr.filter := 'spgrup=' + inttostr(gr) + 'and kurs=' +
        inttostr(SpinEdit1.value);
    DataModule1.Table_wr.filtered := True;
    n := DataModule1.Table_wr.recordcount;

    DataModule1.Table_wr.first;
    r := 0;
    dolg := 0;
    r50 := 0;
    r75 := 0;
    for i := 1 to n do // цикл по кол-ву студентов в группе
    begin
      case sem of
        1:
          r := DataModule1.Table_wr.fieldbyname('r1').asinteger;
        2:
          r := DataModule1.Table_wr.fieldbyname('r2').asinteger;
        3:
          r := DataModule1.Table_wr.fieldbyname('r3').asinteger;
        4:
          r := DataModule1.Table_wr.fieldbyname('r4').asinteger;
        5:
          r := DataModule1.Table_wr.fieldbyname('r5').asinteger;
        6:
          r := DataModule1.Table_wr.fieldbyname('r6').asinteger;
        7:
          r := DataModule1.Table_wr.fieldbyname('r7').asinteger;
        8:
          r := DataModule1.Table_wr.fieldbyname('r8').asinteger;
        9:
          r := DataModule1.Table_wr.fieldbyname('r9').asinteger;
        10:
          r := DataModule1.Table_wr.fieldbyname('r10').asinteger;
      end;
      DataModule1.Table_wr.next;
      rgr := rgr + r;
      if r < 25 then
        dolg := dolg + 1; // кол-во задолженников
      if r > 49 then
        r50 := r50 + 1; // кол-во >=50
      if r > 74 then
        r75 := r75 + 1; // кол-во >=75
    end;
    if n <> 0 then
    begin
      rgr := round(rgr / n);
      prdolg := round(dolg * 100 / n);
      pr50 := round(r50 * 100 / n);
      pr75 := round(r75 * 100 / n);
      rkurs := rkurs + rgr * n;
      nkurs := nkurs + n;
      reiting_gr.StringGrid1.Cells[0, k] := inttostr(k);;
      reiting_gr.StringGrid1.Cells[1, k] := DataModule1.Table_w37.fieldbyname
        ('name').asstring;
      reiting_gr.StringGrid1.Cells[2, k] := inttostr(n);
      reiting_gr.StringGrid1.Cells[3, k] := inttostr(rgr);
      reiting_gr.StringGrid1.Cells[4, k] := inttostr(dolg);
      reiting_gr.StringGrid1.Cells[5, k] := inttostr(prdolg);
      reiting_gr.StringGrid1.Cells[6, k] := inttostr(pr50);
      reiting_gr.StringGrid1.Cells[7, k] := inttostr(pr75);
      k := k + 1;
      reiting_gr.StringGrid1.RowCount := reiting_gr.StringGrid1.RowCount + 1;
    end;
    DataModule1.Table_w37.next;
  end;
  if nkurs <> 0 then
    Edit3.Text := inttostr(round(rkurs / nkurs));
  reiting_gr.StringGrid1.RowCount := reiting_gr.StringGrid1.RowCount - 1;
  /// /////////////дл€ очистки используемых фильтров
  DataModule1.Table_w37.filter := '';
  DataModule1.Table_w37.filtered := True;
  DataModule1.Table_w37.filtered := false;
  DataModule1.Table_wr.filter := '';
  DataModule1.Table_wr.filtered := True;
  DataModule1.Table_wr.filtered := false;
end;

procedure Treiting_gr.Button2Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n, k: integer;
  Name_file: PWideChar;
  fil: OLEVariant;

begin

  Name_file := PChar('c:\doc\рейтинг по ' + inttostr(SpinEdit1.value) +
    ' курсу за ' + inttostr(sem) + ' сем.doc');
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := reiting_gr.StringGrid1.RowCount;
  prakt_progress.Label1.Caption := 'ќбработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\reiting2.doc'),
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
  t1.CELL(2, 2).RANGE.Text := SpinEdit1.value;
  t1.CELL(2, 4).RANGE.Text := sem;
  t1.CELL(3, 2).RANGE.Text := inttostr(SpinEdit2.value) + '/' +
    inttostr(SpinEdit2.value + 1);
  t1.CELL(3, 4).RANGE.Text := Edit1.Text;
  t1.CELL(4, 2).RANGE.Text := Edit3.Text;
  k := 1;
  for i := 1 to reiting_gr.StringGrid1.RowCount - 1 do
  begin
    t1.CELL(i + 7, 1).RANGE.Text := inttostr(k);
    k := k + 1;
    t1.CELL(i + 7, 2).RANGE.Text := reiting_gr.StringGrid1.Cells[1, i];
    t1.CELL(i + 7, 3).RANGE.Text := reiting_gr.StringGrid1.Cells[2, i];
    t1.CELL(i + 7, 4).RANGE.Text := reiting_gr.StringGrid1.Cells[3, i];
    t1.CELL(i + 7, 5).RANGE.Text := reiting_gr.StringGrid1.Cells[4, i];
    t1.CELL(i + 7, 6).RANGE.Text := reiting_gr.StringGrid1.Cells[5, i];
    t1.CELL(i + 7, 7).RANGE.Text := reiting_gr.StringGrid1.Cells[6, i];
    t1.CELL(i + 7, 8).RANGE.Text := reiting_gr.StringGrid1.Cells[7, i];
    if i < reiting_gr.StringGrid1.RowCount - 1 then
      t1.Rows.Add();
  end;

  prakt_progress.ProgressBar1.StepIt; // 5

  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = false then
    WordApp.Quit;
  WordApp := unassigned;
end;

procedure Treiting_gr.DBLookupComboBox1Click(Sender: TObject);
begin
  spfak := DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').asinteger;
end;

end.
