unit acc_repzapros1;

interface

uses
  StdCtrls, Buttons, Spin, DBCtrls, Controls, ExtCtrls, Classes,
  Windows, Messages, SysUtils, Variants, Graphics, Forms,
  Dialogs, datamodule, OleServer, WordXP, ComObj, DateUtils;

type
  Tacc_repzapros = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    SpinEdit2: TSpinEdit;
    Label13: TLabel;
    SpinEdit3: TSpinEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox6Click(Sender: TObject);
    procedure DBLookupComboBox7Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure DBLookupComboBox8Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_repzapros: Tacc_repzapros;
  fo, fak, spec, sost, status, city, lang, school: integer;
  fo_name, fak_name, spec_name, sost_name, status_name, city_name, lang_name,
    school_name: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_repzapros.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w15.Open;
  DataModule1.Table_w15.Filter := 'priz=''1''';
  DataModule1.Table_w18.Open;
  DataModule1.Table_w18.Filter := 'priz=''1''';
  DataModule1.spschool.Open;
  DataModule1.spschool.Filter := 'kname<>''''';
  DataModule1.Table_w24.Open;
  DataModule1.Table_w24.Filter := 'priz=''1''';
  DataModule1.Table_w25.Open;
  DataModule1.Table_w25.Filter := 'priz=''1''';
  DataModule1.Table_w33.Open;
  DataModule1.Table_w33.Filter := 'priz=''1''';
  DataModule1.Table_w34.Open;
  DataModule1.Table_w34.Filter := 'priz=''1''';
  DataModule1.Table_w35.Open;
  DataModule1.Table_w35.Filter := 'priz=''1''';
  DataModule1.Table_w15.Filtered := True;
  DataModule1.Table_w18.Filtered := True;
  DataModule1.Table_w24.Filtered := True;
  DataModule1.Table_w25.Filtered := True;
  DataModule1.Table_w33.Filtered := True;
  DataModule1.Table_w34.Filtered := True;
  DataModule1.Table_w35.Filtered := True;
  DataModule1.spschool.Filtered := True;
  DBLookupComboBox3.SetFocus;
  fo := 0;
  fak := 0;
  spec := 0;
  sost := 0;
  status := 0;
  city := 0;
  lang := 0;
  school := 0;
  fo_name := '';
  fak_name := '';
  spec_name := '';
  sost_name := '';
  status_name := '';
  city_name := '';
  lang_name := '';
  school_name := '';
end;

procedure Tacc_repzapros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.Table_w15.Close;
  DataModule1.Table_w18.Close;
  DataModule1.spschool.Close;
  DataModule1.Table_w24.Close;
  DataModule1.Table_w25.Close;
  // DataModule1.Table_w33.Close;
  // DataModule1.Table_w34.Close;
  // DataModule1.Table_w35.Close;
  DataModule1.Table_w15.Filtered := False;
  DataModule1.Table_w18.Filtered := False;
  DataModule1.Table_w24.Filtered := False;
  DataModule1.Table_w25.Filtered := False;
  DataModule1.Table_w33.Filtered := False;
  DataModule1.Table_w34.Filtered := False;
  DataModule1.Table_w35.Filtered := False;
  DataModule1.spschool.Filtered := False;
  main.Enabled := True;
end;

procedure Tacc_repzapros.DBLookupComboBox3Click(Sender: TObject);
begin
  fo := DataModule1.Table_w33.fieldbyname('pin').AsInteger;
  fo_name := DataModule1.Table_w33.fieldbyname('name').AsString;
end;

procedure Tacc_repzapros.DBLookupComboBox2Click(Sender: TObject);
begin
  spec := DataModule1.Table_w35.fieldbyname('pin').AsInteger;
  spec_name := DataModule1.Table_w35.fieldbyname('sname').AsString;
end;

procedure Tacc_repzapros.DBLookupComboBox6Click(Sender: TObject);
begin
  sost := DataModule1.Table_w25.fieldbyname('pin').AsInteger;
  sost_name := DataModule1.Table_w25.fieldbyname('name').AsString;
end;

procedure Tacc_repzapros.DBLookupComboBox7Click(Sender: TObject);
begin
  status := DataModule1.Table_w24.fieldbyname('pin').AsInteger;
  status_name := DataModule1.Table_w24.fieldbyname('name').AsString;
end;

procedure Tacc_repzapros.DBLookupComboBox4Click(Sender: TObject);
begin
  city := DataModule1.Table_w18.fieldbyname('pin').AsInteger;
  city_name := DataModule1.Table_w18.fieldbyname('name').AsString;
end;

procedure Tacc_repzapros.DBLookupComboBox5Click(Sender: TObject);
begin
  lang := DataModule1.Table_w15.fieldbyname('pin').AsInteger;
  lang_name := DataModule1.Table_w15.fieldbyname('name').AsString;
end;

procedure Tacc_repzapros.DBLookupComboBox8Click(Sender: TObject);
begin
  school := DataModule1.spschool.fieldbyname('pin').AsInteger;
  school_name := DataModule1.spschool.fieldbyname('name').AsString;
  // showmessage(school_name);
end;

procedure Tacc_repzapros.DBLookupComboBox1Click(Sender: TObject);
begin
  fak := DataModule1.Table_w34.fieldbyname('pin').AsInteger;
  fak_name := DataModule1.Table_w34.fieldbyname('name').AsString;
end;

procedure Tacc_repzapros.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_repzapros.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, j, n: integer;
  Name_file: PWideChar;
  // f:Tprakt_progress;
  fil: OLEVariant;
  filt, filt1, str: string;
begin
  filt := '';
  Name_file := PChar('c:\doc\список_по_запросу.doc');
  if fo <> 0 then
    filt := 'spotd=' + inttostr(fo);
  if fak <> 0 then
    if filt <> '' then
      filt := filt + ' and spfak=' + inttostr(fak)
    else
      filt := 'spfak=' + inttostr(fak);
  if spec <> 0 then
    if filt <> '' then
      filt := filt + ' and spspec=' + inttostr(spec)
    else
      filt := 'spspec=' + inttostr(spec);
  if status <> 0 then
    if filt <> '' then
      filt := filt + ' and spstatus=' + inttostr(status)
    else
      filt := 'spstatus=' + inttostr(status);
  if sost <> 0 then
    if filt <> '' then
      filt := filt + ' and spsost=' + inttostr(sost)
    else
      filt := 'spsost=' + inttostr(sost)
  else
  begin
    if filt <> '' then
      filt := filt + ' and spsost=1'
    else
      filt := 'spsost=1';
    sost := 1;
  end;
  if SpinEdit1.value <> 0 then
    if filt <> '' then
      filt := filt + ' and kurs=' + inttostr(SpinEdit1.value)
    else
      filt := 'kurs=' + inttostr(SpinEdit1.value);
  DataModule1.Table_w1.Filter := filt;
  DataModule1.Table_w1.Filtered := True;

  filt1 := '';

  if city <> 0 then
    filt1 := 'spcitiz=' + inttostr(city);
  if lang <> 0 then
    if filt1 <> '' then
      filt1 := filt1 + ' and splang=' + inttostr(lang)
    else
      filt1 := 'splang=' + inttostr(lang);
  if school <> 0 then
    if filt1 <> '' then
      filt1 := filt1 + ' and spschool=' + inttostr(school)
    else
      filt1 := 'spschool=' + inttostr(school);
  if SpinEdit2.value <> 0 then
    if filt1 <> '' then
      filt1 := filt1 + ' and schoolgod=' + inttostr(SpinEdit2.value)
    else
      filt1 := 'schoolgod=' + inttostr(SpinEdit2.value);

  DataModule1.Table_w2.Filter := filt1;
  DataModule1.Table_w2.Filtered := True;
  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := False;
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  n := DataModule1.Table_w1.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report14.doc'),
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
  str := '';
  if fo <> 0 then
    str := 'форма обучения ' + trim(fo_name);
  if fak <> 0 then
    str := str + ' факультет ' + trim(fak_name);
  if spec <> 0 then
    str := str + ' специальность ' + trim(spec_name);
  t1.CELL(2, 1).RANGE.TEXT := str;
  str := '';
  if SpinEdit1.value <> 0 then
    str := ' курс ' + inttostr(SpinEdit1.value);
  if sost <> 0 then
    str := str + ' ' + trim(sost_name);
  if status <> 0 then
    str := str + ' ' + trim(status_name);
  t1.CELL(3, 1).RANGE.TEXT := str;
  str := '';
  if city <> 0 then
    str := ' гражданство ' + trim(city_name);
  if lang <> 0 then
    str := str + ' ин.язык ' + trim(lang_name);
  if school <> 0 then
    str := str + ' окончили ' + trim(school_name);
  if SpinEdit2.value <> 0 then
    str := str + ' в ' + inttostr(SpinEdit2.value) + ' году';
  t1.CELL(4, 1).RANGE.TEXT := str;
  prakt_progress.ProgressBar1.StepIt; // 5
  DataModule1.Table_w2.IndexName := 'idxkadacc'; // поиск по pin студента
  j := 0;
  for i := 1 to n do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    if not DataModule1.Table_w2.FindKey
      ([DataModule1.Table_w1.fieldbyname('pin').AsInteger]) then
      DataModule1.Table_w1.Next
    else
    begin
      if (SpinEdit3.value = 0) or
        ((SpinEdit3.value <> 0) and
        (yearof(DataModule1.Table_w2.fieldbyname('dat_ro').AsDateTime)
        = SpinEdit3.value)) then
      begin
        j := j + 1;
        t1.CELL(i + 5, 1).RANGE.TEXT := inttostr(j);
        t1.CELL(i + 5, 2).RANGE.TEXT :=
          trim(DataModule1.Table_w1.fieldbyname('fam').AsString) + ' ' +
          trim(DataModule1.Table_w1.fieldbyname('name').AsString) + ' ' +
          trim(DataModule1.Table_w1.fieldbyname('vname').AsString);
        t1.CELL(i + 5, 3).RANGE.TEXT := DataModule1.Table_w2.fieldbyname
          ('dat_ro').AsString;
        t1.CELL(i + 5, 4).RANGE.TEXT := DataModule1.Table_w2.fieldbyname
          ('pasnum').AsString + ' ' + DataModule1.Table_w2.fieldbyname
          ('pasdate').AsString + ' ' + DataModule1.Table_w2.fieldbyname
          ('paswho').AsString;
        t1.CELL(i + 5, 5).RANGE.TEXT := DataModule1.Table_w2.fieldbyname
          ('address').AsString;
        t1.CELL(i + 5, 6).RANGE.TEXT := DataModule1.Table_w1.fieldbyname
          ('fo').AsString;
        t1.CELL(i + 5, 7).RANGE.TEXT := DataModule1.Table_w1.fieldbyname
          ('gruppa').AsString;
        t1.CELL(i + 5, 8).RANGE.TEXT := DataModule1.Table_w1.fieldbyname
          ('status').AsString;
        DataModule1.Table_w1.Next;
        if i < n then
          t1.Rows.Add(); // чтобы не печатать пустую строку в конце
      end
      else
        DataModule1.Table_w1.Next;
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
  DataModule1.Table_w1.Filtered := False;
  DataModule1.Table_w2.Filtered := False;
  BitBtn1.Enabled := True;
end;

end.
