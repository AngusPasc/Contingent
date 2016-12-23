unit reiting3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, OleServer, WordXP, ComObj;

type
  Treiting_acc = class(TForm)
    BitBtn7: TBitBtn;
    StringGrid1: TStringGrid;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit1: TSpinEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Button3: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure zapolstring1;
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  reiting_acc: Treiting_acc;
  filt1, grup: string;
  gr, goduch, sem, kurs, otd, spec, spses, semestr: integer;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Treiting_acc.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  filt1 := 'spfak=' + inttostr(spfak);
  DataModule1.Table_wr.Open;
  DataModule1.Table_wr.IndexName := 'acc';
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.IndexName := 'grup';
  DataModule1.Table_w10.Open;
  DataModule1.Table_w11.Open;
  DataModule1.Table_w12.Open;
  DataModule1.Table_w37.filter := filt1 + ' and priz=' + '''' + '1' + '''';
  DataModule1.Table_w37.filtered := True;
  DataModule1.Table_w1.filter := filt1;
  DataModule1.Table_w1.filtered := True;
  goduch := 2008;
  Edit1.text := fak_name;
end;

procedure Treiting_acc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w10.Close;
  DataModule1.Table_w11.Close;
  DataModule1.Table_w12.Close;
  DataModule1.Table_w37.Close;
  DataModule1.Table_wr.Close;
  DataModule1.Table_w1.filtered := False;
  DataModule1.Table_w37.filtered := False;
  main.Enabled := True;
end;

procedure Treiting_acc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Treiting_acc.SpinEdit1Change(Sender: TObject);
begin
  goduch := SpinEdit1.value;
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(otd) + ' and spspec=' +
    inttostr(spec) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
end;

procedure Treiting_acc.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  grup := DataModule1.Table_w37.fieldbyname('name').asstring;
  gr := DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').asinteger;
  otd := DBLookupComboBox1.Listsource.dataset.fieldbyname('spotd').asinteger;
  spec := DBLookupComboBox1.Listsource.dataset.fieldbyname('spspec').asinteger;
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(otd) + ' and spspec=' +
    inttostr(spec) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
  DataModule1.Table_w1.filter := filt1 + ' and spsost=1 and spgrup=' +
    inttostr(gr);
  DataModule1.Table_w1.filtered := True;
end;

procedure Treiting_acc.SpinEdit2Change(Sender: TObject);
begin
  sem := SpinEdit2.value;
  semestr := sem;
  kurs := (sem div 2) + (sem mod 2);
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(otd) + ' and spspec=' +
    inttostr(spec) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
end;

procedure Treiting_acc.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  spses := DBLookupComboBox2.Listsource.dataset.fieldbyname('pin').asinteger;

end;

procedure Treiting_acc.Button3Click(Sender: TObject);
begin
  zapolstring1;
end;

procedure Treiting_acc.zapolstring1;
var
  r, i, kp, pin, dolg, kol4, kol5, j: integer;
  s1: string;
begin
  DataModule1.Table_w10.filtered := False;
  DataModule1.Table_w10.filter := 'spgrup=' + inttostr(gr) + ' and sem=' +
    inttostr(sem);
  DataModule1.Table_w10.filtered := True;
  DataModule1.Table_w10.First;
  kp := DataModule1.Table_w10.RecordCount; // кол-во предметов
  s1 := '';
  for i := 1 to kp do // формируем фильтр по дисциплинам
  begin
    if i = 1 then
      s1 := 'uchsessia=' + DataModule1.Table_w10.fieldbyname('pin').asstring
    else
      s1 := s1 + ' or uchsessia=' + DataModule1.Table_w10.fieldbyname
        ('pin').asstring;
    DataModule1.Table_w10.Next;
  end;
  DataModule1.Table_w1.filtered := False;
  DataModule1.Table_w1.filter := 'spgrup=' + inttostr(gr) + ' and spsost=1';
  DataModule1.Table_w1.filtered := True;
  reiting_acc.StringGrid1.RowCount := 2;
  reiting_acc.StringGrid1.Cells[0, 0] := ' №';
  reiting_acc.StringGrid1.Cells[1, 0] := '       ФИО студента';
  reiting_acc.StringGrid1.Cells[2, 0] := ' Рейтинг';
  reiting_acc.StringGrid1.Cells[3, 0] := 'Кол-во задолжностей';
  reiting_acc.StringGrid1.Cells[4, 0] := 'Только 4 и 5';
  reiting_acc.StringGrid1.Cells[5, 0] := 'Только 5';

  reiting_acc.StringGrid1.Cells[0, 1] := '';
  reiting_acc.StringGrid1.Cells[1, 1] := '';
  reiting_acc.StringGrid1.Cells[2, 1] := '';
  reiting_acc.StringGrid1.Cells[3, 1] := '';
  reiting_acc.StringGrid1.Cells[4, 1] := '';
  reiting_acc.StringGrid1.Cells[5, 1] := '';
  i := 1;
  if DataModule1.Table_w1.RecordCount <> 0 then
  begin
    DataModule1.Table_w1.First;
    while not DataModule1.Table_w1.Eof do
    begin
      reiting_acc.StringGrid1.Cells[0, i] := inttostr(i);
      reiting_acc.StringGrid1.Cells[1, i] := DataModule1.Table_w1.fieldbyname
        ('fio').asstring;
      pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
      if not DataModule1.Table_wr.FindKey([pin]) then
      begin // поиск в таблице рейтингов
        reiting_acc.StringGrid1.Cells[1, i] := '';
        reiting_acc.StringGrid1.Cells[2, i] := '';
        reiting_acc.StringGrid1.Cells[3, 1] := '';
        reiting_acc.StringGrid1.Cells[4, 1] := '';
        reiting_acc.StringGrid1.Cells[5, 1] := '';
      end
      else
      begin
        case sem of
          1:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r1').asstring;
          2:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r2').asstring;
          3:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r3').asstring;
          4:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r4').asstring;
          5:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r5').asstring;
          6:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r6').asstring;
          7:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r7').asstring;
          8:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r8').asstring;
          9:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r9').asstring;
          10:
            reiting_acc.StringGrid1.Cells[2, i] :=
              DataModule1.Table_wr.fieldbyname('r10').asstring;
        end;
        // поиск в таблице успеваемости по студенту за семестр (uchsucs)
        DataModule1.Table_w12.filtered := False;
        DataModule1.Table_w12.filter := 'acc=' + inttostr(pin) + ' and ('
          + s1 + ')';
        DataModule1.Table_w12.filtered := True;
        kp := DataModule1.Table_w12.RecordCount;
        DataModule1.Table_w12.First;
        dolg := 0;
        kol4 := 0;
        kol5 := 0;
        for j := 1 to kp do
        begin
          r := DataModule1.Table_w12.fieldbyname('ritog').asinteger;
          if r < 25 then
            dolg := dolg + 1
          else
          begin
            if (r > 49) and (r < 75) then
              kol4 := kol4 + 1; // кол-во 4
            if r > 75 then
              kol5 := kol5 + 1;
          end; // кол-во 5
          DataModule1.Table_w12.Next;
        end;
        if dolg > 0 then
          reiting_acc.StringGrid1.Cells[3, i] := inttostr(dolg);
        if (kol4 <> 0) and (kp = (kol4 + kol5)) then
          reiting_acc.StringGrid1.Cells[4, i] := '*';
        if (kol5 <> 0) and (kp = kol5) then
          reiting_acc.StringGrid1.Cells[5, i] := '*';
      end;
      DataModule1.Table_w1.Next;
      if reiting_acc.StringGrid1.Cells[1, i] <> '' then
      begin
        i := i + 1;
        reiting_acc.StringGrid1.RowCount :=
          reiting_acc.StringGrid1.RowCount + 1;
      end;
    end;
  end;
  reiting_acc.StringGrid1.RowCount := reiting_acc.StringGrid1.RowCount - 1;
end;

procedure Treiting_acc.BitBtn7Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n, k: integer;
  Name_file: PWideChar;
  fil: OLEVariant;

begin

  Name_file := PChar('c:\doc\рейтинг по гр.' + grup + ' за ' + inttostr(sem) +
    ' сем.doc');
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := reiting_acc.StringGrid1.RowCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\reiting3.doc'),
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
  t1.CELL(2, 2).RANGE.text := grup;
  t1.CELL(2, 4).RANGE.text := sem;
  k := 1;
  for i := 1 to reiting_acc.StringGrid1.RowCount - 1 do
  begin
    t1.CELL(i + 4, 1).RANGE.text := inttostr(k);
    k := k + 1;
    t1.CELL(i + 4, 2).RANGE.text := reiting_acc.StringGrid1.Cells[1, i];
    t1.CELL(i + 4, 3).RANGE.text := reiting_acc.StringGrid1.Cells[2, i];
    t1.CELL(i + 4, 4).RANGE.text := reiting_acc.StringGrid1.Cells[3, i];
    t1.CELL(i + 4, 5).RANGE.text := reiting_acc.StringGrid1.Cells[4, i];
    t1.CELL(i + 4, 6).RANGE.text := reiting_acc.StringGrid1.Cells[5, i];
    if i < reiting_acc.StringGrid1.RowCount - 1 then
      t1.Rows.Add();
  end;

  prakt_progress.ProgressBar1.StepIt; // 5

  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
end;

end.
