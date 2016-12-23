unit stud_sess2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, OleServer, WordXP, ComObj, DBGrids;

type
  Tstud_usp = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    Peresdacha: TBitBtn;
    Vvod: TBitBtn;
    BitBtn5: TBitBtn;
    SpinEdit2: TSpinEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label10: TLabel;
    SpinEdit1: TSpinEdit;
    Label8: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    Edit4: TEdit;
    Label11: TLabel;
    Edit5: TEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    StringGrid1: TStringGrid;
    BitBtn6: TBitBtn;
    Label6: TLabel;
    Dataekz: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    Edit2: TEdit;
    Edit6: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure SpinEdit1Click(Sender: TObject);
    procedure Zapolnenie;
    procedure BitBtn6Click(Sender: TObject);
    procedure VvodClick(Sender: TObject);
    procedure PeresdachaClick(Sender: TObject);
    procedure DataekzCloseUp(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataekzChange(Sender: TObject);
  private
    { Private declarations }
    izmdv: word;
  public
    { Public declarations }
  end;

var
  stud_usp: Tstud_usp;
  gr, prep, sem, Disc, spses, goduch, fo, kurs, sp, kont, novvod: integer;
  stpin: array [1 .. 50] of integer;
  grup, namedisc, namekont, fiopr: string;
  ves: real;
  ddata: Tdatetime;

implementation

uses main1, prakt_progress1, stud_usp2, stud_usp3, stud_usp4;
{$R *.dfm}

procedure Tstud_usp.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_usp.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.Open;
  DataModule1.Table_w10.Open;
  DataModule1.Table_w11.Open;
  DataModule1.Table_w11k.Open;
  DataModule1.Table_w12.Open;
  DataModule1.Table_w12.IndexName := 'accsesskont';
  // DataModule1.Table_w12m.Open;
  DataModule1.Table_w12h.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.IndexName := 'grup';
  DataModule1.Table_w37.filter := 'spfak=' + inttostr(spfak) +
    ' and grup<>Null';
  DataModule1.Table_w37.filtered := True;
  DataModule1.Table22.Open;
  DataModule1.Table22.IndexName := 'fio';
  DataModule1.Table22.filter := 'codnaim<>5';
  DataModule1.Table22.filtered := True;
  if spkaf = '61' then
  begin
    BitBtn1.Enabled := True;
    BitBtn3.Enabled := False;
    BitBtn4.Enabled := False;
    BitBtn7.Enabled := False;
    BitBtn5.Enabled := True;
    Vvod.Enabled := False;
    Peresdacha.Enabled := True;
  end;
  BitBtn6.Enabled := False;

end;

procedure Tstud_usp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.close;
  DataModule1.Table_w10.close;
  DataModule1.Table_w11.close;
  DataModule1.Table_w11k.close;
  DataModule1.Table_w12.close;
  // DataModule1.Table_w12m.Close;
  DataModule1.Table_w12h.close;
  DataModule1.Table_w37.close;
  DataModule1.Table22.close;
  DataModule1.Table_w1.filtered := False;
  DataModule1.Table_w37.filtered := False;
  DataModule1.Table_w10.filtered := False;
  DataModule1.Table22.filtered := False;
  main.Enabled := True;
end;

procedure Tstud_usp.DBLookupComboBox4CloseUp(Sender: TObject);
var
  pg: word;
  chgr, chg: string;
begin
  grup := DataModule1.Table_w37.fieldbyname('name').asstring;
  gr := DBLookupComboBox4.Listsource.dataset.fieldbyname('pin').asinteger;
  sp := DataModule1.Table_w37.fieldbyname('spspec').asinteger;
  fo := DataModule1.Table_w37.fieldbyname('spotd').asinteger;
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(fo) + ' and spspec=' +
    inttostr(sp) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
  if StringGrid1.RowCount >= 1 then
  begin
    StringGrid1.RowCount := 1;
    StringGrid1.Rows[0].Clear;
    Edit1.Text := '';
    if DBLookupComboBox2.Text <> '' then
      Edit2.Visible := True;
    if DBLookupComboBox1.Text <> '' then
      Edit6.Visible := True;
  end;
  pg := Pos('-', DBLookupComboBox4.Text);
  chgr := Copy(DBLookupComboBox4.Text, pg + 1, 1);
  chg := Copy(inttostr(SpinEdit1.Value), Length(inttostr(SpinEdit1.Value)), 1);
  if StrToInt(chgr) < StrToInt(chg) then
    Edit3.Text := inttostr(StrToInt(chg) - StrToInt(chgr) + 1)
  else if StrToInt(chgr) = StrToInt(chg) then
    Edit3.Text := '1'
  else
    Edit3.Text := inttostr(StrToInt(chg) + 10 - StrToInt(chgr) + 1);
  if DBLookupComboBox3.Text <> '' then
  begin
    if Pos('Летн', DBLookupComboBox3.Text) <> 0 then
      SpinEdit2.Value := StrToInt(Edit3.Text) * 2
    else
      SpinEdit2.Value := StrToInt(Edit3.Text) * 2 - 1;
    DBLookupComboBox3CloseUp(Sender);
  end;
  BitBtn6.Enabled := True;
end;

procedure Tstud_usp.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  kont := DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').asinteger;
  namekont := DataModule1.Table_w11k.fieldbyname('name').asstring;
  if Edit6.Visible = True then
    Edit6.Visible := False;
  BitBtn6.Enabled := True;
end;

procedure Tstud_usp.SpinEdit2Change(Sender: TObject);
begin
  sem := SpinEdit2.Value;
  kurs := (sem div 2) + (sem mod 2);
  Edit3.Text := inttostr(kurs);
  goduch := SpinEdit1.Value;
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(fo) + ' and spspec=' +
    inttostr(sp) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
  BitBtn6.Enabled := True;
end;

procedure Tstud_usp.DBLookupComboBox2CloseUp(Sender: TObject);
var
  s: string;
begin
  Disc := DBLookupComboBox2.Listsource.dataset.fieldbyname('pin').asinteger;
  namedisc := DataModule1.Table_w10.fieldbyname('discip').asstring;
  ves := DataModule1.Table_w10.fieldbyname('ves').AsFloat;
  s := ''; // фильтр для spkontr
  fiopr := DataModule1.Table_w10.fieldbyname('fio').asstring;
  Edit1.Text := fiopr;
  if DataModule1.Table_w10.fieldbyname('ekz').asstring <> '0' then
    s := 'pin=1';
  if DataModule1.Table_w10.fieldbyname('zach').asstring <> '0' then
  begin
    if s <> '' then
      s := s + ' or pin=2'
    else
      s := 'pin=2';
  end;
  if DataModule1.Table_w10.fieldbyname('kr').asstring <> '0' then
  begin
    if s <> '' then
      s := s + ' or pin=3'
    else
      s := 'pin=3';
  end;
  if DataModule1.Table_w10.fieldbyname('kp').asstring <> '0' then
  begin
    if s <> '' then
      s := s + ' or pin=4'
    else
      s := 'pin=4';
  end;
  DataModule1.Table_w11k.filter := s;
  DataModule1.Table_w11k.filtered := True;
  if Edit2.Visible then
    Edit2.Visible := False;
  if DBLookupComboBox1.Text <> '' then
    Edit6.Visible := True;
  BitBtn6.Enabled := True;
end;

procedure Tstud_usp.DBLookupComboBox3CloseUp(Sender: TObject);
begin
  if Pos('Летн', DBLookupComboBox3.Text) <> 0 then
    SpinEdit2.Value := StrToInt(Edit3.Text) * 2
  else
    SpinEdit2.Value := StrToInt(Edit3.Text) * 2 - 1;
  spses := DBLookupComboBox3.Listsource.dataset.fieldbyname('pin').asinteger;
  Edit4.Text := DataModule1.Table_w11.fieldbyname('begdate').asstring;
  Edit5.Text := DataModule1.Table_w11.fieldbyname('enddate').asstring;
  DataModule1.Table_w10.filtered := False;
  DataModule1.Table_w10.filter := 'spsessia=' + inttostr(spses) + ' and spgrup='
    + inttostr(gr);
  DataModule1.Table_w10.filtered := True;
  BitBtn6.Enabled := True;
end;

procedure Tstud_usp.SpinEdit1Click(Sender: TObject);
begin
  goduch := SpinEdit1.Value;
  DataModule1.Table_w11.filtered := False;
  DataModule1.Table_w11.filter := 'spotd=' + inttostr(fo) + ' and spspec=' +
    inttostr(sp) + ' and goduch=' + inttostr(goduch) + ' and kurs=' +
    inttostr(kurs);
  DataModule1.Table_w11.filtered := True;
  BitBtn6.Enabled := True;
end;

procedure Tstud_usp.Zapolnenie;
var
  acc_pin, i, ii, oc: integer;
begin
  for i := 1 to 50 do
    accpin[i] := 0;
  stud_usp.StringGrid1.RowCount := 2;
  stud_usp.StringGrid1.Cells[0, 0] := '  №';
  stud_usp.StringGrid1.Cells[1, 0] := '       ФИО студента';
  stud_usp.StringGrid1.Cells[2, 0] := 'РЕЙТИНГ сем.';
  stud_usp.StringGrid1.Cells[3, 0] := 'РЕЙТИНГ экз(зач)';
  stud_usp.StringGrid1.Cells[4, 0] := 'РЕЙТИНГ итог.';
  stud_usp.StringGrid1.Cells[5, 0] := 'ОТМЕТКА итог.';
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w12.IndexName := 'accsesskont';
  // DataModule1.Table_w1.filter:='spgrup='+inttostr(gr)+' and kurs='+inttostr(kurs)+' and spsost=1';
  DataModule1.Table_w1.filtered := False;
  DataModule1.Table_w1.filter := 'spgrup=' + inttostr(gr) + ' and spsost=1';
  DataModule1.Table_w1.filtered := True;
  i := 1;
  ii := 1;
  novvod := 0;
  if DataModule1.Table_w1.recordcount <> 0 then
  begin
    DataModule1.Table_w1.first;
    while not DataModule1.Table_w1.Eof do
    begin
      stud_usp.StringGrid1.Cells[0, i] := inttostr(i);
      stud_usp.StringGrid1.Cells[1, i] := DataModule1.Table_w1.fieldbyname
        ('fio').asstring;
      stud_pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
      accpin[ii] := stud_pin;

      if not DataModule1.Table_w12.FindKey([stud_pin, Disc, kont]) then
      begin
        stud_usp.StringGrid1.Cells[2, i] := '0';
        stud_usp.StringGrid1.Cells[3, i] := '0';
        stud_usp.StringGrid1.Cells[4, i] := '0';
        stud_usp.StringGrid1.Cells[5, i] := '';
        datavv[ii] := -1;
        novvod := 1;
      end
      else
      begin
        stud_usp.StringGrid1.Cells[2, i] := DataModule1.Table_w12.fieldbyname
          ('rsem').asstring;
        Dataekz.Date := DataModule1.Table_w12.fieldbyname('datavv').AsDateTime;
        stud_usp.StringGrid1.Cells[4, i] := DataModule1.Table_w12.fieldbyname
          ('ritog').asstring;
        oc := DataModule1.Table_w12.fieldbyname('ritog').asinteger;
        if kont = 1 then
        begin
          if DataModule1.Table_w12.fieldbyname('marks').asinteger = -1 then
            stud_usp.StringGrid1.Cells[3, i] := 'н/я'
          else
            stud_usp.StringGrid1.Cells[3, i] :=
              DataModule1.Table_w12.fieldbyname('rekzzach').asstring;
          if oc < 25 then
            stud_usp.StringGrid1.Cells[5, i] := 'неудовлетворительно'
          else if oc < 50 then
            stud_usp.StringGrid1.Cells[5, i] := 'удовлетворительно'
          else if oc < 75 then
            stud_usp.StringGrid1.Cells[5, i] := 'хорошо'
          else
            stud_usp.StringGrid1.Cells[5, i] := 'отлично'
        end
        else
        begin
          stud_usp.StringGrid1.Cells[3, i] := DataModule1.Table_w12.fieldbyname
            ('rekzzach').asstring;
          if oc < 25 then
            stud_usp.StringGrid1.Cells[5, i] := 'незачтено'
          else
            stud_usp.StringGrid1.Cells[5, i] := 'зачтено';
        end;
        // stud_usp.StringGrid1.Cells[5,i]:=DataModule1.Table_w12.fieldbyname('ocenka').AsString;
        datavv[ii] := daysbetween(Date,
          DataModule1.Table_w12.fieldbyname('datazp').AsDateTime);
      end;
      DataModule1.Table_w1.next;
      i := i + 1;
      ii := ii + 1;
      stud_usp.StringGrid1.RowCount := stud_usp.StringGrid1.RowCount + 1;
    end;
  end
  else
  begin
    showmessage('Данных по этой группе нет! Выберите другую!');
    exit;
  end;
  stud_usp.StringGrid1.RowCount := stud_usp.StringGrid1.RowCount - 1;
end;

procedure Tstud_usp.BitBtn6Click(Sender: TObject);
begin
  { if izmdv<>1 then begin
    MessageDlg('Редактируйте дату сдачи',mtInformation,[mbOk],0);
    //Exit;
    end; }
  if Edit6.Visible and (Edit6.Text = '') then
  begin
    MessageDlg('Редактируйте вид контроля', mtInformation, [mbOk], 0);
    exit;
  end;
  Zapolnenie;
  // if novvod=1 then begin
  Vvod.Enabled := True;
  BitBtn1.Enabled := True;
  // end;
  BitBtn6.Enabled := False;
  BitBtn5.Enabled := True;
end;

procedure Tstud_usp.VvodClick(Sender: TObject);
begin
  if StringGrid1.Row = 0 then
    exit;
  if datavv[StringGrid1.Row] = -1 then
  begin
    act := 1; // добавление записи
    Enabled := False;
    Application.CreateForm(Tstud_usp_up, stud_usp_up);
    stud_usp_up.Show;
  end
  else if datavv[StringGrid1.Row] = 0 then
  begin
    act := 2; // редактирование записи
    Enabled := False;
    Application.CreateForm(Tstud_usp_up, stud_usp_up);
    stud_usp_up.Show;
  end
  else
  begin
    showmessage('   Данные были уже введены!' + #13 +
      ' Для изменения результата сдачи используйте кнопку' + #13 +
      '        "Пересдача"');
    Peresdacha.Enabled := True;
    Peresdacha.SetFocus;
  end;

end;

procedure Tstud_usp.PeresdachaClick(Sender: TObject);
begin
  act := 3; // редактирование записи (пересдача)
  Enabled := False;
  Application.CreateForm(Tstud_usp_up, stud_usp_up);
  stud_usp_up.Show;
end;

procedure Tstud_usp.DataekzCloseUp(Sender: TObject);
begin
  ddata := Dataekz.Date;
end;

procedure Tstud_usp.BitBtn5Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_hissessia, stud_hissessia);
  stud_hissessia.Show;
end;

procedure Tstud_usp.BitBtn1Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tusp_import, usp_import);
  usp_import.Show;
end;

procedure Tstud_usp.BitBtn3Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  spec, sem, Disc, prep: string;
  Name_file: PWideChar;
  fil: OLEVariant;

begin // разрешение на одного студента

  Name_file := PChar('c:\doc\разрешенка на экз_зач .doc');
  prakt_progress := tprakt_progress.Create(Application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.Show;
  prakt_progress.Label1.Caption := 'Обработка 1 записи.';
  Application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\razresh1.doc'),
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
  t1.CELL(3, 2).RANGE.Text := fak_name;
  t1.CELL(3, 4).RANGE.Text := grup;
  t1.CELL(4, 2).RANGE.Text := namedisc;
  t1.CELL(5, 2).RANGE.Text := fiopr;
  t1.CELL(6, 2).RANGE.Text := 'до ' + DateToStr(Date + 3);
  t1.CELL(10, 1).RANGE.Text := stud_usp.StringGrid1.Cells[1, StringGrid1.Row];
  t1.CELL(10, 2).RANGE.Text := stud_usp.StringGrid1.Cells[2, StringGrid1.Row];
  t1.CELL(11, 4).RANGE.Text := DateToStr(Date);
  prakt_progress.ProgressBar1.StepIt; // 5

  prakt_progress.free;

  WordApp.Visible := True;
  if WordApp.Visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.Visible = False then
    WordApp.Quit;
  WordApp := unassigned;
end;

procedure Tstud_usp.BitBtn4Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n: integer;
  spec, sem, Disc, prep: string;
  Name_file: PWideChar;
  fil: OLEVariant;

begin // разрешение на одного студента

  Name_file := PChar('c:\doc\разрешенка на зач .doc');
  prakt_progress := tprakt_progress.Create(Application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.Show;
  prakt_progress.Label1.Caption := 'Обработка 1 записи.';
  Application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\razresh2.doc'),
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
  t1.CELL(3, 2).RANGE.Text := fak_name;
  t1.CELL(3, 4).RANGE.Text := grup;
  t1.CELL(4, 2).RANGE.Text := namedisc;
  t1.CELL(5, 2).RANGE.Text := fiopr;
  t1.CELL(6, 2).RANGE.Text := 'до ' + DateToStr(Date + 3);
  t1.CELL(10, 1).RANGE.Text := stud_usp.StringGrid1.Cells[1, StringGrid1.Row];
  t1.CELL(10, 2).RANGE.Text := stud_usp.StringGrid1.Cells[2, StringGrid1.Row];
  t1.CELL(11, 4).RANGE.Text := DateToStr(Date);
  prakt_progress.ProgressBar1.StepIt; // 5

  prakt_progress.free;

  WordApp.Visible := True;
  if WordApp.Visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.Visible = False then
    WordApp.Quit;
  WordApp := unassigned;

end;

procedure Tstud_usp.BitBtn7Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n, k: integer;
  spec, sem, Disc, prep: string;
  Name_file: PWideChar;
  fil: OLEVariant;

begin // разрешение на одного студента

  Name_file := PChar('c:\doc\доп.ведомость .doc');
  prakt_progress := tprakt_progress.Create(Application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.Show;
  n := DataModule1.Table_w1.recordcount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  Application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\vedomn3.doc'),
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
  t1.CELL(3, 2).RANGE.Text := namedisc;
  t1.CELL(3, 4).RANGE.Text := krfak;
  t1.CELL(4, 2).RANGE.Text := fiopr;
  t1.CELL(4, 4).RANGE.Text := '';
  t1.CELL(5, 4).RANGE.Text := inttostr(SpinEdit2.Value);
  t1.CELL(6, 2).RANGE.Text := DateToStr(Date);
  t1.CELL(6, 5).RANGE.Text := grup;
  k := 1;
  for i := 1 to stud_usp.StringGrid1.RowCount - 1 do
  begin
    if ((stud_usp.StringGrid1.Cells[3, i] <> 'н/я') and
      (StrToInt(stud_usp.StringGrid1.Cells[3, i]) < 25)) or
      (stud_usp.StringGrid1.Cells[0, i] = '*') or
      (stud_usp.StringGrid1.Cells[3, i] = 'н/я') then
    begin
      t1.CELL(i + 8, 1).RANGE.Text := inttostr(k);
      k := k + 1;
      t1.CELL(i + 8, 2).RANGE.Text :=
        Copy(stud_usp.StringGrid1.Cells[1, i], 1, 27);
      t1.CELL(i + 8, 4).RANGE.Text := stud_usp.StringGrid1.Cells[2, i];
      if i < stud_usp.StringGrid1.RowCount - 1 then
        t1.Rows.Add();
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 5

  prakt_progress.free;

  WordApp.Visible := True;
  if WordApp.Visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.Visible = False then
    WordApp.Quit;
  WordApp := unassigned;
end;

procedure Tstud_usp.StringGrid1DblClick(Sender: TObject);
begin
  if stud_usp.StringGrid1.Cells[0, StringGrid1.Row] <> '*' then
    stud_usp.StringGrid1.Cells[0, StringGrid1.Row] := '*'
  else
    stud_usp.StringGrid1.Cells[0, StringGrid1.Row] := inttostr(StringGrid1.Row);
end;

procedure Tstud_usp.FormCreate(Sender: TObject);
begin
  kurs := 1;
  sem := 1;
  goduch := yearof(Date);
  if monthof(Date) < 8 then
    SpinEdit1.Value := yearof(Date) - 1
  else
    SpinEdit1.Value := yearof(Date);
  Dataekz.Date := Date;
end;

procedure Tstud_usp.DataekzChange(Sender: TObject);
begin
  izmdv := 1;
end;

end.
