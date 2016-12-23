unit acc_rep2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, datamodule, OleServer, WordXP, ComObj,
  Spin, ExtCtrls;

type
  Tacc_spstudl = class(TForm)
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    SpinEdit1: TSpinEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure stud_polis;
    procedure stud_polis2;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_spstudl: Tacc_spstudl;
  ch: byte;
  gr, fo, spec: integer;
  gr_name, fo_name, spec_name: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_spstudl.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w37.IndexFieldNames := 'name';
  DataModule1.Table_w37.Open;
  if spfak <> 0 then
    DataModule1.Table_w37.Filter := 'spfak=' + inttostr(spfak) +
      ' and priz=''1'''
  else
    DataModule1.Table_w37.Filter := 'priz=''1''';
  DataModule1.Table_w35.IndexFieldNames := 'sname';
  DataModule1.Table_w35.Open;
  DataModule1.Table_w35.Filter := 'priz=''1''';
  DataModule1.Table_w33.IndexFieldNames := 'mean';
  DataModule1.Table_w33.Open;
  DataModule1.Table_w33.Filter := 'priz=''1''';
  DataModule1.Table_w33.Filtered := True;
  DataModule1.Table_w35.Filtered := True;
  DataModule1.Table_w37.Filtered := True;
  RadioButton1.Checked := True;
  RadioButton2.Checked := False;
  DBLookupComboBox1.Enabled := False;

end;

procedure Tacc_spstudl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  // DataModule1.Table_w33.Close;
  // DataModule1.Table_w35.Close;
  DataModule1.Table_w37.Close;
  DataModule1.Table_w1.Filtered := False;
  DataModule1.Table_w33.Filtered := False;
  DataModule1.Table_w35.Filtered := False;
  DataModule1.Table_w37.Filtered := False;
  main.Enabled := True;
end;

procedure Tacc_spstudl.RadioButton1Click(Sender: TObject);
begin
  DBLookupComboBox1.Enabled := False;
  ch := 1;
  DBLookupComboBox2.Enabled := True;
  DBLookupComboBox3.Enabled := True;
  SpinEdit1.Enabled := True;
end;

procedure Tacc_spstudl.RadioButton2Click(Sender: TObject);
begin
  DBLookupComboBox1.Enabled := True;
  ch := 2;
  DBLookupComboBox2.Enabled := False;
  DBLookupComboBox3.Enabled := False;
  SpinEdit1.Enabled := False;
end;

procedure Tacc_spstudl.DBLookupComboBox1Click(Sender: TObject);
begin
  gr := DataModule1.Table_w37.fieldbyname('pin').AsInteger;
  gr_name := DataModule1.Table_w37.fieldbyname('name').AsString;
end;

procedure Tacc_spstudl.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_spstudl.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, n, raz: integer;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
  filt, str: string;
begin
  if polis = 2 then
    stud_polis2
  else if polis = 1 then
    stud_polis
  else
  begin
    filt := '';
    if ch = 2 then // отчет по группе
      if gr = 0 then // не выбрали группу
      begin
        showmessage('Выберите группу!');
        DBLookupComboBox1.SetFocus;
        exit;
      end
      else
      begin
        DataModule1.Table_w1.Filter := 'spsost=1 and spgrup=' + inttostr(gr);
        Name_file := PChar('c:\doc\список_гр.' + trim(gr_name) + '.doc');
        fo_name := '';
        spec_name := '';
        fo := 0;
        spec := 0;
      end
    else // отчет по всему контингенту
    begin
      if fo <> 0 then
        filt := ' and spotd=' + inttostr(fo);
      if spec <> 0 then
        filt := filt + ' and spspec=' + inttostr(spec);
      if SpinEdit1.value <> 0 then
        filt := filt + ' and kurs=' + inttostr(SpinEdit1.value);
      DataModule1.Table_w1.Filter := 'spsost=1 ' + filt;
      gr_name := '';
      Name_file := PChar('c:\doc\список_студентов.doc');
    end;
    DataModule1.Table_w1.Filtered := True;
    prakt_progress := tprakt_progress.Create(application);
    BitBtn1.Enabled := False;
    // BIG :=wdLineWidth225pt;
    // SMALL :=wdLineWidth075pt;
    Repaint;
    fil := string(Name_file);
    prakt_progress.show;
    n := DataModule1.Table_w1.RecordCount;
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
    application.ProcessMessages;

    prakt_progress.ProgressBar1.Max := 70 + n * 10;

    prakt_progress.ProgressBar1.StepIt; // 1
    CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report2.doc'),
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
    t1.CELL(5, 6).RANGE.TEXT := '  Телефон';
    if ch = 2 then
      t1.CELL(2, 1).RANGE.TEXT := 'группа ' + trim(gr_name)
    else
    begin
      if fo <> 0 then
        str := 'форма обучения ' + trim(fo_name);
      if spec <> 0 then
        str := str + ' специальность ' + trim(spec_name);
      if SpinEdit1.value <> 0 then
        str := str + ' курс ' + inttostr(SpinEdit1.value);
      t1.CELL(2, 1).RANGE.TEXT := str;
      // T1.CELL(3,7).RANGE.TEXT:='Группа';
    end;

    prakt_progress.ProgressBar1.StepIt; // 5
    DataModule1.Table_w2.IndexName := 'idxkadacc'; // поиск по pin студента
    for i := 1 to n do
    begin
      prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
        ' записей.';
      application.ProcessMessages;
      prakt_progress.ProgressBar1.StepIt;
      t1.CELL(i + 5, 1).RANGE.TEXT := inttostr(i);
      t1.CELL(i + 5, 2).RANGE.TEXT :=
        trim(DataModule1.Table_w1.fieldbyname('fam').AsString) + ' ' +
        trim(DataModule1.Table_w1.fieldbyname('name').AsString) + ' ' +
        trim(DataModule1.Table_w1.fieldbyname('vname').AsString);
      if not DataModule1.Table_w2.FindKey
        ([DataModule1.Table_w1.fieldbyname('pin').AsInteger]) then
        t1.CELL(i + 5, 4).RANGE.TEXT := 'данных нет'
      else
      begin
        t1.CELL(i + 5, 3).RANGE.TEXT := DataModule1.Table_w2.fieldbyname
          ('dat_ro').AsString;
        t1.CELL(i + 5, 4).RANGE.TEXT :=
          trim(DataModule1.Table_w2.fieldbyname('pasnum').AsString) + ' ' +
          trim(DataModule1.Table_w2.fieldbyname('pasdate').AsString) + ' ' +
          trim(DataModule1.Table_w2.fieldbyname('paswho').AsString);
        t1.CELL(i + 5, 5).RANGE.TEXT :=
          trim(DataModule1.Table_w2.fieldbyname('address').AsString);
        t1.CELL(i + 5, 6).RANGE.TEXT :=
          trim(DataModule1.Table_w2.fieldbyname('phone').AsString) + ',' + #13 +
          trim(DataModule1.Table_w2.fieldbyname('mobphone').AsString);
      end;
      if ch = 1 then // список общий
        t1.CELL(i + 5, 7).RANGE.TEXT :=
          trim(DataModule1.Table_w1.fieldbyname('gruppa').AsString);

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
  BitBtn1.Enabled := True;
end;

procedure Tacc_spstudl.DBLookupComboBox3Click(Sender: TObject);
begin
  fo := DataModule1.Table_w33.fieldbyname('pin').AsInteger;
  fo_name := DataModule1.Table_w33.fieldbyname('name').AsString;

end;

procedure Tacc_spstudl.DBLookupComboBox2Click(Sender: TObject);
begin
  spec := DataModule1.Table_w35.fieldbyname('pin').AsInteger;
  spec_name := DataModule1.Table_w35.fieldbyname('sname').AsString;
end;

procedure Tacc_spstudl.stud_polis;
var
  Filen: OLEVariant;
  Sh1, E, ind, Abs: Variant;
  filt, str, namef: string;
  n, i: integer;
begin
  namef := '';
  Filen := ExtractFilePath(application.ExeName) + 'doc\страховой полис.xls';
  E := CreateOLEObject('Excel.Application');
  E.Workbooks.Add(Filen);
  E.Workbooks[1].WorkSheets[1].Activate;
  Sh1 := E.Workbooks[1].WorkSheets[1];
  filt := '';
  if ch = 2 then // отчет по группе
    if gr = 0 then // не выбрали группу
    begin
      showmessage('Выберите группу!');
      DBLookupComboBox1.SetFocus;
      exit;
    end
    else
    begin
      DataModule1.Table_w1.Filter := 'spsost=1 and spgrup=' + inttostr(gr);
      // namef:=PChar('c:\doc\страховые полиса гр.'+trim(Gr_name)+'.doc');
      fo_name := '';
      spec_name := '';
      fo := 0;
      spec := 0;
    end
  else // отчет по всему контингенту
  begin
    if fo <> 0 then
      filt := ' and spotd=' + inttostr(fo);
    if spec <> 0 then
      filt := filt + ' and spspec=' + inttostr(spec);
    if SpinEdit1.value <> 0 then
      filt := filt + ' and kurs=' + inttostr(SpinEdit1.value);
    DataModule1.Table_w1.Filter := 'spsost=1 ' + filt;
    gr_name := '';
    // namef:=PChar('c:\doc\страховые полиса студентов.doc');
  end;
  DataModule1.Table_w1.Filtered := True;
  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := False;

  prakt_progress.show;
  n := DataModule1.Table_w1.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  if ch = 2 then
    Sh1.CELLs(2, 1) := 'группа ' + trim(gr_name)
  else
  begin
    if fo <> 0 then
      str := 'форма обучения ' + trim(fo_name);
    if spec <> 0 then
      str := str + ' специальность ' + trim(spec_name);
    if SpinEdit1.value <> 0 then
      str := str + ' курс ' + inttostr(SpinEdit1.value);
    Sh1.CELLs(2, 1) := str;
  end;
  DataModule1.Table_w2.IndexName := 'idxkadacc'; // поиск по pin студента
  DataModule1.Table_w1.first;
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    Sh1.CELLs(i + 5, 1) := inttostr(i);
    Sh1.CELLs(i + 5, 3) := trim(DataModule1.Table_w1.fieldbyname('fam')
      .AsString);
    Sh1.CELLs(i + 5, 4) := trim(DataModule1.Table_w1.fieldbyname('name')
      .AsString);
    Sh1.CELLs(i + 5, 5) := trim(DataModule1.Table_w1.fieldbyname('vname')
      .AsString);
    if not DataModule1.Table_w2.FindKey
      ([DataModule1.Table_w1.fieldbyname('pin').AsInteger]) then
      Sh1.CELLs(i + 5, 6) := 'данных нет'
    else
    begin
      Sh1.CELLs(i + 5, 6) := DataModule1.Table_w2.fieldbyname('dat_ro')
        .AsString;
      if DataModule1.Table_w2.fieldbyname('sex').AsString = '1' then
        Sh1.CELLs(i + 5, 7) := 'м'
      else
        Sh1.CELLs(i + 5, 7) := 'ж';
      Sh1.CELLs(i + 5, 8) := copy(DataModule1.Table_w2.fieldbyname('pasnum')
        .AsString, 1, pos(' ', DataModule1.Table_w2.fieldbyname('pasnum')
        .AsString) - 1);
      Sh1.CELLs(i + 5, 9) := copy(DataModule1.Table_w2.fieldbyname('pasnum')
        .AsString, pos(' ', DataModule1.Table_w2.fieldbyname('pasnum').AsString)
        + 1, length(DataModule1.Table_w2.fieldbyname('pasnum').AsString));
      Sh1.CELLs(i + 5, 10) := trim(DataModule1.Table_w2.fieldbyname('pasdate')
        .AsString);
      Sh1.CELLs(i + 5, 14) := trim(DataModule1.Table_w2.fieldbyname('address')
        .AsString);
      DataModule1.Table_w1.Next;
    end;
  end;
  prakt_progress.free;
  // E.Workbooks[1].close(true,Filen,emptyparam);
  E.visible := True;
  BitBtn1.Enabled := True;
end;

procedure Tacc_spstudl.stud_polis2;
var
  Filen: OLEVariant;
  Sh1, E, ind, Abs: Variant;
  filt, str, namef, pp: string;
  n, i: integer;
begin
  namef := '';
  Filen := ExtractFilePath(application.ExeName) +
    'doc\Сведения по студентам.xls';
  E := CreateOLEObject('Excel.Application');
  E.Workbooks.Add(Filen);
  E.Workbooks[1].WorkSheets[1].Activate;
  Sh1 := E.Workbooks[1].WorkSheets[1];
  filt := '';
  if ch = 2 then // отчет по группе
    if gr = 0 then // не выбрали группу
    begin
      showmessage('Выберите группу!');
      DBLookupComboBox1.SetFocus;
      exit;
    end
    else
    begin
      DataModule1.Table_w1.Filter := 'spsost=1 and spgrup=' + inttostr(gr);
      // namef:=PChar('c:\doc\страховые полиса гр.'+trim(Gr_name)+'.doc');
      fo_name := '';
      spec_name := '';
      fo := 0;
      spec := 0;
    end
  else // отчет по всему контингенту
  begin
    { if fo<>0 then
      filt:=' and spotd='+inttostr(fo);
      if spec<>0 then
      filt:=filt+' and spspec='+inttostr(spec);
      if SpinEdit1.value<>0 then filt:=filt+' and kurs='+inttostr(SpinEdit1.value); }
    DataModule1.Table_w1.Filter :=
      'spsost=1 and (spotd=6 or (spotd=10 and spfak<>65))';
    gr_name := '';
    // namef:=PChar('c:\doc\страховые полиса студентов.doc');
  end;
  DataModule1.Table_w1.Filtered := True;
  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := False;

  prakt_progress.show;
  n := DataModule1.Table_w1.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  if ch = 2 then
    Sh1.CELLs(1, 1) := 'группа ' + trim(gr_name)
  else
  begin
    if fo <> 0 then
      str := 'форма обучения ' + trim(fo_name);
    if spec <> 0 then
      str := str + ' специальность ' + trim(spec_name);
    if SpinEdit1.value <> 0 then
      str := str + ' курс ' + inttostr(SpinEdit1.value);
    Sh1.CELLs(1, 1) := str;
  end;
  DataModule1.Table_w2.IndexName := 'idxkadacc'; // поиск по pin студента
  DataModule1.Table_w1.first;
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    Sh1.CELLs(i + 2, 1) := inttostr(i);
    Sh1.CELLs(i + 2, 2) := trim(DataModule1.Table_w1.fieldbyname('fam')
      .AsString);
    Sh1.CELLs(i + 2, 3) := trim(DataModule1.Table_w1.fieldbyname('name')
      .AsString);
    Sh1.CELLs(i + 2, 4) := trim(DataModule1.Table_w1.fieldbyname('vname')
      .AsString);
    Sh1.CELLs(i + 2, 5) := trim(DataModule1.Table_w1.fieldbyname('gruppa')
      .AsString);
    if not DataModule1.Table_w2.FindKey
      ([DataModule1.Table_w1.fieldbyname('pin').AsInteger]) then
      Sh1.CELLs(i + 2, 6) := 'данных нет'
    else
    begin
      Sh1.CELLs(i + 2, 6) := DataModule1.Table_w2.fieldbyname('dat_ro')
        .AsString;
      pp := DataModule1.Table_w2.fieldbyname('pasnum').AsString;
      Sh1.CELLs(i + 2, 7) := copy(pp, 1, pos(' ', pp) - 1);
      Sh1.CELLs(i + 2, 8) := copy(pp, pos(' ', pp) + 1, length(pp));
      Sh1.CELLs(i + 2, 9) := trim(DataModule1.Table_w2.fieldbyname('pasdate')
        .AsString) + ' ' + trim(DataModule1.Table_w2.fieldbyname('paswho')
        .AsString);
      Sh1.CELLs(i + 2, 10) := trim(DataModule1.Table_w2.fieldbyname('address')
        .AsString);
      Sh1.CELLs(i + 2, 11) := trim(DataModule1.Table_w1.fieldbyname('status')
        .AsString);
      DataModule1.Table_w1.Next;
    end;
  end;
  prakt_progress.free;
  // E.Workbooks[1].close(true,Filen,emptyparam);
  E.visible := True;
  BitBtn1.Enabled := True;
end;

end.
