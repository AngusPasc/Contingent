unit reiting2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, OleServer, WordXP, ComObj;

type
  Treiting_stud = class(TForm)
    Button1: TButton;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    StringGrid1: TStringGrid;
    Button3: TButton;
    Label6: TLabel;
    Edit3: TEdit;
    Button4: TButton;
    Button5: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure zapolstring;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  reiting_stud: Treiting_stud;
  filt1, grup: string;
  gr, goduch, sem, kurs, otd, spec, spses, semestr: integer;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Treiting_stud.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure Treiting_stud.FormActivate(Sender: TObject);
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
  if gr <> 0 then
  begin
    DataModule1.Table_w1.filter := 'spgrup=' + inttostr(gr) + ' and spsost=1';
    DataModule1.Table_w1.filtered := True;
  end
  else
    DataModule1.Table_w1.filter := filt1;
  DataModule1.Table_w1.filtered := True;
  goduch := SpinEdit1.Value;
  Edit1.text := fak_name;
  Edit2.text := inttostr(DataModule1.Table_w1.RecordCount);
  sem := SpinEdit2.Value;
  semestr := sem;
  kurs := (sem div 2) + (sem mod 2);
end;

procedure Treiting_stud.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Treiting_stud.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  grup := DataModule1.Table_w37.fieldbyname('name').asstring;
  gr := DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').asinteger;
  otd := DBLookupComboBox1.Listsource.dataset.fieldbyname('spotd').asinteger;
  spec := DBLookupComboBox1.Listsource.dataset.fieldbyname('spspec').asinteger;
  sem := SpinEdit2.Value;
  semestr := sem;
  kurs := (sem div 2) + (sem mod 2);
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(otd) + ' and spspec=' +
    inttostr(spec) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
  DataModule1.Table_w1.filter := filt1 + ' and spsost=1 and spgrup=' +
    inttostr(gr);
  DataModule1.Table_w1.filtered := True;
  Edit2.text := inttostr(DataModule1.Table_w1.RecordCount);
end;

procedure Treiting_stud.Button2Click(Sender: TObject);
var
  k, i, pin, kp, t, j: integer;
  sum, sv: real;
  s1, s2, s3, s4, codbar: string;
begin
  // расчет рейтинга по факультету
  case sem of
    1:
      s2 := 'r1';
    2:
      s2 := 'r2';
    3:
      s2 := 'r3';
    4:
      s2 := 'r4';
    5:
      s2 := 'r5';
    6:
      s2 := 'r6';
    7:
      s2 := 'r7';
    8:
      s2 := 'r8';
    9:
      s2 := 'r9';
    10:
      s2 := 'r10';
  end;
  // находим содержимое сессии
  DataModule1.Table_w10.filtered := False;
  DataModule1.Table_w10.filter := 'spsessia=' + inttostr(spses) + ' and spgrup='
    + inttostr(gr) + 'and sem=' + inttostr(sem);
  DataModule1.Table_w10.filtered := True;
  kp := DataModule1.Table_w10.RecordCount; // кол-во предметов
  DataModule1.Table_w10.First;
  s1 := '';
  sv := 0;
  for i := 1 to kp do // формируем фильтр по дисциплинам
  begin
    sv := sv + DataModule1.Table_w10.fieldbyname('ves').Asfloat;
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
  k := DataModule1.Table_w1.RecordCount; // кол-во студентов в группе
  DataModule1.Table_w1.First;
  for i := 1 to k do
  begin
    // идем в успеваемость студента
    pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
    DataModule1.Table_w12.filtered := False;
    DataModule1.Table_w12.filter := 'acc=' + inttostr(pin) + ' and (' +
      s1 + ')';
    DataModule1.Table_w12.filtered := True;
    kp := DataModule1.Table_w12.RecordCount;
    DataModule1.Table_w12.First;
    // подсчитываем рейтинг
    sum := 0;
    for j := 1 to kp do
    begin
      sum := sum + DataModule1.Table_w12.fieldbyname('ritog').asinteger *
        DataModule1.Table_w12.fieldbyname('ves').Asfloat;
      DataModule1.Table_w12.Next;
    end;
    sum := sum / sv; // комплексный рейтинг студента
    codbar := DataModule1.Table_w1.fieldbyname('codbar').asstring;
    DataModule1.Query1.SQL.Clear;

    if not DataModule1.Table_wr.FindKey([pin]) then
    begin // поиск в accreiting
      s3 := 'insert  into accreiting (acc,codbar,spgrup,kurs,' + s2 +
        ') values (' + inttostr(pin) + ',' + '''' + codbar + '''';
      s4 := ',' + inttostr(gr) + ',' + inttostr(kurs) + ',' +
        inttostr(round(sum)) + ')';
    end
    else
    begin
      s3 := 'update accreiting set spgrup=' + inttostr(gr) + ',kurs=' +
        inttostr(kurs) + ',' + s2 + '=' + inttostr(round(sum));
      s4 := ' where acc=' + inttostr(pin);
    end;
    DataModule1.Query1.SQL.Add(s3 + s4);
    DataModule1.Query1.ExecSQL; // добавляем в accreiting
    DataModule1.Table_wr.Refresh;
    DataModule1.Table_w1.Next;
  end;
  Button2.Enabled := True;
  zapolstring;
end;

procedure Treiting_stud.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  spses := DBLookupComboBox2.Listsource.dataset.fieldbyname('pin').asinteger;

end;

procedure Treiting_stud.SpinEdit1Change(Sender: TObject);
begin
  goduch := SpinEdit1.Value;
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(otd) + ' and spspec=' +
    inttostr(spec) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
end;

procedure Treiting_stud.SpinEdit2Change(Sender: TObject);
begin
  sem := SpinEdit2.Value;
  semestr := sem;
  kurs := (sem div 2) + (sem mod 2);
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(otd) + ' and spspec=' +
    inttostr(spec) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
end;

procedure Treiting_stud.Button3Click(Sender: TObject);
begin
  zapolstring;
end;

procedure Treiting_stud.zapolstring;
var
  i, kp, pin, sumr, rgr, kolst, l, kk: integer;
  s1: string;
  r: array [1 .. 10] of integer;
begin
  DataModule1.Table_w1.filtered := False;
  DataModule1.Table_w1.filter := 'spgrup=' + inttostr(gr) + ' and spsost=1';
  DataModule1.Table_w1.filtered := True;
  reiting_stud.StringGrid1.RowCount := 2;
  reiting_stud.StringGrid1.Cells[0, 0] := '       ФИО студента';
  reiting_stud.StringGrid1.Cells[1, 0] := ' Комплексный R';
  reiting_stud.StringGrid1.Cells[2, 0] := ' Обобщенный R';
  reiting_stud.StringGrid1.Cells[3, 0] := 'АлтГТУ';
  reiting_stud.StringGrid1.Cells[0, 1] := '';
  reiting_stud.StringGrid1.Cells[1, 1] := '';
  reiting_stud.StringGrid1.Cells[2, 1] := '';
  reiting_stud.StringGrid1.Cells[3, 1] := '';
  i := 1;
  rgr := 0;
  kolst := DataModule1.Table_w1.RecordCount;
  if DataModule1.Table_w1.RecordCount <> 0 then
  begin
    DataModule1.Table_w1.First;

    while not DataModule1.Table_w1.Eof do
    begin
      reiting_stud.StringGrid1.Cells[0, i] := DataModule1.Table_w1.fieldbyname
        ('fio').asstring;
      pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
      if not DataModule1.Table_wr.FindKey([pin]) then
      begin
        reiting_stud.StringGrid1.Cells[1, i] := '';
        reiting_stud.StringGrid1.Cells[2, i] := '';
        reiting_stud.StringGrid1.Cells[3, 1] := '';
      end
      else
      begin
        sumr := 0;
        kk := 0;
        r[1] := DataModule1.Table_wr.fieldbyname('r1').asinteger;
        r[2] := DataModule1.Table_wr.fieldbyname('r2').asinteger;
        r[3] := DataModule1.Table_wr.fieldbyname('r3').asinteger;
        r[4] := DataModule1.Table_wr.fieldbyname('r4').asinteger;
        r[5] := DataModule1.Table_wr.fieldbyname('r5').asinteger;
        r[6] := DataModule1.Table_wr.fieldbyname('r6').asinteger;
        r[7] := DataModule1.Table_wr.fieldbyname('r7').asinteger;
        r[8] := DataModule1.Table_wr.fieldbyname('r8').asinteger;
        r[9] := DataModule1.Table_wr.fieldbyname('r9').asinteger;
        r[10] := DataModule1.Table_wr.fieldbyname('r10').asinteger;
        case sem of
          1:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[1]);
              rgr := rgr + r[1];
              sumr := r[1];
            end;
          2:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[2]);
              rgr := rgr + r[2];
              for l := 1 to 2 do
              begin
                sumr := sumr + r[l];
                if r[l] > 0 then
                  kk := kk + 1;
              end;
              sumr := round(sumr / sem)
            end;
          3:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[3]);
              rgr := rgr + r[3];
              for l := 1 to 3 do
                sumr := sumr + r[l];
              sumr := round(sumr / sem)
            end;
          4:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[4]);
              rgr := rgr + r[4];
              for l := 1 to 4 do
                sumr := sumr + r[l];
              sumr := round(sumr / sem)
            end;
          5:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[5]);
              rgr := rgr + r[5];
              for l := 1 to 5 do
                sumr := sumr + r[l];
              sumr := round(sumr / sem)
            end;
          6:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[6]);
              rgr := rgr + r[6];
              for l := 1 to 6 do
                sumr := sumr + r[l];
              sumr := round(sumr / sem)
            end;
          7:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[7]);
              rgr := rgr + r[7];
              for l := 1 to 7 do
                sumr := sumr + r[l];
              sumr := round(sumr / sem)
            end;
          8:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[8]);
              rgr := rgr + r[8];
              for l := 1 to 8 do
                sumr := sumr + r[l];
              sumr := round(sumr / sem)
            end;
          9:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[9]);
              rgr := rgr + r[9];
              for l := 1 to 9 do
                sumr := sumr + r[l];
              sumr := round(sumr / sem)
            end;
          10:
            begin
              reiting_stud.StringGrid1.Cells[1, i] := inttostr(r[10]);
              rgr := rgr + r[10];
              for l := 1 to 10 do
                sumr := sumr + r[l];
              sumr := round(sumr / sem)
            end;
        end;
        reiting_stud.StringGrid1.Cells[2, i] := inttostr(sumr);
      end;
      reiting_stud.StringGrid1.Cells[3, i] := DataModule1.Table_wr.fieldbyname
        ('rbar').asstring;
      DataModule1.Table_w1.Next;
      i := i + 1;
      reiting_stud.StringGrid1.RowCount :=
        reiting_stud.StringGrid1.RowCount + 1;
    end;
  end;
  rgr := round(rgr / kolst);
  Edit3.text := inttostr(rgr);
  reiting_stud.StringGrid1.RowCount := reiting_stud.StringGrid1.RowCount - 1;
end;

procedure Treiting_stud.Button4Click(Sender: TObject);
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
  n := reiting_stud.StringGrid1.RowCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\reiting1.doc'),
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
  for i := 1 to reiting_stud.StringGrid1.RowCount - 1 do
  begin
    t1.CELL(i + 4, 1).RANGE.text := inttostr(k);
    k := k + 1;
    t1.CELL(i + 4, 2).RANGE.text := reiting_stud.StringGrid1.Cells[0, i];
    t1.CELL(i + 4, 3).RANGE.text := reiting_stud.StringGrid1.Cells[1, i];
    if i < reiting_stud.StringGrid1.RowCount - 1 then
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

procedure Treiting_stud.Button5Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n, k, kp, j: integer;
  Name_file: PWideChar;
  fil: OLEVariant;
  namedisc: array [1 .. 20] of string;
  coddisc: array [1 .. 20] of longint;
begin
  for i := 1 to 20 do
  begin
    namedisc[i] := '';
    coddisc[i] := 0;
  end;
  Name_file := PChar('c:\doc\Итоги сессии  ' + grup + ' ' + inttostr(sem) +
    ' семестр' + '.doc'); // аттестационная ведомость
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  DataModule1.Table_w1.filter := 'spsost=1 and spgrup=' + inttostr(gr);
  DataModule1.Table_w1.filtered := True;
  n := DataModule1.Table_w1.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\vedom01.doc'),
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
  t1.CELL(3, 2).RANGE.text := trim(fak_name);
  t1.CELL(3, 4).RANGE.text := trim(grup);
  t1.CELL(4, 4).RANGE.text := inttostr(sem);
  // находим содержимое сессии
  DataModule1.Table_w10.filtered := False;
  DataModule1.Table_w10.filter := 'spsessia=' + inttostr(spses) + ' and spgrup='
    + inttostr(gr) + 'and sem=' + inttostr(sem);
  DataModule1.Table_w10.filtered := True;
  kp := DataModule1.Table_w10.RecordCount; // кол-во предметов
  DataModule1.Table_w10.First;
  for i := 1 to kp do // формируем массив названий и коды  дисциплин в сессии
  begin
    namedisc[i] := DataModule1.Table_w10.fieldbyname('discip').asstring;
    coddisc[i] := DataModule1.Table_w10.fieldbyname('pin').asinteger;
    // печатаем в шапку таблицы все дисциплины
    if (namedisc[i] <> '') or (k <= 12) then
      t1.CELL(5, i + 2).RANGE.text := namedisc[i];
    DataModule1.Table_w10.Next;
  end;
  prakt_progress.ProgressBar1.StepIt; // 5
  DataModule1.Table_w12.IndexName := 'accsess';
  DataModule1.Table_w12.filtered := False;
  DataModule1.Table_w1.filtered := False;
  DataModule1.Table_w1.filter := 'spgrup=' + inttostr(gr) + ' and spsost=1';
  DataModule1.Table_w1.filtered := True;
  k := DataModule1.Table_w1.RecordCount; // кол-во студентов в группе
  DataModule1.Table_w1.First;
  for i := 1 to k do
  begin
    // идем в успеваемость студента
    pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
    t1.CELL(i + 8, 1).RANGE.text := inttostr(i);
    t1.CELL(i + 8, 2).RANGE.text :=
      copy(trim(DataModule1.Table_w1.fieldbyname('fam').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('vname').asstring), 1, 70);
    for j := 1 to kp do
    begin
      if not DataModule1.Table_w12.FindKey([pin, coddisc[j]]) then
        t1.CELL(i + 8, j + 2).RANGE.text := ''
      else
        t1.CELL(i + 8, j + 2).RANGE.text := DataModule1.Table_w12.fieldbyname
          ('ritog').asstring;
    end;
    prakt_progress.ProgressBar1.StepIt;
    DataModule1.Table_w1.Next;
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

end;

end.
