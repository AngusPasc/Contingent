unit acc_vipiska;

interface

uses
  StdCtrls, Buttons, Spin, DBCtrls, Controls, ExtCtrls, Classes,
  Windows, Messages, SysUtils, Variants, Forms,
  Dialogs, datamodule, OleServer, WordXP, ComObj, DateUtils, ComCtrls;

{ Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, DBCtrls, StdCtrls, Buttons,ExcelXP, OleServer,
  ExtCtrls,dateutils,db, WordXP, Spin, ComCtrls,datamodule, WordXP;
}
type
  Tvipiska = class(TForm)
    Label1: TLabel;
    nompr: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    kurs1: TSpinEdit;
    kurs2: TSpinEdit;
    WordApp: TWordApplication;
    newdoc: TWordDocument;
    procedure FormActivate(Sender: TObject);
    procedure kurs2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  vipiska: Tvipiska;
  ngr, gr, nfo: integer;
  namegr: string;

implementation

uses main1, stud_fak1, prakt_progress1;
{$R *.dfm}

procedure Tvipiska.FormActivate(Sender: TObject);
begin
  spfak := datamodule1.Table_w1spfak.AsInteger;
  datamodule1.Table_w37.Open;
  datamodule1.Table_w37.Filter := 'spfak=' + inttostr(spfak) + ' and priz=' +
    '''' + '1' + '''';
  datamodule1.Table_w37.Filtered := True;
  kurs1.Value := 1;
  kurs2.Value := 2;
end;

procedure Tvipiska.kurs2Change(Sender: TObject);
begin
  if (kurs2.Value - kurs1.Value) <> 1 then
  begin
    showmessage('Неправильно указаны курсы!');
    kurs1.SetFocus;
  end
  else
  begin
    ngr := (yearof(DateTimePicker1.Date) - kurs1.Value) mod 100;
    datamodule1.Table_w37.Filter := 'spfak=' + inttostr(spfak) + ' and priz=' +
      '''' + '1' + '''';
    // +' and ngrup>='+inttostr(ngr)+ ' and ngrup<'+inttostr(ngr+9);
    datamodule1.Table_w37.Filtered := True;
  end;
end;

procedure Tvipiska.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tvipiska.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datamodule1.Table_w37.Filtered := False;
  stud_fak.Enabled := True;
end;

procedure Tvipiska.BitBtn1Click(Sender: TObject);
var
  WordApp, newdoc: OLEVariant;
  t1: OLEVariant;
  Name_file: PWideChar;
  fil: OLEVariant;
  s: array [1 .. 10] of string;
  f1, fioumr, skursna: string;
  n, i, it: integer;

  nakop, tabl: integer;
  por, stroka, stolb, aud, varra, kol, del: integer;
  w, w1, w2: variant;
  naud, STVAR, STKOL, stro: string;
  a, b, vstart, vend: OLEVariant;
  a1, b1: integer;
  j, ilengy: integer;
  t: OLEVariant;
  tnom: integer;
  dat: tdate;
  Templ, d, dd, ddd, what, which: OLEVariant;
  name: OLEVariant;
  mes: string;
  predm: string;
  fak_name: string;
  fak_name1: string;

begin

  /// /////////////////////////////////////////////////////////////////////////////////////////
  Name_file := PChar('c:\doc\Выписка о переводе на курс гр.' + namegr + '.doc');
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  prakt_progress.Label1.Caption := 'Обработка  записи.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\vipiska.doc'),
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
  newdoc := WordApp.Documents.Open(string(Name_file));
  // T1:=NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  case spfak of
    57:
      begin
        fioumr := 'Н.В.Латкина';
        if nfo = 6 then
          f1 := 'очной формы обучения гуманитарно-экономического факультета'
        else
          f1 := 'очной формы обучения гуманитарно-экономического факультета,';
      end;
    65:
      begin
        fioumr := 'Н.Н.Куликова';
        if nfo = 7 then
          f1 := 'заочной формы обучения факультета заочной формы обучения,'
        else if nfo = 8 then
          f1 := 'заочно-сокращенной формы обучения факультета заочной формы обучения,';
      end;
    98:
      begin
        f1 := 'очной формы обучения технического факультета,';
        fioumr := 'В.Ю.Тумко';
      end;
  end;
  case kurs1.Value of
    1:
      skursna := 'с первого курса на второй';
    2:
      skursna := 'со второго курса на третий';
    3:
      skursna := 'с третьего курса на четвертый';
    4:
      skursna := 'с четвертого курса на пятый';
    5:
      skursna := 'с пятого курса на шестой';
  end;
  datamodule1.Table_w1.Filter := 'spsost=1 and spgrup=' + inttostr(gr);
  datamodule1.Table_w1.Filtered := True;
  n := datamodule1.Table_w1.RecordCount; {
    s[1]:=#13+'                  Выписка из приказа №'+ nompr.Text+' от '+datetostr(DateTimePicker1.Date)+' года'+#13;
    s[2]:='Директора Рубцовского индустриального инcтитута(филиал) ';
    s[3]:='федерального государственного бюджетного образовательного учреждения высшего профессионального';
    s[4]:='образования Алтайский государственный технический университет им. И.И. Ползунова'+#13+#13+#13;
    s[5]:='Студента '+ f1+' освоившего в полном объёме основную образовательную программу, перевести '+skursna+#13;
    it:=1;
    for i:=1 to n do
    begin
    t1.Cell(it,1).Range.Text:= s[1]+s[2]+s[3]+s[4];
    t1.Rows.Add();
    s[6]:= #13+'  '+{inttostr(i)+'. '+///////////////здесь комент кончилсяDataModule1.Table_w1.fieldbyname('fam').AsString+' '+DataModule1.Table_w1.fieldbyname('name').AsString+' '+DataModule1.Table_w1.fieldbyname('vname').AsString+'                               гр.'+namegr;
    s[7]:= #13+#13+'Основание: представление декана'+#13+'                    Выписка верна:'+#13+'         Специалист по УМР                                                   '+fioumr+#13+#13;
    t1.Cell(it+1,1).Range.Text:=s[5]+s[6]+s[7];
    t1.Rows.Add(); it:=it+2;
    DataModule1.Table_w1.Next;
    end;

    prakt_progress.ProgressBar1.StepIt;//7
    DataModule1.Table_w1.Filtered:=False;
    prakt_progress.free;
    WordApp.visible:=true;
    if WordApp.visible=true then NEWDOC.SAVEas(fil);
    if WordApp.visible=false then WordApp.Quit;
    WordApp:=unassigned;
    /////////////////////////////////////////////////////////////////////////////////////
  }

  { name_file:=PChar('c:\doc\vipiska1.doc');
    fil:=string(name_file);
    showmessage(ExtractFilePath(Application.ExeName));
    CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\Doc\vipiska1.doc'),Name_file,false);
    newdoc.ConnectTo(WordApp.Documents.Open2000(fil,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam));
    //NEWDOC:=WordApp.Documents.Open(string(Name_file)); }
  WordApp.Selection.Find.ClearFormatting;
  WordApp.Selection.Find.Forward := True;
  WordApp.Selection.Find.Wrap := wdFindContinue;
  WordApp.Selection.Find.Format := False;
  WordApp.Selection.Find.MatchCase := False;
  WordApp.Selection.Find.MatchWholeWord := True;
  WordApp.Selection.Find.MatchWildcards := True;
  WordApp.Selection.Find.MatchSoundsLike := False;
  WordApp.Selection.Find.MatchAllWordForms := False;

  case datamodule1.Table_w37.fieldbyname('spfak').AsInteger of
    98:
      fak_name := 'технического факультета';
    57:
      fak_name := 'гуманитарно-экономического факультета';
    65:
      fak_name := 'факультета заочной формы обучения';
  end;
  case datamodule1.Table_w37.fieldbyname('spfak').AsInteger of
    98:
      fak_name1 := 'очной формы обучения технического факультета';
    57:
      fak_name1 := 'очной формы обучения гуманитарно-экономического факультета';
    65:
      fak_name1 := 'заочной формы обучения факультета заочной формы обучения';
  end;

  { WordApp.Selection.end:=WordApp.ActiveDocument.Characters.Count;
    WordApp.Selection.Start:=0;
    WordApp.Selection.Copy;

    WordApp.Selection.InsertBreak;
    WordApp.Selection.End:=WordApp.ActiveDocument.Characters.Count;
    WordApp.Selection.Start:=WordApp.ActiveDocument.Characters.Count;
    WordApp.Selection.Paste; }

  d := wdFindStop; // найти один раз
  dd := wdReplaceall; // замена один раз
  Templ := '#nompr'; // текст который меняем
  ddd := nompr.Text; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  d := wdFindStop; // найти один раз
  dd := wdReplaceall; // замена один раз
  Templ := '#datpr'; // текст который меняем
  ddd := datetostr(DateTimePicker1.Date); // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  d := wdFindStop; // найти один раз
  dd := wdReplaceall; // замена один раз
  Templ := '#fak'; // текст который меняем
  ddd := fak_name; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  d := wdFindStop; // найти один раз
  dd := wdReplaceall; // замена один раз
  Templ := '#f1'; // текст который меняем
  ddd := fak_name1; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  { D:=wdFindStop; // найти один раз
    DD:=wdReplaceall; // замена один раз
    Templ:='#kto'; // текст который меняем
    DDD:=DataModule1.Table_w1.fieldbyname('fam').AsString+' '+DataModule1.Table_w1.fieldbyname('name').AsString+' '+DataModule1.Table_w1.fieldbyname('vname').AsString+'                               гр.'+namegr;; // фамилия
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,EmptyParam, EmptyParam, EmptyParam, D, EmptyParam,DDD, DD, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  }
  d := wdFindStop; // найти один раз
  dd := wdReplaceall; // замена один раз
  Templ := '#fspec'; // текст который меняем
  ddd := fioumr; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  d := wdFindStop; // найти один раз
  dd := wdReplaceall; // замена один раз
  Templ := '#kurs'; // текст который меняем
  ddd := skursna; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);
  // a1:=0;
  // b1:=WordApp.ActiveDocument.Characters.Count;

  WordApp.Selection.end := WordApp.ActiveDocument.Characters.Count;
  WordApp.Selection.Start := 0;
  WordApp.Selection.Cut;

  for i := 1 to n do
  begin
    WordApp.Selection.end := WordApp.ActiveDocument.Characters.Count;
    WordApp.Selection.Start := WordApp.ActiveDocument.Characters.Count;
    WordApp.Selection.Paste;
    newdoc.Tables.Item(i).Cell(1, 1).Range.Text :=
      datamodule1.Table_w1.fieldbyname('fam').AsString + ' ' +
      datamodule1.Table_w1.fieldbyname('name').AsString + ' ' +
      datamodule1.Table_w1.fieldbyname('vname').AsString +
      '                               гр.' + namegr;
    datamodule1.Table_w1.Next;
  end;

  prakt_progress.ProgressBar1.StepIt; // 7
  datamodule1.Table_w1.Filtered := False;
  prakt_progress.free;

  // WordApp.Selection.InsertBreak;

  application.Minimize;
  WordApp.Visible := True;
  WordApp.Activate;
  newdoc.SaveAs2000(fil);
  /// /ShortDateFormat := 'dd/mm/yyyy';

  if WordApp.Visible = False then
    WordApp.Quit;
  WordApp := unassigned;

  { Visible:=True;
    W.Selection.End:=0;
    W.Selection.Start:=0;
    W.visible:=True;
    W:= Unassigned;
    W:= Null; }

end;

procedure Tvipiska.DBLookupComboBox1Click(Sender: TObject);
begin
  gr := DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').AsInteger;
  namegr := datamodule1.Table_w37.fieldbyname('name').AsString;
  nfo := datamodule1.Table_w37.fieldbyname('spotd').AsInteger;
end;

procedure Tvipiska.DateTimePicker1Exit(Sender: TObject);
begin
  if monthof(DateTimePicker1.Date) <>
    8 { and yearof(DateTimePicker1.Date)<>yearof(date) } then
    showmessage('Неправильно указана дата')
end;

end.
