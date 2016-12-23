unit Cr_stan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, ExtCtrls, OleCtnrs, ComObj,
  OleServer, Buttons, Menus,DB, WordXP, Gauges, IniFiles;

type
  Tcr_stanF = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    ListBox2: TListBox;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    Label6: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button1: TButton;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    WD: TWordDocument;
    WordApplication1: TWordApplication;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Button4: TButton;
    Panel4: TPanel;
    Label9: TLabel;
    ListBox3: TListBox;
    ListBox4: TListBox;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Panel5: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Button10: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Bevel3: TBevel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Button11: TButton;
    ListBox5: TListBox;
    ListBox6: TListBox;
    Label12: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    kaf: TLabel;
    raz: TLabel;
    dis: TLabel;
    fob: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    WD1: TWordDocument;
    Button12: TButton;
    Label23: TLabel;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Panel6: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Panel7: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Panel8: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Button16: TButton;
    Button17: TButton;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Edit3: TEdit;
    Label42: TLabel;
    Button25: TButton;
    OpenDialog1: TOpenDialog;
    Button26: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ListBox7: TListBox;
    ListBox8: TListBox;
    Label18: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    ListBox9: TListBox;
    GroupBox5: TGroupBox;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    Button27: TButton;
    ListBox10: TListBox;
    Label45: TLabel;
    Label46: TLabel;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    Panel9: TPanel;
    Label47: TLabel;
    Label48: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    prv: TLabel;
    Label41: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Panel10: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label36: TLabel;
    Label21: TLabel;
    ListBox11: TListBox;
    ListBox12: TListBox;
    ListBox13: TListBox;
    Label52: TLabel;
    Memo1: TMemo;
    Label51: TLabel;
    Button28: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Label53: TLabel;
    Label55: TLabel;
    Label54: TLabel;
    Gauge1: TGauge;
    Label56: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Edit2: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label22: TLabel;
    godc: TLabel;
    Button29: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ProvZapolPril(Sender: TObject);
    procedure ProvZapolSsil(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure WordApplication1DocumentBeforeSave(ASender: TObject;
      const Doc: _Document; var SaveAsUI, Cancel: WordBool);
    procedure ProvZapolOs(Sender: TObject);
    procedure ProvZapolVv(Sender: TObject);
    procedure ProvZapolPrim(Sender: TObject);
    procedure ProvZapolCel(Sender: TObject);
    procedure ProvZapolSod(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Label14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label14MouseLeave(Sender: TObject);
    procedure Label16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label16MouseLeave(Sender: TObject);
    procedure Label18MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label18MouseLeave(Sender: TObject);
    procedure Label13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label13MouseLeave(Sender: TObject);
    procedure Label15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label15MouseLeave(Sender: TObject);
    procedure Label17MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label17MouseLeave(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure WordApplication1DocumentBeforeClose(ASender: TObject;
      const Doc: _Document; var Cancel: WordBool);
    procedure Label16Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure OpenDialog1CanClose(Sender: TObject; var CanClose: Boolean);
    procedure Button26Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ListBox8Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure ListBox10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure ListBox3DblClick(Sender: TObject);
    procedure WordApplication1Quit(Sender: TObject);
    procedure WordApplication1DocumentOpen(ASender: TObject;
      const Doc: _Document);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure Button30Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure DBLookupComboBox4DropDown(Sender: TObject);
  private
    { Private declarations }
    ms:array of array of real;
    ndis,nkaf,porv1,spec,forob:Variant;
    infgos,famin,dolraz,zavr,zavp,dek,sdic:Variant;
    cik:string;
  public
    { Public declarations }
    kpr,krab,rz:string;
    kodv,kod:integer;
    srsm:array of integer;
    vdic:Variant;
  end;

type
dinar=array of integer;

var
  cr_stanF: Tcr_stanF;
  bmSelect:TBitmap;
  NEWDOC: OLEVariant;
  ListU:Range;
  prall:array [0..7] of byte;
  sini:TIniFile;

implementation

uses DataModule, UMM, main1, RabPl, Rek, SRP;
{$R *.dfm}

procedure Tcr_stanF.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  PageControl1.Refresh;
  Button2.Enabled:=false;
  Button3.Enabled:=false;
  ListBox1.Enabled:=false;
  ListBox2.Enabled:=false;
  RadioButton1.Checked:=true;
  RadioButton3.Checked:=true;
  RadioButton6.Checked:=true;
  RadioButton8.Checked:=true;
  RadioButton11.Checked:=true;
  DataModule1.Table1.IndexName:='cod';
  DataModule1.Table1.Open;
  DataModule1.Table1.Filtered:=False;
  if main.Label5.Caption='27' then begin
  DataModule1.Table1.Filter:='prpod=4';
  DataModule1.Table1.Filtered:=True;
  end else
  if main.Label6.Caption=IntToStr(3) then begin
  DataModule1.Table1.Filter:='codpot='''+main.Label5.Caption+'''';
  DataModule1.Table1.Filtered:=True;
  end else begin
  DataModule1.Table1.Filter:='cod='''+main.Label5.Caption+'''';
  DataModule1.Table1.Filtered:=True;
  end;
  DataModule1.Table4.Open;
end;

procedure Tcr_stanF.FormClose(Sender: TObject; var Action: TCloseAction);
var
wdSc,wDf,n:OleVariant;
kd,i:integer;
begin
wdSc:=wdDoNotSaveChanges;
wDf:=wdOriginalDocumentFormat;
if Label23.Caption<>'1' then
if MessageDlg('Стандарт не сформирован, все данные будут потеряны.'+#13+'Для сохраниения данных и выхода нажмите кнопку "Сохранить"'+#13+'Вы действительно хотите завершить формирование?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
try
kd:=WordApplication1.Documents.Count;
 for i:=kd downto 1 do begin
 n:=i;
 if Pos('~.',WordApplication1.Documents.Item(n).Name)<>0 then begin
 Label51.Caption:='ns';
 WordApplication1.Documents.Item(n).Close(wdSc,wDf,EmptyParam);
 end;
 end;
except
  DataModule1.Table1.Close;
  DataModule1.Table1.ReadOnly:=False;
  DataModule1.Table1.Filtered:=False;
  DataModule1.Table1.Filter:='';
  DataModule1.Table4.Close;
  DataModule1.Query22.SQL.Clear;
  DataModule1.Query22.Close;
  DataModule1.Table1.Filtered:=False;
  DataModule1.Table1.Filter:='';
  DataModule1.Query51.SQL.Clear;
  DataModule1.Query51.Close;
  Label51.Caption:='/';
  if FileExists(main.AccesPath+'Vv~.doc') then
  DeleteFile(main.AccesPath+'Vv~.doc');
  if FileExists(main.AccesPath+'Tit~.doc') then
  DeleteFile(main.AccesPath+'Tit~.doc');
  if FileExists(main.AccesPath+'Naim~.doc') then
  DeleteFile(main.AccesPath+'Naim~.doc');
  if FileExists(main.AccesPath+'Pred~.doc') then
  DeleteFile(main.AccesPath+'Pred~.doc');
  if FileExists(main.AccesPath+'CZ~.doc') then
  DeleteFile(main.AccesPath+'CZ~.doc');
  if FileExists(main.AccesPath+'Pas~.doc') then
  DeleteFile(main.AccesPath+'Pas~.doc');
  if FileExists(main.AccesPath+'Sz~.doc') then
  DeleteFile(main.AccesPath+'Sz~.doc');
  if FileExists(main.AccesPath+'At~.doc') then
  DeleteFile(main.AccesPath+'At~.doc');
  if FileExists(main.AccesPath+'UMM~.doc') then
  DeleteFile(main.AccesPath+'UMM~.doc');
  if FileExists(main.AccesPath+'Kar~.doc') then
  DeleteFile(main.AccesPath+'Kar~.doc');
  if FileExists(main.AccesPath+'Rab~.doc') then
  DeleteFile(main.AccesPath+'Rab~.doc');
  if FileExists(main.AccesPath+'Op~.doc') then
  DeleteFile(main.AccesPath+'Op~.doc');
  if FileExists(main.AccesPath+'Tso~.doc') then
  DeleteFile(main.AccesPath+'Tso~.doc');
  if FileExists(main.AccesPath+'SRS~.doc') then
  DeleteFile(main.AccesPath+'SRS~.doc');
  if FileExists(main.AccesPath+'Enp~.doc') then
  DeleteFile(main.AccesPath+'Enp~.doc');
  if FileExists(main.AccesPath+'Sog~.doc') then
  DeleteFile(main.AccesPath+'Sog~.doc');
  if FileExists(main.AccesPath+'Sil~.doc') then
  DeleteFile(main.AccesPath+'Sil~.doc');
  if FileExists(main.AccesPath+'OiS~.doc') then
  DeleteFile(main.AccesPath+'OiS~.doc');
  if FileExists(main.AccesPath+'Izm~.doc') then
  DeleteFile(main.AccesPath+'Izm~.doc');
  if FileExists(main.AccesPath+'Kon~.doc') then
  DeleteFile(main.AccesPath+'Kon~.doc');
  if FileExists(main.AccesPath+'sini.ini') then
  DeleteFile(main.AccesPath+'sini.ini');
  if FileExists(main.AccesPath+'СтанПрос.doc') then
  DeleteFile(main.AccesPath+'СтанПрос.doc');
  i:=1;
  while FileExists(main.AccesPath+'Pril'+IntToStr(i)+'~.doc') do begin
  DeleteFile(main.AccesPath+'Pril'+IntToStr(i)+'~.doc');
  i:=i+1;
  end;
end;
  DataModule1.Table1.Close;
  DataModule1.Table1.ReadOnly:=False;
  DataModule1.Table1.Filtered:=False;
  DataModule1.Table1.Filter:='';
  DataModule1.Table4.Close;
  DataModule1.Query22.SQL.Clear;
  DataModule1.Query22.Close;
  DataModule1.Table1.Filtered:=False;
  DataModule1.Table1.Filter:='';
  DataModule1.Query51.SQL.Clear;
  DataModule1.Query51.Close;
  Label51.Caption:='/';
  if FileExists(main.AccesPath+'Vv~.doc') then
  DeleteFile(main.AccesPath+'Vv~.doc');
  if FileExists(main.AccesPath+'Tit~.doc') then
  DeleteFile(main.AccesPath+'Tit~.doc');
  if FileExists(main.AccesPath+'Naim~.doc') then
  DeleteFile(main.AccesPath+'Naim~.doc');
  if FileExists(main.AccesPath+'Pred~.doc') then
  DeleteFile(main.AccesPath+'Pred~.doc');
  if FileExists(main.AccesPath+'CZ~.doc') then
  DeleteFile(main.AccesPath+'CZ~.doc');
  if FileExists(main.AccesPath+'Pas~.doc') then
  DeleteFile(main.AccesPath+'Pas~.doc');
  if FileExists(main.AccesPath+'Sz~.doc') then
  DeleteFile(main.AccesPath+'Sz~.doc');
  if FileExists(main.AccesPath+'At~.doc') then
  DeleteFile(main.AccesPath+'At~.doc');
  if FileExists(main.AccesPath+'UMM~.doc') then
  DeleteFile(main.AccesPath+'UMM~.doc');
  if FileExists(main.AccesPath+'Kar~.doc') then
  DeleteFile(main.AccesPath+'Kar~.doc');
  if FileExists(main.AccesPath+'Rab~.doc') then
  DeleteFile(main.AccesPath+'Rab~.doc');
  if FileExists(main.AccesPath+'Op~.doc') then
  DeleteFile(main.AccesPath+'Op~.doc');
  if FileExists(main.AccesPath+'Tso~.doc') then
  DeleteFile(main.AccesPath+'Tso~.doc');
  if FileExists(main.AccesPath+'SRS~.doc') then
  DeleteFile(main.AccesPath+'SRS~.doc');
  if FileExists(main.AccesPath+'Enp~.doc') then
  DeleteFile(main.AccesPath+'Enp~.doc');
  if FileExists(main.AccesPath+'Sog~.doc') then
  DeleteFile(main.AccesPath+'Sog~.doc');
  if FileExists(main.AccesPath+'Sil~.doc') then
  DeleteFile(main.AccesPath+'Sil~.doc');
  if FileExists(main.AccesPath+'OiS~.doc') then
  DeleteFile(main.AccesPath+'OiS~.doc');
  if FileExists(main.AccesPath+'Izm~.doc') then
  DeleteFile(main.AccesPath+'Izm~.doc');
  if FileExists(main.AccesPath+'Kon~.doc') then
  DeleteFile(main.AccesPath+'Kon~.doc');
  if FileExists(main.AccesPath+'sini.ini') then
  DeleteFile(main.AccesPath+'sini.ini');
  if FileExists(main.AccesPath+'СтанПрос.doc') then
  DeleteFile(main.AccesPath+'СтанПрос.doc');
  i:=1;
  while FileExists(main.AccesPath+'Pril'+IntToStr(i)+'~.doc') do begin
  DeleteFile(main.AccesPath+'Pril'+IntToStr(i)+'~.doc');
  i:=i+1;
  end;  
end;

procedure Tcr_stanF.DBLookupComboBox1Click(Sender: TObject);
var
cod:string;
begin
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
cod:=DataModule1.Table1.FieldByName('cod').AsString;
sini.WriteString('osnov','razkaf',cod);
sini.Free;
DataModule1.Query22.SQL.Clear;
DataModule1.Query22.SQL.Add('SELECT DISTINCT fio FROM prepodav WHERE codk='+cod);
DataModule1.Query22.Open;
DataModule1.Query14_1.SQL.Clear;
DataModule1.Query14_1.SQL.Add('select cod, codk, codkom, naim, codcik, concat(trim(codcik),", ",trim(codkom),", ", trim(naim) ) as allpar from diccafed WHERE codk='+cod);
DataModule1.Query14_1.Open;
kaf.Caption:=cod;
end;

procedure Tcr_stanF.RadioButton1Click(Sender: TObject);
begin
if RadioButton2.Checked then
  RadioButton2.Checked:=false;
  Button2.Enabled:=false;
  Button3.Enabled:=false;
  ListBox1.Enabled:=false;
  ListBox2.Items.Clear;
  ListBox2.Enabled:=false;
  DataModule1.Query51.SQL.Clear;
  DataModule1.Query51.Close;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('osnov','vzamen','perv');
sini.Free;
end;

procedure Tcr_stanF.RadioButton2Click(Sender: TObject);
begin
if RadioButton1.Checked then
  RadioButton1.Checked:=false;
  bmSelect:=TBitmap.Create;
  bmSelect.LoadFromFile('Select.bmp');
  ListBox1.Font.Height:=bmSelect.Height;
  ListBox1.ItemHeight:=ListBox1.Font.Height + 2;

Button2.Enabled:=true;
ListBox1.Enabled:=true;
ListBox2.Enabled:=true;

DataModule1.Query51.SQL.Clear;
DataModule1.Query51.SQL.Add('SELECT shifr FROM standic');
DataModule1.Query51.Open;
DataModule1.Query51.First;
    while not DataModule1.Query51.Eof do begin
    if DataModule1.Query51.FieldByName('shifr').AsString<>'' then
    ListBox2.Items.Append(DataModule1.Query51.FieldByName('shifr').AsString);
    DataModule1.Query51.Next;
    end;

end;

procedure Tcr_stanF.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
r:TRect;
begin
TListBox(Control).Canvas.Font.Color:=clBlack;
TListBox(Control).Canvas.BrushCopy(Bounds(Rect.Left+2,Rect.Top,bmSelect.Width,bmSelect.Height),bmSelect,
                      Bounds(0,0,bmSelect.Width,bmSelect.Height),clWindow);
r:=Rect;
r.Left:=r.Left+bmSelect.Width+2;
TListBox(Control).Canvas.FillRect(r);
TListBox(Control).Canvas.TextOut(r.Left,Rect.Top,(Control as TListBox).Items[Index]);

end;

procedure Tcr_stanF.Button2Click(Sender: TObject);
var
vzamen:string;
i:integer;
begin
if ListBox2.ItemIndex=-1 then Exit;
if ListBox1.Enabled=false then begin
ListBox1.Enabled:=true;
Button3.Enabled:=true;
end;

ListBox1.Items.Append(ListBox2.Items[ListBox2.ItemIndex]);
ListBox2.Items.Delete(ListBox2.ItemIndex);
  if ListBox2.Count<>0 then
  ListBox2.ItemIndex:=0
  else begin
  ListBox2.Enabled:=false;
  Button2.Enabled:=false;
  end;

ListBox1.Refresh;
vzamen:='';
for i:=0 to ListBox1.Count-1 do
vzamen:=vzamen+ListBox1.Items[i]+'|';

sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('osnov','vzamen',vzamen);
sini.Free;

end;

procedure Tcr_stanF.Button3Click(Sender: TObject);
var
i:integer;
vzamen:string;
begin
if ListBox1.ItemIndex=-1 then Exit;
if ListBox2.Enabled=false then begin
ListBox2.Enabled:=true;
Button2.Enabled:=true;
end;

ListBox2.Items.Append(ListBox1.Items[ListBox1.ItemIndex]);
ListBox1.Items.Delete(ListBox1.ItemIndex);
if ListBox1.Count<>0 then
ListBox1.ItemIndex:=0
else begin
ListBox1.Enabled:=false;
Button3.Enabled:=false;
end;

ListBox1.Refresh;
vzamen:='';
for i:=0 to ListBox1.Count-1 do
vzamen:=vzamen+ListBox1.Items[i]+'|';

sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('osnov','vzamen',vzamen);
sini.Free;

end;

procedure Tcr_stanF.RadioButton3Click(Sender: TObject);
begin
Label6.Caption:='СТП ХХ.ХХХ.ХХХХ-ХХ';
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('osnov','mnogsp','odna');
sini.Free;
ListBox3.Visible:=false;
ListBox4.Visible:=false;
ListBox13.Visible:=false;
Button5.Visible:=false;
Button6.Visible:=false;
Button7.Visible:=false;
Button9.Visible:=false;
Edit1.Visible:=false;
Label39.Visible:=false;
Label40.Visible:=false;
Label52.Visible:=false;
end;

procedure Tcr_stanF.RadioButton4Click(Sender: TObject);
begin
Label6.Caption:='СТП ХХ.ХХХ.ХХХХ-ХХ';
end;

procedure Tcr_stanF.RadioButton5Click(Sender: TObject);
begin
Label6.Caption:='СТП ХХ.ХХХ-ХХ';
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('osnov','mnogsp','mnogo');
sini.Free;
ListBox3.Visible:=false;
ListBox4.Visible:=false;
ListBox13.Visible:=false;
Button5.Visible:=false;
Button6.Visible:=false;
Button7.Visible:=false;
Button9.Visible:=false;
Edit1.Visible:=false;
end;

procedure Tcr_stanF.ListBox1Click(Sender: TObject);
begin
if ListBox1.ItemIndex <> -1 then
Button3.Enabled:=true;
end;

procedure Tcr_stanF.ProvZapolOs(Sender: TObject);
var
i,pr:byte;
begin
pr:=0;
for i:=0 to 7 do
prall[i]:=0;
if (DBLookupComboBox1.Text='') and (Edit2.Text='') then begin
  Beep;
  ShowMessage('Выберите кафедру');
  pr:=1;
  end;


if (DBLookupComboBox2.Text='') and (Edit6.Text='') then begin
  Beep;
  ShowMessage('Выберите разработчика');
  pr:=1;
  end;


if (DBLookupComboBox3.Text='') and (Edit7.Text='') then begin
  Beep;
  ShowMessage('Введите наименование дисциплины');
  pr:=1;
  end;

if (DBLookupComboBox4.Text='') and (Edit8.Text='') then begin
  Beep;
  ShowMessage('Введите форму обучения');
  pr:=1;
  end;

  if pr=0 then
  prall[0]:=1;

end;


procedure Tcr_stanF.ProvZapolVv(Sender: TObject);
begin
prall[1]:=1;
end;

procedure Tcr_stanF.ProvZapolPrim(Sender: TObject);
var
pr:byte;
begin
pr:=0;
  if (Edit1.Text='') and (ListBox4.Items.Count=0) then begin
  Beep;
  ShowMessage('Не выбрана специальность, для которой'+#13+'действует стандарт');
  pr:=1;
  end;
  if (ListBox4.Count<>0) and (ListBox13.Count<ListBox4.Count) and RadioButton5.Checked then begin
  Beep;
  ShowMessage('Дата утверждения ГОС ВПО введена не для всех'+#13+'специальностей');
  pr:=1;
  end;

  if pr=0 then
  prall[2]:=1;

end;

procedure Tcr_stanF.ProvZapolCel(Sender: TObject);
var
pr:byte;
begin
pr:=0;
  if Panel5.Visible=false then begin
  Beep;
  ShowMessage('Не заполнен обязательный документ "Цели и задачи дисуиплины" ');
  pr:=1;
  end;

 if pr=0 then
 prall[3]:=1;

end;

procedure Tcr_stanF.ProvZapolSod(Sender: TObject);
var
pr:byte;
begin
pr:=0;
    if not FileExists(main.AccesPath+'Sz~.doc') then begin
    Beep;
    ShowMessage('Не заполнен обязательный документ'+#13+'"Виды и содержание занятий" ');
    pr:=1;
    end;

    if not FileExists(main.AccesPath+'UMM~.doc') then begin
    Beep;
    ShowMessage('Не заполнен обязательный документ'+#13+'"Учебно-методические материалы" ');
    pr:=1;
    end;

    if not FileExists(main.AccesPath+'Kar~.doc') then begin
    Beep;
    ShowMessage('Не заполнен обязательный документ'+#13+'"Учебно-методическая карта дисциплины" ');
    pr:=1;
    end;

    if not FileExists(main.AccesPath+'At~.doc') then begin
    Beep;
    ShowMessage('Не заполнен обязательный документ'+#13+'"Cодержание итоговой и промежуточной аттестации" ');
    pr:=1;
    end;

    if pr=0 then
    prall[4]:=1;

end;

procedure Tcr_stanF.ProvZapolPril(Sender: TObject);
var
pr:byte;
begin
pr:=0;
    if ListBox8.Count=0 then begin
    Beep;
    ShowMessage('В стандарте должны содержаться обязательные приложения!');
    pr:=1;
    end;

    if pr=0 then
    prall[5]:=1;
end;

procedure Tcr_stanF.ProvZapolSsil(Sender: TObject);
var
pr:byte;
begin
pr:=0;
    if Edit4.Enabled=true then
    if (ListBox9.Count=0) or (ListBox10.Count=0) then begin
    Beep;
    ShowMessage('В стандарт должны быть включены ссылки на государственные стандарты'+#13+'и стандарты предприятия');
    pr:=1;
    end;

    if pr=0 then
    prall[6]:=1;
end;

procedure Tcr_stanF.Button1Click(Sender: TObject);
var
Name_file:PWideChar;
typer,wdRep,wdFin:OleVariant;
zam,templ:OleVariant;
i:integer;
begin
ProvZapolOs(Sender);

if prall[0]=1 then begin
typer:='File';
Name_file:=PChar(main.AccesPath+'Tit~.doc');
NewDoc:=main.AccesPath+'Tit~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонТит.doc'),Name_file,false);
WordApplication1.Visible:=false;
WordApplication1.ScreenUpdating:=false;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.Find.Forward;

wdFin:=wdFindStop;
wdRep:=wdReplaceOne;
templ:='##наимдисц';
zam:=DataModule1.Query14_1.FieldByName('naim').AsString;

WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
  zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

WD.Save;
WD.Close;

Name_file:=PChar(main.AccesPath+'Pred~.doc');
  NewDoc:=main.AccesPath+'Pred~.doc';
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонПред.doc'),Name_file,false);
  WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  WordApplication1.Selection.Find.Forward;

  templ:='##наимкафразрстан';
  zam:=DBLookupComboBox1.Text;
  if DBLookupComboBox1.Text='' then
  nkaf:=Edit2.Text
  else nkaf:=zam;

  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
    zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  templ:='##порядок';

    if RadioButton1.Checked then begin
      zam:='ВВОДИТСЯ ВПЕРВЫЕ';
        porv1:=zam;
      prv.Caption:=zam;
      WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
        zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    end
    else begin
      zam:='ВВОДИТСЯ ВЗАМЕН ';
      for i:=0 to ListBox1.Count-1 do
      zam:=zam+ListBox1.Items[i];
      porv1:=zam;
      prv.Caption:=zam;
      WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
        zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    end;
//  WordApplication1.Visible;
  WD.Save;
  WD.Close;
WordApplication1.ScreenUpdating:=true;
WordApplication1.ScreenRefresh;
if WordApplication1.Documents.Count<>0 then
WordApplication1.Visible:=true;

if Button1.Caption='Далее>>' then begin
Label38.Caption:='1';
PageControl1.SelectNextPage(true);
end;
Button1.Caption:='Далее>>';

end;

end;


procedure Tcr_stanF.RadioButton7Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
if cr_stanF.Visible<>false then begin
typer:='File';
Name_file:=PChar(main.AccesPath+'Vv~.doc');
NewDoc:=main.AccesPath+'Vv~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
WD.Range.Font.Bold:=2;
WD.Range.Font.Size:=14;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.InsertAfter('Введение');
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('vved','nalved','+');
sini.Free;
end;
end;

procedure Tcr_stanF.WordApplication1DocumentBeforeSave(ASender: TObject;
  const Doc: _Document; var SaveAsUI, Cancel: WordBool);
var
fil,st:OleVariant;
Kf:integer;
begin
if WordApplication1.ActiveDocument.Name = 'Vv~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'Vv~.doc');
Panel3.Visible:=true;
Button30.Visible:=true;
end;

if WordApplication1.ActiveDocument.Name = 'CZ~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'CZ~.doc');
Panel5.Visible:=true;
Button28.Visible:=true;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('celi','nalcel','+');
sini.Free;
end;

if WordApplication1.ActiveDocument.Name = 'Sz~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'Sz~.doc');
Label13.Font.Color:=clMaroon;
Image1.Visible:=true;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('soderg','soderg','+');
sini.Free;
end;

if WordApplication1.ActiveDocument.Name = 'At~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'At~.doc');
Label14.Font.Color:=clMaroon;
Image4.Visible:=true;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('soderg','attest','+');
sini.Free;
end;

if WordApplication1.ActiveDocument.Name = 'Op~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'Op~.doc');
Label17.Font.Color:=clMaroon;
Image5.Visible:=true;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('soderg','osprep','+');
sini.Free;
end;

if WordApplication1.ActiveDocument.Name = 'Tso~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'Tso~.doc');
Panel6.Visible:=true;
Button31.Visible:=true;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('soderg','techsr','+');
sini.Free;
end;

if WordApplication1.ActiveDocument.Name = 'SRS~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'SRS~.doc');
Panel7.Visible:=true;
Button32.Visible:=true;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('soderg','srsdis','+');
sini.Free;
end;

if WordApplication1.ActiveDocument.Name = 'Enp~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'Enp~.doc');
Panel8.Visible:=true;
Button33.Visible:=true;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('soderg','elpois','+');
sini.Free;
end;

if WordApplication1.ActiveDocument.Name = 'Sog~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'Sog~.doc');
Label18.Font.Color:=clMaroon;
Image6.Visible:=true;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('soderg','soglas','+');
sini.Free;
end;

if WordApplication1.ActiveDocument.Name = 'OiS~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'OiS~.doc');
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('sokr','nalsok','+');
sini.Free;
end;

if WordApplication1.ActiveDocument.Name = 'UMM~.doc' then begin
fil:=WordApplication1.ActiveDocument;
fil.SaveAs(main.AccesPath+'UMM~.doc');
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('soderg','uchmat','+');
sini.Free;
end;

end;

procedure Tcr_stanF.PageControl1Change(Sender: TObject);
var
i:integer;
begin
if PageControl1.ActivePageIndex=1 then begin
ProvZapolOs(Sender);

  if prall[0]=0 then begin
  MessageDlg('Страница "Основная" не заполнена.',mtError,[mbOK],0);
  PageControl1.ActivePage.Visible:=true;
  PageControl1.SelectNextPage(false);
  end;

  if Caption<>'Конструктор стандарта (Восстановленный)' then
  if Label38.Caption <> '1' then begin
  Button1.Caption:='Далее>';
  Button1Click(Sender);
  end;

  Label38.Caption:='1';

end;

if PageControl1.ActivePageIndex=2 then begin
  ProvZapolOs(Sender);
  ProvZapolVv(Sender);

  if prall[0]=0 then begin
  MessageDlg('Страница "Основная" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=0;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[1]=0 then begin
  MessageDlg('Страница "Введение" не заполнена',mtError,[mbOk],0);
  PageControl1.SelectNextPage(false);
  Exit;
  end;

  if Caption<>'Конструктор стандарта (Восстановленный)' then
  if Label35.Caption <> '1' then begin
  Button4.Caption:='Далее>';
  Button4Click(Sender);
  end;

  Label35.Caption:='1';

end;

if PageControl1.ActivePageIndex=3 then begin
  ProvZapolOs(Sender);
  ProvZapolVv(Sender);
  ProvZapolPrim(Sender);

  if prall[0]=0 then begin
  MessageDlg('Страница "Основная" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=0;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[1]=0 then begin
  MessageDlg('Страница "Введение" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=1;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[2]=0 then begin
  MessageDlg('Страница "Применение" не заполнена',mtError,[mbOk],0);
  PageControl1.SelectNextPage(false);
  for i:=1 to 10 do begin
    DateTimePicker1.Color:=clAqua;
    Sleep(1500);
    DateTimePicker1.Color:=clWhite;
    end;
  Exit;
  end;

  if Caption<>'Конструктор стандарта (Восстановленный)' then
  if Label36.Caption <> '1' then begin
  Button8.Caption:='Далее>';
  Button8Click(Sender);
  end;

  Label36.Caption:='1';

end;

if PageControl1.ActivePageIndex=4 then begin
  ProvZapolOs(Sender);
  ProvZapolVv(Sender);
  ProvZapolPrim(Sender);
  ProvZapolCel(Sender);

  if prall[0]=0 then begin
  MessageDlg('Страница "Основная" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=0;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[1]=0 then begin
  MessageDlg('Страница "Введение" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=1;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[2]=0 then begin
  MessageDlg('Страница "Применение" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=2;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[3]=0 then begin
  MessageDlg('Страница "Цели" не заполнена',mtError,[mbOk],0);
  PageControl1.SelectNextPage(false);
  Exit;
  end;

  if Caption<>'Конструктор стандарта (Восстановленный)' then
  if Label37.Caption <> '1' then begin
  Button10.Caption:='Далее>';
  Button10Click(Sender);
  end;

  label37.Caption:='1';

end;

if PageControl1.ActivePageIndex=5 then begin
  ProvZapolOs(Sender);
  ProvZapolVv(Sender);
  ProvZapolPrim(Sender);
  ProvZapolCel(Sender);
  ProvZapolSod(Sender);

  if prall[0]=0 then begin
  MessageDlg('Страница "Основная" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=0;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[1]=0 then begin
  MessageDlg('Страница "Введение" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=1;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[2]=0 then begin
  MessageDlg('Страница "Применение" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=2;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[3]=0 then begin
  MessageDlg('Страница "Цели" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=3;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[4]=0 then begin
  MessageDlg('Страница "Содержание" не заполнена',mtError,[mbOk],0);
  PageControl1.SelectNextPage(false);
  end;

  if Label53.Caption <> '1' then begin
  Button11.Caption:='Далее>';
  Button11Click(Sender);
  end;

  label53.Caption:='1';

end;

if PageControl1.ActivePageIndex=6 then begin
  ProvZapolOs(Sender);
  ProvZapolVv(Sender);
  ProvZapolPrim(Sender);
  ProvZapolCel(Sender);
  ProvZapolSod(Sender);
  ProvZapolPril(Sender);

  if prall[0]=0 then begin
  MessageDlg('Страница "Основная" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=0;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[1]=0 then begin
  MessageDlg('Страница "Введение" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=1;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[2]=0 then begin
  MessageDlg('Страница "Применение" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=2;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[3]=0 then begin
  MessageDlg('Страница "Цели" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=3;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[4]=0 then begin
  MessageDlg('Страница "Содержание" не заполнена',mtError,[mbOk],0);
  PageControl1.SelectNextPage(false);
  end;

  if prall[5]=0 then begin
  MessageDlg('Страница "Приложения не заполнена" не заполнена',mtError,[mbOk],0);
  PageControl1.SelectNextPage(false);
  end;
end;

if PageControl1.ActivePageIndex=7 then begin
  ProvZapolOs(Sender);
  ProvZapolVv(Sender);
  ProvZapolPrim(Sender);
  ProvZapolCel(Sender);
  ProvZapolSod(Sender);
  ProvZapolPril(Sender);
  ProvZapolSsil(Sender);

  if prall[0]=0 then begin
  MessageDlg('Страница "Основная" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=0;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[1]=0 then begin
  MessageDlg('Страница "Введение" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=1;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[2]=0 then begin
  MessageDlg('Страница "Применение" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=2;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[3]=0 then begin
  MessageDlg('Страница "Цели" не заполнена',mtError,[mbOk],0);
  PageControl1.ActivePageIndex:=3;
  PageControl1.Refresh;
  Exit;
  end;

  if prall[4]=0 then begin
  MessageDlg('Страница "Содержание" не заполнена',mtError,[mbOk],0);
  PageControl1.SelectNextPage(false);
  end;

  if prall[5]=0 then begin
  MessageDlg('Страница "Приложения не заполнена" не заполнена',mtError,[mbOk],0);
  PageControl1.SelectNextPage(false);
  end;

  if prall[6]=0 then begin
  MessageDlg('Страница "Ссылки" не заполнена',mtError,[mbOk],0);
  PageControl1.SelectNextPage(false);
  end;

  if Caption<>'Конструктор стандарта (Восстановленный)' then
  if Label54.Caption <> '1' then begin
  Button17.Caption:='Далее>';
  Button17Click(Sender);
  end;

  Label54.Caption:='1';

end;

end;

procedure Tcr_stanF.Button4Click(Sender: TObject);
begin
ProvZapolVv(Sender);

with DataModule1 do begin
Query10_1.SQL.Clear;
Query10_1.SQL.Add('SELECT DISTINCT year FROM uchplan');
Query10_1.Open;
end;

if (prall[0]=1) and (prall[1]=1) then begin
if Button4.Caption='Далее>>' then begin
Label35.Caption:='1';
PageControl1.SelectNextPage(true);
end;
Button4.Caption:='Далее>>';
end;

end;

procedure Tcr_stanF.Button5Click(Sender: TObject);
var
i,j,p:integer;
spvibr,texvib:string;
begin
if ListBox3.ItemIndex=-1 then Exit;
if ListBox4.Count=0 then begin
  ListBox4.Items.Append(ListBox3.Items[ListBox3.ItemIndex]);
  ListBox6.Items.Append(ListBox5.Items[ListBox3.ItemIndex]);
  ListBox4.Refresh;
   for i:=0 to ListBox3.Count-1 do begin
   p:=0;
   for j:=0 to 29 do
    if ms[i,j]=ms[ListBox3.ItemIndex,j] then
    p:=p+1;
  if p=30 then
  ListBox12.Items.Add(IntToStr(i));
  end;
Exit;
end;

if ListBox4.Count<>0 then begin
  p:=0;
  for i:=0 to ListBox12.Count-1 do
    if ListBox3.ItemIndex=StrToInt(ListBox12.Items[i]) then
    p:=p+1;
    if p>0 then begin
    ListBox4.Items.Append(ListBox3.Items[ListBox3.ItemIndex]);
    ListBox13.Items.Append('');
    ListBox6.Items.Append(ListBox5.Items[ListBox3.ItemIndex]);
    ListBox4.Refresh;
    spvibr:='';
    texvib:='';
    for j:=0 to ListBox6.Count-1 do
    spvibr:=spvibr+ListBox6.Items[j]+'|';
    for j:=0 to ListBox4.Count-1 do
    texvib:=texvib+ListBox4.Items[j]+'|';
    sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
    sini.WriteString('primen','spvibr',spvibr);
    sini.WriteString('primen','texvib',texvib);
    sini.Free;
    end
    else begin
    Beep;
    MessageDlg('Учебные планы различны для данных специальностей',mtError,[mbOk],0);
    Exit;
    end;
  end;

  if ListBox3.Count<>0 then
  ListBox3.ItemIndex:=0
  else begin
  ListBox3.Enabled:=false;
  Button2.Enabled:=false;
  end;
end;

procedure Tcr_stanF.Button6Click(Sender: TObject);
var
spvibr:string;
i:integer;
begin
if ListBox4.ItemIndex=-1 then Exit;
if ListBox3.Enabled=false then begin
ListBox3.Enabled:=true;
Button2.Enabled:=true;
end;
ListBox6.Items.Delete(ListBox4.ItemIndex);
    spvibr:='';
    for i:=0 to ListBox6.Count-1 do
    spvibr:=spvibr+ListBox6.Items[i]+' ';
    sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
    sini.WriteString('primen','spvibr',spvibr);
    sini.Free;
ListBox4.Items.Delete(ListBox4.ItemIndex);
ListBox13.Items.Delete(ListBox4.ItemIndex);
if ListBox4.Count<>0 then
ListBox4.ItemIndex:=0
else begin
ListBox12.Clear;
Button3.Enabled:=false;
end;
ListBox4.Refresh;

end;

procedure Tcr_stanF.Button7Click(Sender: TObject);
begin
if ListBox3.ItemIndex=-1 then begin
ShowMessage('Выберите элемент');
Exit;
end
 else begin
  Edit1.Text:=ListBox3.Items[ListBox3.ItemIndex];
  ListBox6.Items.Append(ListBox5.Items[ListBox3.ItemIndex]);
  sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
  sini.WriteString('primen','spvibr',ListBox6.Items[0]);
  sini.WriteString('primen','texvib',Edit1.Text);
  sini.Free;
  end;
end;

procedure Tcr_stanF.Button9Click(Sender: TObject);
begin
Edit1.Text:='';
ListBox6.Clear;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('primen','spvibr','');
sini.WriteString('primen','vibtex','');
sini.Free;
end;

procedure Tcr_stanF.Button8Click(Sender: TObject);
var
Name_file:PWideChar;
typer,wdRep,wdFin:OleVariant;
zam,templ,zamm:OleVariant;
i:integer;
pun:char;
begin
if DBLookupComboBox5.Text<>'' then
godc.Caption:=IntToStr(DataModule1.Query10_1.FieldByName('year').AsInteger)
else
godc.Caption:=Edit9.Text;
if (ListBox4.Count=0) and (Edit1.Text='') then begin
ShowMessage('Выберите специальности или направления');
Exit;
end
  else begin
  typer:='File';
  wdFin:=wdFindStop;
  wdRep:=wdReplaceOne;
  WordApplication1.Visible:=false;
  WordApplication1.ScreenUpdating:=false;
  NewDoc:=main.AccesPath+'Pred~.doc';
  WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  WordApplication1.Selection.Find.Forward;

  templ:='##наимспецидатутв';
  if RadioButton3.Checked then begin
  zam:='('+ListBox6.Items[0]+') '+'"'+Edit1.Text+'"'+' утв.'+DateToStr(DateTimePicker1.Date);
    infgos:=zam;
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
    zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  end;

  if RadioButton5.Checked then begin
    for i:=0 to ListBox4.Count-1 do begin
      if i=0 then begin
      zam:='';
      WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
         EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
         zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      WordApplication1.Selection.Collapse(EmptyParam);
      end;
    zam:='('+ListBox6.Items[i]+') '+'"'+ListBox4.Items[i]+'"'+' утв.'+ListBox13.Items[i]+'; ';
    zamm:=zamm+zam;
    WordApplication1.Selection.InsertBefore(zam);
    end;
    infgos:=zamm;
  end;

  WD.Save;
  WD.Close;

  Name_file:=PChar(main.AccesPath+'Naim~.doc');
  NewDoc:=main.AccesPath+'Naim~.doc';
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонНаим.doc'),Name_file,false);
  WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
  wdRep:=wdReplaceOne;
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;

  templ:='##наимдисц';
  zam:='"'+DataModule1.Query14_1.FieldByName('naim').AsString+'"';
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
  zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;

  templ:='##наимдисц';
  zam:='"'+DataModule1.Query14_1.FieldByName('naim').AsString+'"';
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
  zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  wdFin:=wdFindStop;
  templ:='##кодинаимспец';
  zam:='';
  if RadioButton3.Checked then begin
  zam:='('+ListBox6.Items[0]+') '+'"'+Edit1.Text+'"';
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
  zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  end;

  if RadioButton5.Checked then
    for i:=0 to ListBox4.Count-1 do begin
      if i=0 then begin
      zam:='';
      WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
         EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
         EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      WordApplication1.Selection.Collapse(EmptyParam);
      end;
    zam:='('+ListBox6.Items[i]+') '+'"'+ListBox4.Items[i]+'"'+' утв.'+ListBox13.Items[i]+'; ';
    WordApplication1.Selection.InsertBefore(zam);
   end;

  wdRep:=wdReplaceOne;
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  templ:='##порядок';

    if RadioButton1.Checked then begin
      zam:='Вводится впервые';
      WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
        zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    end
    else begin
      zam:='Вводится взамен';
      WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
        zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      WordApplication1.Selection.InsertAfter(#13);
      for i:=0 to ListBox1.Count-1 do begin
      zam:=ListBox1.Items[i];
      if ListBox1.Count=1 then
      WordApplication1.Selection.InsertAfter(zam)
      else
      WordApplication1.Selection.InsertAfter(zam);
      WordApplication1.Selection.InsertAfter(#13);
      end;

   end;

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  templ:='##должн';
  zam:=main.Label2.Caption;

  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
        zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  templ:='##ФИО';
  zam:=main.Label1.Caption;

  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
        zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WD.Save;
  WD.Close;

  WordApplication1.ScreenUpdating:=true;
  WordApplication1.ScreenRefresh;
  if WordApplication1.Documents.Count<>0 then
  WordApplication1.Visible:=true;

  if Button8.Caption='Далее>>' then begin
  Label36.Caption:='1';
  PageControl1.SelectNextPage(true);
  end;
  Button8.Caption:='Далее>>';

if cr_stanF.Caption<>'Конструктор стандарта (Восстановленный)' then begin
  MessageDlg('Заполните обязательный пункт "Цели и задачи дисциплины" ',mtInformation,[mbOk],0);
  typer:='File';
  Name_file:=PChar(main.AccesPath+'CZ~.doc');
  NewDoc:=main.AccesPath+'CZ~.doc';
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
  WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
  WordApplication1.Visible:=true;
  Application.Minimize;
  WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
  WD.Range.Font.Bold:=2;
  WD.Range.Font.Size:=14;
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  WordApplication1.Selection.InsertAfter('ЦЕЛИ И ЗАДАЧИ ДИСЦИПЛИНЫ');
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  end;
end;

end;

procedure Tcr_stanF.Button10Click(Sender: TObject);
//====================================
    procedure DelStrZap(var lekz,lab:string; mlek:real);
    begin
    if (Pos(',',FloatToStr(mlek))=0) and (Pos('.',FloatToStr(mlek))=0) then begin
        lekz:=FloatToStr(mlek);
        lab:='0';
        end
    else
    if Pos(',',FloatToStr(mlek))<>0 then begin
      lab:=Copy(FloatToStr(mlek),Pos(',',FloatToStr(mlek))+1,Length(FloatToStr(mlek))-Pos(',',FloatToStr(mlek)));
      lekz:=Copy(FloatToStr(mlek),1,Pos(',',FloatToStr(mlek))-1);
    end else begin
      lab:=Copy(FloatToStr(mlek),Pos('.',FloatToStr(mlek))+1,Length(FloatToStr(mlek))-Pos(',',FloatToStr(mlek)));
      lekz:=Copy(FloatToStr(mlek),1,Pos('.',FloatToStr(mlek))-1);
    end;
    end;

    procedure Sort(var semm:dinar);
    var
    n,l,m,min:integer;
    begin
    for l:=1 to Length(semm) do begin
      for n:=0 to Length(semm)-1 do
      min:=semm[n];
      if semm[n+1]<min then begin
        semm[n]:=semm[n+1];
        semm[n+1]:=min;
        end;
      end;
    end;

//====================================
var
lek,prak:array [0..11] of real;
pasp: array of array of integer;
semm:dinar;
obv:integer; //общий объем часов
ch1,ch2:string; //части элементов массива
sem,zam2,blp,ble:string; // sem-семестры преподавания
ekz,zach:string;  //ekz-семестры экзаменов, zach-семестры зачетов
s:char;
i,j,k,l,p,srs,kol,dsem:integer; //dsem-колво семестров, srs-самостоятельная работа
Name_file:PWideChar;
typer,wdRep,wdFin:OleVariant;
zam,zam1,templ:OleVariant;
Tbl: Table;
begin
if Panel5.Visible=false then begin
ShowMessage('Заполните и сохраните раздел'+#13+'Цели и задачи дисциплины'+#13+'на странице "Цели"');
Exit;
end
  else begin
    if RadioButton3.Checked or RadioButton5.Checked then begin
    DataModule1.Query10_1.SQL.Clear;
    DataModule1.Query10_1.SQL.Add('SELECT cod,year FROM uchplan WHERE year='+godc.Caption+' and codcp='+'"'+ListBox6.Items[0]+'"'+' and codfo='+fob.Caption);
    DataModule1.Query10_1.Open;
    DataModule1.Query10_1.First;
    DataModule1.Query15_1.SQL.Clear;
    DataModule1.Query15_1.SQL.Add('SELECT * FROM uchpldan WHERE coduchp='+IntToStr(DataModule1.Query10_1.FieldByName('cod').AsInteger)+' and coddis='+dis.Caption);
    DataModule1.Query15_1.Open;
    DataModule1.Query15_1.First;
    ekz:=DataModule1.Query15_1.FieldByName('ekz').AsString;
    zach:=DataModule1.Query15_1.FieldByName('zach').AsString;
    kpr:=DataModule1.Query15_1.FieldByName('kpr').AsString;
    krab:=DataModule1.Query15_1.FieldByName('kra').AsString;
    rz:=DataModule1.Query15_1.FieldByName('rasz').AsString;
    dsem:=0;
    for i:=1 to 12 do
    if (DataModule1.Query15_1.Fields[7+i].AsFloat<>0) or (DataModule1.Query15_1.Fields[19+i].AsFloat<>0) then begin
    dsem:=dsem+1;
    SetLength(semm,Length(semm)+1);
    semm[Length(semm)-1]:=i;
    end;
    for j:=0 to 11 do
    lek[j]:=DataModule1.Query15_1.Fields[8+j].AsFloat;
    for j:=0 to 11 do
    prak[j]:=DataModule1.Query15_1.Fields[20+j].AsFloat;
    srs:=DataModule1.Query15_1.FieldByName('smrab').AsInteger;

   Label22.Caption:=IntToStr(dsem);
   if dsem>1 then begin
   SetLength(srsm,dsem);
   Application.CreateForm(TSRPF, SRPF);
   MessageDlg('Для заполнения паспорта дисциплины необходимо'+#13+'распределить количество часов, отведенных на самостоятельную работу',mtInformation,[mbOk],0);
   SRPF.Label18.Caption:=IntToStr(srs);
   SRPF.Label17.Caption:=IntToStr(dsem);
     case dsem of
     3: begin
        SRPF.Label14.Visible:=true;
        SRPF.Edit6.Visible:=true;
        end;
     4: begin
        SRPF.Label9.Visible:=true;
        SRPF.Edit1.Visible:=true;
        end;
     5: begin
        SRPF.Label10.Visible:=true;
        SRPF.Edit2.Visible:=true;
        end;
     6: begin
        SRPF.Label11.Visible:=true;
        SRPF.Edit3.Visible:=true;
       end;
    end;
   SRPF.ShowModal;
   end;
   sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
   sini.WriteString('obsh','dsem',IntToStr(dsem));
   sini.Free;
   obv:=0;
   for j:=0 to 11 do begin
   DelStrZap(ch1,ch2,lek[j]);
   obv:=obv+StrToInt(ch1)+StrToInt(ch2);
   DelStrZap(ch1,ch2,prak[j]);
   obv:=obv+StrToInt(ch1)+StrToInt(ch2);
   end;
   obv:=obv+srs;
   Sort(semm);
   Label21.Caption:='';
   for i:=0 to Length(semm)-1 do
   Label21.Caption:=Label21.Caption+IntToStr(semm[i]);
   sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
   sini.WriteString('obsh','sem',Label21.Caption);
   sini.Free;
   SetLength(pasp,dsem);
   for j:=0 to dsem-1 do
   SetLength(pasp[j],6);
   for j:=1 to dsem do begin
   if RadioButton3.Checked then begin
   pasp[j-1,0]:=semm[j-1];
   DelStrZap(ch1,ch2,DataModule1.Query15_1.Fields[8+semm[j-1]-1].AsFloat);
   pasp[j-1,2]:=StrToInt(ch1);
   pasp[j-1,3]:=StrToInt(ch2);
   DelStrZap(ch1,ch2,DataModule1.Query15_1.Fields[20+semm[j-1]-1].AsFloat);
   pasp[j-1,4]:=StrToInt(ch1);
   end;
   if RadioButton5.Checked then begin
   pasp[j-1,0]:=j;
   //вычисляем первый семестр преподавания
   for k:=1 to 12 do
   if (DataModule1.Query15_1.Fields[7+k].AsFloat<>0) or (DataModule1.Query15_1.Fields[19+k].AsFloat<>0) then begin
   p:=k;
   Break;
   end; //============
   DelStrZap(ch1,ch2,DataModule1.Query15_1.Fields[7+p+j-1].AsFloat);
   pasp[j-1,2]:=StrToInt(ch1);
   pasp[j-1,3]:=StrToInt(ch2);
   DelStrZap(ch1,ch2,DataModule1.Query15_1.Fields[19+p+j-1].AsFloat);
   pasp[j-1,4]:=StrToInt(ch1);
   end;
   if dsem=1 then
   pasp[j-1,5]:=srs
   else
   pasp[j-1,5]:=srsm[j-1];
   pasp[j-1,1]:=pasp[j-1,2]+pasp[j-1,3]+pasp[j-1,4];
   end;
    typer:='File';
    Name_file:=PChar(main.AccesPath+'Pas~.doc');
    NewDoc:=main.AccesPath+'Pas~.doc';
    CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонПас.doc'),Name_file,false);
    WordApplication1.Visible:=false;
    WordApplication1.ScreenUpdating:=false;
    WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
                 EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
                 EmptyParam,EmptyParam,EmptyParam));

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    WordApplication1.Selection.Find.Forward;

    wdFin:=wdFindStop;
    wdRep:=wdReplaceOne;
    templ:='##наимкафразрстан';
    if DBLookupComboBox1.Text<>'' then
    zam:=DBLookupComboBox1.Text
    else
    zam:=DataModule1.Table1naim.AsString;
    zam2:=Copy(zam,9,Length(zam));
    zam1:=Copy(zam2,1,1);
    zam1:=UpperCase(zam1);
    Delete(zam2,1,1);
    zam:='"'+zam1+zam2+'"';
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    templ:='##наимдисцшиф';
    zam:='"'+DataModule1.Query14_1.FieldByName('allpar').AsString+'"';
    ndis:=zam;
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    templ:='##кодспец';
    if RadioButton3.Checked then begin
    zam:='('+ListBox6.Items[0]+') '+'"'+Edit1.Text+'"';
       spec:=zam;
    end;
    if RadioButton5.Checked then begin
    zam:='';
    for i:=0 to ListBox4.Count-1 do
    zam:=zam+ListBox6.Items[i]+'; ';
      spec:=zam;
    end;
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    templ:='##статдисц';
    if (DataModule1.Query14_1.FieldByName('codkom').AsString = 'Ф') or (DataModule1.Query14_1.FieldByName('codkom').AsString = 'Р') then
    zam:='обязательная';
    if DataModule1.Query14_1.FieldByName('codkom').AsString = 'В' then
    zam:='элективная';
       sdic:=zam;
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);


    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    templ:='##формоб';
    zam:=DBLookupComboBox4.Text;
      forob:=zam;
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    templ:='##обдис';
    zam:=IntToStr(obv)+'ч.';
    vdic:=zam;
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    Tbl:=WordApplication1.ActiveDocument.Tables.Item(2);
    l:=Tbl.Rows.Count-1;
    if dsem <> 1 then
    for j:=1 to dsem-1 do
    Tbl.Rows.Add(EmptyParam);

    for j:=Tbl.Rows.Count downto l+1 do begin
    blp:='';
    ble:='';
    for k:=1 to 6 do
    if pasp[j-l-1,k-1]=0 then
    Tbl.Cell(j,k).Range.Text:=''
    else
    Tbl.Cell(j,k).Range.Text:=IntToStr(pasp[j-l-1,k-1]);

    if RadioButton3.Checked then begin
    if Pos(IntToStr(semm[j-l-1]),kpr)<>0 then
    blp:=blp+'(КП) ';
    if Pos(IntToStr(semm[j-l-1]),krab)<>0 then
    blp:=blp+'(КР) ';
    if Pos(IntToStr(semm[j-l-1]),rz)<>0 then
    blp:=blp+'(РЗ) ';
    if Pos(IntToStr(semm[j-l-1]),ekz)<>0 then
    ble:=ble+'(экз) ';
    if Pos(IntToStr(semm[j-l-1]),zach)<>0 then
    ble:=ble+'(зач) ';
    end;

    if RadioButton5.Checked then
    if Pos(IntToStr(j-l+p-1),Label21.Caption)<>0 then begin
    if Pos(IntToStr(j-l+p-1),kpr)<>0 then
    blp:=blp+'(КП) ';
    if Pos(IntToStr(j-l+p-1),krab)<>0 then
    blp:=blp+'(КР) ';
    if Pos(IntToStr(j-l+p-1),rz)<>0 then
    blp:=blp+'(РЗ) ';
    if Pos(IntToStr(j-l+p-1),ekz)<>0 then
    ble:=ble+'(экз) ';
    if Pos(IntToStr(j-l+p-1),zach)<>0 then
    ble:=ble+'(зач) ';
    end;
    
    Tbl.Cell(j,7).Range.Text:=blp;
    Tbl.Cell(j,8).Range.Text:=ble;
    end;

    WD.Save;
    WD.Close;
    WordApplication1.ScreenUpdating:=true;
    WordApplication1.ScreenRefresh;
    if WordApplication1.Documents.Count<>0 then
    WordApplication1.Visible:=true;

  end;
{  else
  for i:=0 to ListBox4.Count-1 do begin
//-------------------------
    DataModule1.Query10_1.SQL.Clear;
    DataModule1.Query10_1.SQL.Add('SELECT cod,year FROM uchplan WHERE year='+godc.Caption+' and codcp='+'"'+ListBox6.Items[i]+'"'+' and codfo='+fob.Caption);
    DataModule1.Query10_1.Open;
    DataModule1.Query10_1.First;
    DataModule1.Query15_1.SQL.Clear;
    DataModule1.Query15_1.SQL.Add('SELECT * FROM uchpldan WHERE coduchp='+IntToStr(DataModule1.Query10_1.FieldByName('cod').AsInteger)+' and coddis='+dis.Caption);
    DataModule1.Query15_1.Open;
    DataModule1.Query15_1.First;
    ekz:=DataModule1.Query15_1.FieldByName('ekz').AsString;
    zach:=DataModule1.Query15_1.FieldByName('zach').AsString;
    kpr:=DataModule1.Query15_1.FieldByName('kpr').AsString;
    krab:=DataModule1.Query15_1.FieldByName('kra').AsString;
    rz:=DataModule1.Query15_1.FieldByName('rasz').AsString;
    for j:=0 to 11 do
    lek[j]:=DataModule1.Query15_1.Fields[8+j].AsFloat;
    for j:=0 to 11 do
    prak[j]:=DataModule1.Query15_1.Fields[20+j].AsFloat;
    srs:=DataModule1.Query15_1.FieldByName('smrab').AsInteger;
    sem:='';
    if ekz='' then
    sem:=zach
    else
    if zach='' then
    sem:=ekz
    else
    if ekz=zach then
    sem:=ekz
    else begin
    sem:=concat(ekz,zach);
      for j:=1 to Length(sem) do begin
      s:=sem[j];
      for k:=j to Length(sem) do
      if (s=sem[k]) and (j<>k) then
      Delete(sem,k,1);
      end;
    end;

   dsem:=Length(sem);
   obv:=0;
   for j:=0 to 11 do begin
   DelStrZap(ch1,ch2,lek[j]);
   obv:=obv+StrToInt(ch1)+StrToInt(ch2);
   DelStrZap(ch1,ch2,prak[j]);
   obv:=obv+StrToInt(ch1)+StrToInt(ch2);
   end;
   obv:=obv+srs;
   sem:=Sort(sem);
   SetLength(pasp,dsem);
   for j:=0 to dsem-1 do
   SetLength(pasp[j],6);
   for j:=1 to dsem do begin
   pasp[j-1,0]:=StrToInt(sem[j]);
   DelStrZap(ch1,ch2,DataModule1.Query15_1.Fields[8+StrToInt(sem[j])-1].AsFloat);
   pasp[j-1,2]:=StrToInt(ch1);
   pasp[j-1,3]:=StrToInt(ch2);
   DelStrZap(ch1,ch2,DataModule1.Query15_1.Fields[20+StrToInt(sem[j])-1].AsFloat);
   pasp[j-1,4]:=StrToInt(ch1);
   pasp[j-1,5]:=srs;
   pasp[j-1,1]:=pasp[j-1,2]+pasp[j-1,3]+pasp[j-1,4];
   end;

    typer:='File';
    Name_file:=PChar('c:\'+ListBox6.Items[i]+'.doc');
    NewDoc:='c:\'+ListBox6.Items[i]+'.doc';
    CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонПас.doc'),Name_file,false);
    WordApplication1.Visible:=false;
    WordApplication1.ScreenUpdating:=false;
    WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
                 EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
                 EmptyParam,EmptyParam,EmptyParam));

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    WordApplication1.Selection.Find.Forward;

    wdFin:=wdFindStop;
    wdRep:=wdReplaceOne;
    templ:='##наимкафразрстан';
    zam:=DBLookupComboBox1.Text;
    zam2:=Copy(zam,9,Length(zam));
    zam1:=Copy(zam2,1,1);
    zam1:=UpperCase(zam1);
    Delete(zam2,1,1);
    zam:='"'+zam1+zam2+'"';
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    templ:='##наимдисцшиф';
    zam:='"'+DataModule1.Query14_1.FieldByName('naim').AsString+'"';
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    templ:='##кодспец';
    zam:='('+ListBox6.Items[i]+') '+'"'+ListBox4.Items[i]+'"';
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    templ:='##формоб';
    zam:=DBLookupComboBox4.Text;
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.End_:=0;
    templ:='##обдис';
    zam:=IntToStr(obv)+'ч.';
    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
            EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
            zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    Tbl:=WordApplication1.ActiveDocument.Tables.Item(1);
    l:=Tbl.Rows.Count-1;
    if dsem <> 1 then
    for j:=1 to dsem-1 do
    Tbl.Rows.Add(EmptyParam);

    for j:=Tbl.Rows.Count downto l+1 do begin
    blp:='';
    ble:='';
    for k:=1 to 6 do
    if pasp[j-l-1,k-1]=0 then
    Tbl.Cell(j,k).Range.Text:=''
    else
    Tbl.Cell(j,k).Range.Text:=IntToStr(pasp[j-l-1,k-1]);

    if Pos(sem[j-l],kpr)<>0 then
    blp:=blp+'(КП) ';
    if Pos(sem[j-l],krab)<>0 then
    blp:=blp+'(КР) ';
    if Pos(sem[j-l],rz)<>0 then
    blp:=blp+'(РЗ) ';
    if Pos(sem[j-l],ekz)<>0 then
    ble:=ble+'(экз) ';
    if Pos(sem[j-l],zach)<>0 then
    ble:=ble+'(зач) ';
    Tbl.Cell(j,7).Range.Text:=blp;
    Tbl.Cell(j,8).Range.Text:=ble;
    end;

    WD.Save;
    WD.Close;
    WordApplication1.ScreenUpdating:=true;
    WordApplication1.ScreenRefresh;
    if WordApplication1.Documents.Count<>0 then
    WordApplication1.Visible:=true;
//-------------------------
 end;}

end;
  if Button10.Caption='Далее>>' then begin
  Label37.Caption:='1';
  PageControl1.SelectNextPage(true);
  end;
  Button10.Caption:='Далее>>';
end;

procedure Tcr_stanF.Label14MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if Image4.Visible=true then Exit;
Label14.Font.Color:=clMaroon;
Label14.Font.Style:=[];
end;

procedure Tcr_stanF.Label14MouseLeave(Sender: TObject);
begin
if Image4.Visible=true then Exit;
Label14.Font.Color:=clBlue;
Label14.Font.Style:=[fsUnderline];
end;

procedure Tcr_stanF.Label16MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if Image3.Visible=true then Exit;
Label16.Font.Color:=clMaroon;
Label16.Font.Style:=[];
end;

procedure Tcr_stanF.Label16MouseLeave(Sender: TObject);
begin
if Image3.Visible=true then Exit;
Label16.Font.Color:=clBlue;
Label16.Font.Style:=[fsUnderline];
end;

procedure Tcr_stanF.Label18MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if Image6.Visible=true then Exit;
Label18.Font.Color:=clMaroon;
Label18.Font.Style:=[];
end;

procedure Tcr_stanF.Label18MouseLeave(Sender: TObject);
begin
if Image6.Visible=true then Exit;
Label18.Font.Color:=clBlue;
Label18.Font.Style:=[fsUnderline];
end;

procedure Tcr_stanF.Label13MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if Image1.Visible=true then Exit;
Label13.Font.Color:=clMaroon;
Label13.Font.Style:=[];
end;

procedure Tcr_stanF.Label13MouseLeave(Sender: TObject);
begin
if Image1.Visible=true then Exit;
Label13.Font.Color:=clBlue;
Label13.Font.Style:=[fsUnderline];
end;

procedure Tcr_stanF.Label15MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if Image2.Visible=true then Exit;
Label15.Font.Color:=clMaroon;
Label15.Font.Style:=[];
end;

procedure Tcr_stanF.Label15MouseLeave(Sender: TObject);
begin
if Image2.Visible=true then Exit;
Label15.Font.Color:=clBlue;
Label15.Font.Style:=[fsUnderline];
end;

procedure Tcr_stanF.Label17MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if Image5.Visible=true then Exit;
Label17.Font.Color:=clMaroon;
Label17.Font.Style:=[];
end;

procedure Tcr_stanF.Label17MouseLeave(Sender: TObject);
begin
if Image5.Visible=true then Exit;
Label17.Font.Color:=clBlue;
Label17.Font.Style:=[fsUnderline];
end;

procedure Tcr_stanF.Label13Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
if FileExists(main.AccesPath+'Sz~.doc') then begin
typer:='File';
NewDoc:=main.AccesPath+'Sz~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end
else begin
typer:='File';
Name_file:=PChar(main.AccesPath+'Sz~.doc');
NewDoc:=main.AccesPath+'Sz~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WordApplication1.Visible:=true;
MessageDlg('Для самостоятельной работы студентов перечисляются пронумерованные задания, '+'которые студенты должны выполнить. При этом указывается'+' содержание и объем каждого задания (в часах),'+'а также ссылки на литературу',mtInformation,[mbOK],0);
Application.Minimize;
WordApplication1.Activate;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
WD.Range.Font.Bold:=2;
WD.Range.Font.Size:=14;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.InsertAfter('Виды и содержание занятий по  дисциплине');
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
end;

end;

procedure Tcr_stanF.Label14Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
if FileExists(main.AccesPath+'At~.doc') then begin
typer:='File';
NewDoc:=main.AccesPath+'At~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end else
begin
typer:='File';
Name_file:=PChar(main.AccesPath+'At~.doc');
NewDoc:=main.AccesPath+'At~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
WD.Range.Font.Bold:=2;
WD.Range.Font.Size:=14;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.InsertAfter('Формы и содержание текущей аттестации и итоговой оценки по дисциплине');
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
end;

end;

procedure Tcr_stanF.Label15Click(Sender: TObject);
begin
Application.CreateForm(TUMMF, UMMF);
UMMF.Show;
end;

procedure Tcr_stanF.DBLookupComboBox2Click(Sender: TObject);
begin
raz.Caption:=DataModule1.Query22.FieldByName('fio').AsString;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('osnov','razrab',raz.Caption);
sini.Free;

with DataModule1.Query22_1 do begin
SQL.Clear;
SQL.Add('SELECT cod FROM prepodav WHERE fio='+'"'+raz.Caption+'"');
Open;
end;
raz.Caption:=FloatToStr(DataModule1.Query22_1.FieldByName('cod').AsFloat);
end;

procedure Tcr_stanF.DBLookupComboBox3Click(Sender: TObject);
begin
dis.Caption:=IntToStr(DataModule1.Query14_1.FieldByName('cod').AsInteger);
cik:=DataModule1.Query14_1.FieldByName('codcik').AsString;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('osnov','discip',dis.Caption);
sini.Free;
end;

procedure Tcr_stanF.DBLookupComboBox4Click(Sender: TObject);
begin
fob.Caption:=IntToStr(DataModule1.Table4.FieldByName('cod').AsInteger);
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('osnov','formob',fob.Caption);
sini.Free;
end;

procedure Tcr_stanF.DBLookupComboBox5Click(Sender: TObject);
var
str,ccp,cnp:string;
god,i,j,k,n:integer;
KeyValues:Variant;
begin
ListBox3.Clear;
ListBox4.Clear;
ListBox5.Clear;
ListBox6.Clear;
ListBox11.Clear;
ListBox12.Clear;
if Edit1.Text<>'' then
Edit1.Text:='';
if Edit9.Visible=true then
Edit9.Visible:=false;
if ListBox4.Count<>0 then begin
ListBox4.Clear;
ListBox13.Clear;
end;

god:=DataModule1.Query10_1.FieldByName('year').AsInteger;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
if DBLookupComboBox5.Text='' then
sini.WriteString('primen','utvuch',Edit9.Text)
else
sini.WriteString('primen','utvuch',DBLookupComboBox5.Text);
sini.WriteString('primen','utvgos',DateToStr(DateTimePicker1.Date));
sini.Free;

with DataModule1 do begin
Query10_1.SQL.Clear;
str:='SELECT cod,codcp,codnp,year FROM uchplan WHERE (year='+IntToStr(god)+') and (codfo='+fob.Caption+')';
Query10_1.SQL.Add(str);
Query10_1.Open;
end;

with DataModule1 do begin
Query15_1.SQL.Clear;
Query15_1.SQL.Add('SELECT * FROM uchpldan WHERE coddis='+dis.Caption);
Query15_1.Open;
end;

//начало условия для многих специальностей
ListBox3.Items.Append('Направления');
ListBox3.Items.Append('--------------------');
ListBox3.Items.Append('');
ListBox5.Items.Append('Направления');
ListBox5.Items.Append('--------------------');
ListBox5.Items.Append('');

DataModule1.Query15_1.First;
while not DataModule1.Query15_1.Eof do begin
DataModule1.Query10_1.First;
  while not DataModule1.Query10_1.Eof do
      with DataModule1 do begin
        if Query10_1.FieldByName('cod').AsInteger = Query15_1.FieldByName('coduchp').AsInteger then begin
        ListBox5.Items.Insert(2,IntToStr(Query10_1.FieldByName('codnp').AsInteger));
        cnp:=Query10_1.FieldByName('codnp').AsString;
        Query5.SQL.Clear;
        Query5.SQL.Add('SELECT cod, naim FROM naprspec WHERE cod='+cnp);
        Query5.Open;
        ListBox3.Items.Insert(2,Query5.FieldByName('naim').AsString);

        ListBox5.Items.Append(Query10_1.FieldByName('codcp').AsString);
        ccp:=Query10_1.FieldByName('codcp').AsString;
        Query6.SQL.Clear;
        Query6.SQL.Add('SELECT cod,codnap,naim FROM special WHERE cod='+ccp);
        Query6.Open;
        ListBox3.Items.Append(Query6.FieldByName('naim').AsString);
        end;
        DataModule1.Query10_1.Next;
      end;
DataModule1.Query15_1.Next;

end;

for i:=0 to ListBox3.Count do
    if ListBox3.Items[i]='' then begin
    ListBox3.Items.Delete(i);
    ListBox5.Items.Delete(i);
    ListBox11.Items.Delete(i);
    ListBox3.Items.Insert(i,'--------------------');
    ListBox3.Items.Insert(i,'Специальности');
    ListBox3.Items.Insert(i,'--------------------');
    ListBox5.Items.Insert(i,'--------------------');
    ListBox5.Items.Insert(i,'Специальности');
    ListBox5.Items.Insert(i,'--------------------');
    end;

//обработка списка для одной(многих) специальностей
if RadioButton3.Checked or RadioButton5.Checked then begin
Label39.Caption:='Специальности:';
for i:=0 to ListBox3.Count-1 do
if ListBox3.Items[i]='Специальности' then begin
for j:=i+1 downto 0 do begin
ListBox3.Items.Delete(j);
ListBox5.Items.Delete(j);
end;
Break;
end;
end;

//обработка списка для одного направления
if RadioButton4.Checked then begin
Label39.Caption:='Направления:';
for i:=0 to ListBox3.Count-1 do
if ListBox3.Items[i]='Специальности' then begin
for j:=i-1 to ListBox3.Count-1 do begin
ListBox3.Items.Delete(j);
ListBox5.Items.Delete(j);
end;
Break;
end;
end;

for i:=0 to ListBox5.Count-1 do
with DataModule1 do begin
Query10_1.SQL.Clear;
Query10_1.SQL.Add('SELECT cod,year FROM uchplan WHERE year='+IntToStr(god)+' and codcp='+'"'+ListBox5.Items[i]+'"'+' and codfo='+fob.Caption);
Query10_1.Open;
Query10_1.First;
Query15_1.SQL.Clear;
Query15_1.SQL.Add('SELECT * FROM uchpldan WHERE coduchp='+IntToStr(DataModule1.Query10_1.FieldByName('cod').AsInteger)+' and coddis='+dis.Caption);
Query15_1.Open;
Query15_1.First;
ListBox11.Items.Append(IntToStr(Query15_1.Fields[1].AsInteger));
end;

DataModule1.Query15_1.Close;
DataModule1.Query15_1.SQL.Clear;
DataModule1.Query15_1.SQL.Add('SELECT * FROM uchpldan');
DataModule1.Query15_1.Open;
//формируем массив сравнения
SetLength(ms,ListBox11.Count);
for k:=0 to ListBox11.Count-1 do
SetLength(ms[k],30);
//заполняем массив сравнения
for n:=0 to ListBox11.Count-1 do begin
  KeyValues:=VarArrayOf([ListBox11.Items[n],dis.Caption]);
  DataModule1.Query15_1.Locate('coduchp;coddis',KeyValues,[]);
  for k:=0 to 29 do
    with DataModule1 do begin
    if (k+3<8) then
    ms[n,k]:=Length(Query15_1.Fields[k+3].AsString)
    else
    ms[n,k]:=Query15_1.Fields[k+3].AsFloat;
    if k=29 then
    ms[n,k]:=Query15_1.FieldByName('smrab').AsFloat;
    end;
end;

if RadioButton3.Checked or RadioButton4.Checked then begin
    Button7.Visible:=true;
    Button9.Visible:=true;
    Edit1.Visible:=true;
    end
    else begin
    Button5.Visible:=true;
    Button6.Visible:=true;
    ListBox4.Visible:=true;
    Label52.Visible:=true;
    ListBox13.Visible:=true;
    Label40.Visible:=true;
    end;

Label39.Visible:=true;
ListBox3.Visible:=true;
if ListBox3.Count=1 then
ListBox3.ItemIndex:=0;

with DataModule1 do begin
Query10_1.SQL.Clear;
Query10_1.SQL.Add('SELECT DISTINCT year FROM uchplan');
Query10_1.Open;
end;

end;

procedure Tcr_stanF.WordApplication1DocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
begin
{wSd:=wdPromptToSaveChanges;
wDf:=wdOriginalDocumentFormat;
if ((WordApplication1.ActiveDocument.Name='Vv~.doc') or (WordApplication1.ActiveDocument.Name='CZ~.doc' ) or (WordApplication1.ActiveDocument.Name='At~.doc' )  or (WordApplication1.ActiveDocument.Name='Sz~.doc') or (WordApplication1.ActiveDocument.Name='Op~.doc') or (WordApplication1.ActiveDocument.Name='Tso~.doc') or (WordApplication1.ActiveDocument.Name='SRS~.doc') or (WordApplication1.ActiveDocument.Name='Enp~.doc') or (WordApplication1.ActiveDocument.Name='Sog~.doc') or (WordApplication1.ActiveDocument.Name='OiS~.doc')) and (Label23.Caption <> '1') then
  WordApplication1.ActiveDocument.Close(wSd,wDf,EmptyParam);}
if main.Rekfhan<>0 then
RekF.Close;

if Pos('~.',WordApplication1.ActiveDocument.Name)<>0 then
if Label51.Caption<>'ns' then
WordApplication1.ActiveDocument.Save;
Application.Restore;
Application.BringToFront;
end;

procedure Tcr_stanF.Label16Click(Sender: TObject);
begin
Application.CreateForm(TRabPlF, RabPlF);
RabPlF.ShowModal;
end;

procedure Tcr_stanF.Button12Click(Sender: TObject);
 //Процедура заполнения строки содержания
   procedure FinStr(Tbl1:Table; tem:OleVariant; r,ur:integer; nom:string);
   var
   ki:integer;
   wdP,wdA,wdS,wdBl,et,st1,en1,cnt:OleVariant;
   wdFin1,wdRep1,coun,tem1:OleVariant;
   Pril1,SR:Range;
     begin
     WD.Activate;
      wdP:=wdGoToPage;
      wdA:=wdGoToAbsolute;
      wdS:=wdStatisticPages;
      wdBl:=false;
      wdFin1:=wdFindStop;
      wdRep1:=wdNone;
      coun:=WordApplication1.ActiveDocument.ComputeStatistics(wdS,wdBl);

      WordApplication1.Selection.Start:=0;
      WordApplication1.Selection.End_:=0;
      if not WordApplication1.Selection.Find.Execute(Tem, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin1, EmptyParam,
      EmptyParam, wdRep1, EmptyParam, EmptyParam, EmptyParam, EmptyParam) then begin
      MessageDlg('Раздел не найден',mtError,[mbOk],0);
      Beep;
      end else begin //Раздел найден
      et:=WordApplication1.Selection.End_;

      tem1:=nom+' '+tem;

      for ki:=1 to coun do begin
      cnt:=ki;
      if ki <> coun then begin
      SR:=WordApplication1.ActiveDocument.GoTo_(wdP,wdA,cnt,EmptyParam);
      cnt:=cnt+1;
      Pril1:=WordApplication1.ActiveDocument.GoTo_(wdP,wdA,cnt,EmptyParam);
      st1:=SR.Start;
      en1:=Pril1.Start;
      end;

      if r=0 then begin //условие замены
      if ki <> coun then
      if (et<en1) and (et>st1) then begin
       WD1.Activate;
       if ur=2 then
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.ParagraphFormat.LeftIndent:=25
       else
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.ParagraphFormat.LeftIndent:=0;
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.Text:=tem1;
       Tbl1.Cell(Tbl1.Rows.Count,2).Range.Text:=IntToStr(ki+1);
       Break;
       end;
      if ki=coun then begin
       WD1.Activate;
       if ur=2 then
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.ParagraphFormat.LeftIndent:=25
       else
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.ParagraphFormat.LeftIndent:=0;
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.Text:=tem1;
       Tbl1.Cell(Tbl1.Rows.Count,2).Range.Text:=IntToStr(coun+1);
       Break;
      end;
      end; //условие замены

      if r=1 then begin //условие добавления
      if ki <> coun then
      if (et<en1) and (et>st1) then begin
       WD1.Activate;
       Tbl1.Rows.Add(EmptyParam);
       if ur=2 then
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.ParagraphFormat.LeftIndent:=25
       else
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.ParagraphFormat.LeftIndent:=0;
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.Text:=tem1;
       Tbl1.Cell(Tbl1.Rows.Count,2).Range.Text:=IntToStr(ki+1);
       Break;
       end;
      if ki=coun then begin
       WD1.Activate;
       Tbl1.Rows.Add(EmptyParam);
       if ur=2 then
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.ParagraphFormat.LeftIndent:=25
       else
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.ParagraphFormat.LeftIndent:=0;
       Tbl1.Cell(Tbl1.Rows.Count,1).Range.Text:=tem1;
       Tbl1.Cell(Tbl1.Rows.Count,2).Range.Text:=IntToStr(coun+1);
       Break;
      end;
      end; //условие добавления

    SR.Start:=0;
    Pril1.Start:=0;
    SR.End_:=0;
    Pril1.End_:=0;

    end; //for

  end; //Раздел найден
 end;

 //======================================

var
Name_file:PWideChar;
typer,wdSt,wdExt,wdBr,wdFin,wdRep:OleVariant;
i,p,idn,j:integer;
KeyFields,porv:string;
KeyValues:Variant;
Options:TLocateOptions;
st,en,cnt,wdGtp,wdGta:OleVariant;
zam,templ,wdCol,wdSc,wDf,wdA:OleVariant;
Pril:Range;
Tbl:Table;
op,nss,os,czd,sdr,rp,tec,sam,elp,prl:string;
nsp,fp:string;
par:TParam;
begin
Button12.Enabled:=false;
Label23.Caption:='1';
Gauge1.Visible:=true;
Label56.Caption:='Идет формирование документа';
Label56.Visible:=true;
typer:='File';
NewDoc:=main.StanPath+DataModule1.Query14_1.FieldByName('naim').AsString+ListBox6.Items[0]+'.doc';
name_file:=PChar(main.AccesPath+DataModule1.Query14_1.FieldByName('naim').AsString+ListBox6.Items[0]+'.doc');
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WordApplication1.Visible:=false;
WordApplication1.ScreenUpdating:=false;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;

NewDoc:=main.AccesPath+'Tit~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  Gauge1.Progress:=5;
  Application.ProcessMessages;

NewDoc:=main.AccesPath+'Pred~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(EmptyParam);
  Gauge1.Progress:=10;
  Application.ProcessMessages;

if FileExists(main.AccesPath+'Vv~.doc') then begin
NewDoc:=main.AccesPath+'Vv~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(EmptyParam);
  Gauge1.Progress:=15;
  Application.ProcessMessages;
end;

NewDoc:=main.AccesPath+'Naim~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  wdBr:=wdLineBreak;
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=20;
  Application.ProcessMessages;

NewDoc:=main.AccesPath+'Sil~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=25;
  Application.ProcessMessages;

if FileExists(main.AccesPath+'OiS~.doc') then begin
NewDoc:=main.AccesPath+'OiS~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=30;
  Application.ProcessMessages;
  end;

NewDoc:=main.AccesPath+'CZ~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(EmptyParam);
  Gauge1.Progress:=35;
  Application.ProcessMessages;

NewDoc:=main.AccesPath+'Pas~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(EmptyParam);
  Gauge1.Progress:=40;
  Application.ProcessMessages;

NewDoc:=main.AccesPath+'Sz~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=45;
  Application.ProcessMessages;

NewDoc:=main.AccesPath+'At~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=50;
  Application.ProcessMessages;

NewDoc:=main.AccesPath+'UMM~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(EmptyParam);
  Gauge1.Progress:=55;
  Application.ProcessMessages;

NewDoc:=main.AccesPath+'Kar~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  wdBr:=wdSectionBreakNextPage;
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=60;
  Application.ProcessMessages;

NewDoc:=main.AccesPath+'Rab~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.PageSetup.Orientation:=wdOrientLandscape;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=65;
  Application.ProcessMessages;

if FileExists(main.AccesPath+'Op~.doc') then begin
NewDoc:=main.AccesPath+'Op~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  wdBr:=wdLineBreak;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=70;
  Application.ProcessMessages;
  end;

if FileExists(main.AccesPath+'Tso~.doc') then begin
NewDoc:=main.AccesPath+'Tso~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=75;
  Application.ProcessMessages;
  end;

if FileExists(main.AccesPath+'SRS~.doc') then begin
NewDoc:=main.AccesPath+'SRS~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(wdBr);
  Gauge1.Progress:=80;
  Application.ProcessMessages;
  end;

if FileExists(main.AccesPath+'Enp~.doc') then begin
NewDoc:=main.AccesPath+'Enp~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  Gauge1.Progress:=85;
  Application.ProcessMessages;
end;

NewDoc:=main.AccesPath+'Sog~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(EmptyParam);
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  Gauge1.Progress:=90;
  Application.ProcessMessages;

//создаем временный файл для заполнения заголовков приложения
NewDoc:=main.AccesPath+'vr~.doc';
name_file:=PChar(main.AccesPath+'vr~.doc');
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
//форматируем текст заголовка
  WD1.Activate;
  st:=WD1.Paragraphs.First.Range.Start;
  en:=WD1.Paragraphs.First.Range.End_;
  Pril:=WD1.Range(St,en);
  Pril.Text:='ПРИЛОЖЕНИЯ';
  Pril.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
  Pril.Font.Size:=14;
  Pril.Font.Bold:=2;
  Pril.Copy;
  WD.Activate;
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.InsertAfter(#13+#13);
  Pril.Text:='Приложение 1';
  Pril.ParagraphFormat.Alignment:=wdAlignParagraphLeft;
  Pril.Font.Size:=14;
  Pril.Font.Bold:=2;
  Pril.Copy;
wdSc:=wdDoNotSaveChanges;
wDf:=wdOriginalDocumentFormat;
WD1.Close(wdSc,wDf,EmptyParam);
//удаляем временный файл
  DeleteFile(main.AccesPath+'vr~.doc');

//проставляем заголовок в основном файле
WD.Activate;
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.InsertAfter(#13+#13);

//Заполняем приложения
for i:=0 to ListBox8.Count-1 do begin
NewDoc:=ListBox8.Items[i];
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  wdSc:=wdDoNotSaveChanges;
    WordApplication1.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.EndKey(wdSt,wdExt);
    wdA:=wdAlignParagraphRight;
    if Length(WordApplication1.Selection.Text)>1 then begin
    WordApplication1.Selection.Range.Paragraphs.Alignment:=wdA;
    WordApplication1.Selection.Text:='';
    WordApplication1.Selection.Collapse(EmptyParam);
    end;
    WordApplication1.ActiveWindow.ActivePane.View.SeekView:=wdSeekMainDocument;
    WordApplication1.Selection.Start:=0;
    WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close(wdSc);

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
 if i = ListBox8.Count-1 then
  WordApplication1.Selection.InsertBreak(EmptyParam);
 if i <> ListBox8.Count-1 then
  WordApplication1.Selection.InsertBreak(EmptyParam);

if i<>ListBox8.Count-1 then begin
//создаем временный файл для заполнения заголовков приложения
NewDoc:=main.AccesPath+'vr~.doc';
name_file:=PChar(main.AccesPath+'vr~.doc');
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
//форматируем текст заголовка
  WD1.Activate;
  st:=WD1.Paragraphs.First.Range.Start;
  en:=WD1.Paragraphs.First.Range.End_;
  Pril:=WD1.Range(St,en);
  Pril.Text:='Приложение '+IntToStr(i+2);
  Pril.ParagraphFormat.Alignment:=wdAlignParagraphLeft;
  Pril.Font.Size:=14;
  Pril.Font.Bold:=2;
  Pril.Copy;
  WD.Activate;
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.InsertAfter(#13+#13);
wdSc:=wdDoNotSaveChanges;
wDf:=wdOriginalDocumentFormat;  
  WD1.Close(wdSc,wDf,EmptyParam);
//удаляем временный файл
  DeleteFile(main.AccesPath+'vr~.doc');
  end;
end;

NewDoc:=main.AccesPath+'Kon~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.InsertBreak(EmptyParam);
  Gauge1.Progress:=95;
  Application.ProcessMessages;

NewDoc:=main.AccesPath+'Izm~.doc';
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD1.Activate;
  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;

WD.Activate;
  wdExt:=wdMove;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Paste;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  Gauge1.Progress:=100;
  Application.ProcessMessages;

//Нумерация разделов
Gauge1.Progress:=0;
Label56.Caption:='Идет нумерация разделов';
Application.ProcessMessages;
wdGtp:=wdGoToPage;
wdGta:=wdGoToAbsolute;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
templ:='обозначения и сокращения';
if WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam) then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('3. ');
      os:='3';
      en:=st+3;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end;
Gauge1.Progress:=10;
Application.ProcessMessages;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
templ:='цели и задачи дисциплины';
if WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam) then begin
      if FileExists(main.AccesPath+'OiS~.doc') then  begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('4. ');
      czd:='4';
      en:=st+3;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('3. ');
      czd:='3';
      en:=st+3;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
        end;
      end;
Gauge1.Progress:=20;
Application.ProcessMessages;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
templ:='содержание дисциплины и условия ее реализации';
if WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam) then begin
      if FileExists(main.AccesPath+'OiS~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('5. ');
      sdr:='5';
      en:=st+3;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else  begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('4. ');
      sdr:='4';
      en:=st+3;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
        end;
      end;
Gauge1.Progress:=30;
Application.ProcessMessages;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
templ:='рабочая программа';
if WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam) then begin
      if FileExists(main.AccesPath+'OiS~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('5.1. ');
      rp:='5.1';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else  begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('4.1. ');
      rp:='4.1';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
        end;
      end;
Gauge1.Progress:=40;
Application.ProcessMessages;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
templ:='Использование технических средств обучения и вычислительной техники';
if WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam) then begin
      if FileExists(main.AccesPath+'OiS~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('5.2. ');
      tec:='5.2';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else  begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('4.2. ');
      tec:='4.2';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
        end;
Gauge1.Progress:=50;
Application.ProcessMessages;
      end;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
templ:='организация самостоятельной работы студентов по дисциплине';
if WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam) then begin
      if FileExists(main.AccesPath+'OiS~.doc') and FileExists(main.AccesPath+'TSO~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('5.3. ');
      sam:='5.3';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else
      if not FileExists(main.AccesPath+'TSO~.doc') and FileExists(main.AccesPath+'OiS~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('5.2. ');
      sam:='5.2';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else
      if not FileExists(main.AccesPath+'OiS~.doc') and FileExists(main.AccesPath+'TSO~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('4.3. ');
      sam:='4.3';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else
      if not FileExists(main.AccesPath+'OiS~.doc') and not FileExists(main.AccesPath+'TSO~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('4.2. ');
      sam:='4.2';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
    end; //if Find
Gauge1.Progress:=60;
Application.ProcessMessages;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
templ:='элементы научного поиска при изучении дисциплины';
if WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam) then begin
      if FileExists(main.AccesPath+'OiS~.doc') and FileExists(main.AccesPath+'Enp~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('5.4. ');
      elp:='5.4';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else
      if not FileExists(main.AccesPath+'Enp~.doc') and FileExists(main.AccesPath+'OiS~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('5.3. ');
      elp:='5.3';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else
      if not FileExists(main.AccesPath+'OiS~.doc') and FileExists(main.AccesPath+'Enp~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('4.4. ');
      elp:='4.4';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else
      if not FileExists(main.AccesPath+'OiS~.doc') and not FileExists(main.AccesPath+'Enp~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('4.3. ');
      elp:='4.3';
      en:=st+4;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
    end; //if Find
Gauge1.Progress:=70;
Application.ProcessMessages;
templ:='приложения';
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
if WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam) then begin
      if FileExists(main.AccesPath+'OiS~.doc') then begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('6. ');
      prl:='6';
      en:=st+3;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
      end
      else begin
      st:=WordApplication1.Selection.Start;
      WordApplication1.Selection.InsertBefore('5. ');
      prl:='5';
      en:=st+3;
      WordApplication1.ActiveDocument.Range(st,en).Font.Bold:=2;
        end;
      end;
Gauge1.Progress:=80;
Application.ProcessMessages;

//Формируем содержание
NewDoc:=main.AccesPath+'Sod~.doc';
name_file:=PChar(main.AccesPath+'Sod~.doc');
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонСод.doc'),Name_file,false);
WD1.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
Tbl:=WordApplication1.ActiveDocument.Tables.Item(1);
//Ищем заголовки разделов, определяем номера страниц и заполняем содержание

if FileExists(main.AccesPath+'Vv~.doc') then
FinStr(Tbl,'Введение',0,1,'');
op:='1';
FinStr(Tbl,'ОБЛАСТЬ ПРИМЕНЕНИЯ',1,1,op);
nss:='2';
FinStr(Tbl,'НОРМАТИВНЫЕ ССЫЛКИ',1,1,nss);
if FileExists(main.AccesPath+'OiS~.doc') then
FinStr(Tbl,'ОБОЗНАЧЕНИЯ И СОКРАЩЕНИЯ',1,1,os);
FinStr(Tbl,'ЦЕЛИ И ЗАДАЧИ ДИСЦИПЛИНЫ',1,1,czd);
FinStr(Tbl,'СОДЕРЖАНИЕ ДИСЦИПЛИНЫ И УСЛОВИЯ ЕЕ РЕАЛИЗАЦИИ',1,1,sdr);
FinStr(Tbl,'Рабочая программа',1,2,rp);
if FileExists(main.AccesPath+'TSO~.doc') then
FinStr(Tbl,'Использование технических средств обучения и вычислительной техники',1,2,tec);
if FileExists(main.AccesPath+'SRS~.doc') then
FinStr(Tbl,'Организация самостоятельной работы студентов по дисциплине',1,2,sam);
if FileExists(main.AccesPath+'Enp~.doc') then
FinStr(Tbl,'Элементы научного поиска при изучении дисциплины',1,2,elp);
FinStr(Tbl,'ПРИЛОЖЕНИЯ',1,1,prl);
for i:=1 to ListBox8.Count do
FinStr(Tbl,'Приложение '+IntToStr(i),1,2,'');

WD1.Save;

  wdSt:=wdStory;
  wdExt:=wdExtend;
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  WordApplication1.Selection.EndKey(wdSt,wdExt);
  WordApplication1.Selection.Copy;
WD1.Close;
WD.Activate;
wdFin:=wdFindStop;
wdRep:=wdNone;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;

  if FileExists(main.AccesPath+'Vv~.doc') then
    templ:='Введение'
    else
    templ:='##сод';

    WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      EmptyParam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

 if templ='Введение' then begin
 WordApplication1.Selection.Collapse(EmptyParam);
 WordApplication1.Selection.Paste;
 wdCol:=wdCollapseEnd;
 WordApplication1.Selection.Collapse(wdCol);
 WordApplication1.Selection.InsertBreak(EmptyParam);
 WordApplication1.Selection.Start:=0;
 WordApplication1.Selection.End_:=0;
 wdRep:=wdReplaceOne;
 templ:='##сод';
 zam:='';
 WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
 end;

 if templ='##сод' then begin
 wdCol:=wdCollapseEnd;
 WordApplication1.Selection.Collapse(wdCol);
 WordApplication1.Selection.InsertBreak(EmptyParam);
 WordApplication1.Selection.Paste;
 Gauge1.Progress:=90;
 Application.ProcessMessages;
 WordApplication1.Selection.Start:=0;
 WordApplication1.Selection.End_:=0;
 wdRep:=wdReplaceOne;
 zam:='';
 WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
      zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

 end;
//Закрываем сформироанный стандарт


WD.Save;
WD.Close;
Gauge1.Progress:=100;
Application.ProcessMessages;

WordApplication1.ScreenUpdating:=true;
WordApplication1.ScreenRefresh;

//Регистрация стандарта
Gauge1.Progress:=0;
Label56.Caption:='Регистрация стандарта';
Application.ProcessMessages;
with DataModule1 do begin
Options:=[loCaseInsensitive,loPartialKey];
if DBLookupComboBox3.Text='' then
KeyValues:=VarArrayOf([dis.Caption,ListBox6.Items[0],fob.Caption,raz.Caption,kaf.Caption])
else
KeyValues:=VarArrayOf([dis.Caption,ListBox6.Items[0],fob.Caption,raz.Caption,kaf.Caption]);
Query51.SQL.Clear;
Query51.SQL.Add('SELECT * FROM standic');
Query51.Open;
if Query51.Locate('coddic;codcp;codfo;codr;codk',KeyValues,Options) then begin
kod:=Query51.FieldByName('cod').AsInteger;
Query51.SQL.Clear;
Query51.SQL.Add('DELETE FROM standic WHERE cod='+IntToStr(kod));
Query51.ExecSQL;
Table53.Open;
if Table53.Locate('codst',kod,Options) then
Table53.Delete;
Table53.Close;
Table54.Open;
if Table54.Locate('codst',kod,Options) then
Table54.Delete;
Table54.Close;
Table56.Open;
if Table56.Locate('codst',kod,Options) then
Table56.Delete;
Table56.Close;
Table57.Open;
if Table57.Locate('codst',kod,Options) then
Table57.Delete;
Table57.Close;
Query55.SQL.Clear;
Query55.SQL.Add('DELETE FROM standanpr WHERE codst='+IntToStr(kod));
Query55.ExecSQL;
end;
Query51.SQL.Clear;
if DBLookupComboBox3.Text='' then
Query51.SQL.Add('INSERT INTO standic (coddic,codcp,codfo,codr,naimdic,codk,sav) VALUES ('+dis.Caption+', "'+ListBox6.Items[0]+'",'+fob.Caption+','+raz.Caption+', "'+Edit7.Text+'", '+'"'+kaf.Caption+'", 0)')
else
Query51.SQL.Add('INSERT INTO standic (coddic,codcp,codfo,codr,naimdic,codk,sav) VALUES ('+dis.Caption+', "'+ListBox6.Items[0]+'",'+fob.Caption+','+raz.Caption+', "'+DBLookUpComboBox3.Text+'", '+'"'+kaf.Caption+'", 0)');
Query51.ExecSQL;
Gauge1.Progress:=10;
Application.ProcessMessages;
Query51.SQL.Clear;
Query51.SQL.Add('select cod,coddic,codcp,codfo,codr from standic');
Query51.Open;
Gauge1.Progress:=20;
Application.ProcessMessages;
KeyFields:='coddic;codcp;codfo;codr';
KeyValues:=VarArrayOf([StrToInt(dis.Caption),ListBox6.Items[0],StrToInt(fob.Caption),StrToInt(raz.Caption)]);
Options:=[loCaseInsensitive,loPartialKey];
Query51.Locate(KeyFields,KeyValues,Options);
kod:=Query51.FieldByName('cod').AsInteger;
kodv:=kod;
Query51.Close;
if cr_stanF.Caption='Конструктор стандарта (Восстановленный)' then begin
ndis:=DataModule1.Query14_1.FieldByName('allpar').AsString;
if RadioButton3.Checked=true then
spec:='('+ListBox6.Items[0]+') '+'"'+Edit1.Text+'"'
else
for i:=0 to ListBox4.Count-1 do
spec:=spec+ListBox6.Items[i]+'; ';
if (DataModule1.Query14_1.FieldByName('codkom').AsString = 'Ф') or (DataModule1.Query14_1.FieldByName('codkom').AsString = 'Р') then
sdic:='обязательная';
if DataModule1.Query14_1.FieldByName('codkom').AsString = 'В' then
sdic:='элективная';
if DBLookupComboBox4.Text='' then
forob:=Edit8.Text
else
forob:=DBLookupComboBox4.Text;
end;
Table56.Open;
while not Table56.Locate('codst',kod,Options) do begin
Table56.Insert;
Table56.FieldByName('codst').AsInteger:=kod;
Table56.FieldByName('ndis').AsString:=ndis;
Table56.FieldByName('nkaf').AsString:=nkaf;
Table56.FieldByName('porv').AsString:=porv1;
Table56.FieldByName('spec').AsString:=spec;
Table56.FieldByName('forob').AsString:=forob;
Table56.FieldByName('vdic').AsString:=vdic;
Table56.FieldByName('infgos').AsString:=infgos;
Table56.FieldByName('famin').AsString:=famin;
Table56.FieldByName('dolraz').AsString:=dolraz;
Table56.FieldByName('zavr').AsString:=zavr;
Table56.FieldByName('zavp').AsString:=zavp;
Table56.FieldByName('dek').AsString:=dek;
Table56.FieldByName('sdic').AsString:=sdic;
Table56.Post;
end;
Gauge1.Progress:=30;
Application.ProcessMessages;
Table56.Close;

for i:=0 to ListBox8.Count-1 do begin
  Query55.SQL.Clear;
  Query55.SQL.Add('INSERT INTO standanpr (codst,npril,dok) VALUES ('+IntToStr(kod)+', '+IntToStr(i+1)+', '+':par)');
  Query55.ParamByName('par').LoadFromFile(String(ListBox8.Items[i]),ftTypedBinary);
  Query55.ExecSQL;
  Gauge1.Progress:=40;
  Application.ProcessMessages;
  end;
  Query55.Close;
end;

DataModule1.Table54.Open;
while not DataModule1.Table54.Locate('codst',kod,Options) do begin
DataModule1.Table54.Insert;
DataModule1.Table54.FieldByName('codst').AsInteger:=kod;
TBlobField(DataModule1.Table54.Fields[2]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[2]).LoadFromFile(main.AccesPath+'Pas~.doc');
if FileExists(main.AccesPath+'Tso~.doc') then begin
TBlobField(DataModule1.Table54.Fields[3]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[3]).LoadFromFile(main.AccesPath+'Tso~.doc');
end;
TBlobField(DataModule1.Table54.Fields[4]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[4]).LoadFromFile(main.AccesPath+'Sog~.doc');
TBlobField(DataModule1.Table54.Fields[5]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[5]).LoadFromFile(main.AccesPath+'Izm~.doc');
TBlobField(DataModule1.Table54.Fields[6]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[6]).LoadFromFile(main.AccesPath+'Kon~.doc');
TBlobField(DataModule1.Table54.Fields[7]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[7]).LoadFromFile(main.AccesPath+'Sz~.doc');
TBlobField(DataModule1.Table54.Fields[8]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[8]).LoadFromFile(main.AccesPath+'UMM~.doc');
TBlobField(DataModule1.Table54.Fields[9]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[9]).LoadFromFile(main.AccesPath+'Rab~.doc');
TBlobField(DataModule1.Table54.Fields[10]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[10]).LoadFromFile(main.AccesPath+'Kar~.doc');
TBlobField(DataModule1.Table54.Fields[11]).BlobType:=ftBlob;
TBlobField(DataModule1.Table54.Fields[11]).LoadFromFile(main.AccesPath+'At~.doc');
DataModule1.Table54.Post;
end;
DataModule1.Table54.Close;

if FileExists(main.AccesPath+'Op~.doc') or FileExists(main.AccesPath+'SRS~.doc') or FileExists(main.AccesPath+'Enp~.doc') then begin
    DataModule1.Table57.Open;
while not DataModule1.Table57.Locate('codst',kod,Options) do begin
    DataModule1.Table57.Insert;
    DataModule1.Table57.FieldByName('codst').AsInteger:=kod;
    if FileExists(main.AccesPath+'Op~.doc') then begin
    TBlobField(DataModule1.Table57.Fields[2]).BlobType:=ftBlob;
    TBlobField(DataModule1.Table57.Fields[2]).LoadFromFile(main.AccesPath+'Op~.doc');
    end;
    if FileExists(main.AccesPath+'SRS~.doc') then begin
    TBlobField(DataModule1.Table57.Fields[3]).BlobType:=ftBlob;
    TBlobField(DataModule1.Table57.Fields[3]).LoadFromFile(main.AccesPath+'SRS~.doc');
    end;
    if FileExists(main.AccesPath+'Enp~.doc') then begin
    TBlobField(DataModule1.Table57.Fields[4]).BlobType:=ftBlob;
    TBlobField(DataModule1.Table57.Fields[4]).LoadFromFile(main.AccesPath+'Enp~.doc');
    end;
    DataModule1.Table57.Post;
    end;
end;//if All Exists

Gauge1.Progress:=70;
Application.ProcessMessages;

DataModule1.Table53.Open;
while not DataModule1.Table53.Locate('codst',kod,Options) do begin
DataModule1.Table53.Insert;
DataModule1.Table53.FieldByName('codst').AsInteger:=kod;
TBlobField(DataModule1.Table53.Fields[2]).BlobType:=ftBlob;
TBlobField(DataModule1.Table53.Fields[2]).LoadFromFile(main.AccesPath+'Sod~.doc');
if FileExists(main.AccesPath+'Vv~.doc') then begin
TBlobField(DataModule1.Table53.Fields[3]).BlobType:=ftBlob;
TBlobField(DataModule1.Table53.Fields[3]).LoadFromFile(main.AccesPath+'Vv~.doc');
end;
if FileExists(main.AccesPath+'Sil~.doc') then begin
TBlobField(DataModule1.Table53.Fields[5]).BlobType:=ftBlob;
TBlobField(DataModule1.Table53.Fields[5]).LoadFromFile(main.AccesPath+'Sil~.doc');
end;
if FileExists(main.AccesPath+'OiS~.doc') then begin
TBlobField(DataModule1.Table53.Fields[6]).BlobType:=ftBlob;
TBlobField(DataModule1.Table53.Fields[6]).LoadFromFile(main.AccesPath+'OiS~.doc');
end;
TBlobField(DataModule1.Table53.Fields[7]).BlobType:=ftBlob;
TBlobField(DataModule1.Table53.Fields[7]).LoadFromFile(main.AccesPath+'CZ~.doc');
if FileExists(main.InPath+'sini~.ini') then begin
TBlobField(DataModule1.Table53.Fields[8]).BlobType:=ftBlob;
TBlobField(DataModule1.Table53.Fields[8]).LoadFromFile(main.InPath+'sini~.ini');
end;
DataModule1.Table53.Post;
end; //while
DataModule1.Table53.Close;
Gauge1.Progress:=80;
Application.ProcessMessages;


DeleteFile(main.AccesPath+'Tit~.doc');
DeleteFile(main.AccesPath+'Pred~.doc');
DeleteFile(main.AccesPath+'Sod~.doc');
if FileExists(main.AccesPath+'Vv~.doc') then
DeleteFile(main.AccesPath+'Vv~.doc');
DeleteFile(main.AccesPath+'CZ~.doc');
DeleteFile(main.AccesPath+'Pas~.doc');
DeleteFile(main.AccesPath+'Sz~.doc');
DeleteFile(main.AccesPath+'At~.doc');
DeleteFile(main.AccesPath+'UMM~.doc');
DeleteFile(main.AccesPath+'Kar~.doc');
DeleteFile(main.AccesPath+'Rab~.doc');
if FileExists(main.AccesPath+'Op~.doc') then
DeleteFile(main.AccesPath+'Op~.doc');
if FileExists(main.AccesPath+'Tso~.doc') then
DeleteFile(main.AccesPath+'Tso~.doc');
if FileExists(main.AccesPath+'SRS~.doc') then
DeleteFile(main.AccesPath+'SRS~.doc');
if FileExists(main.AccesPath+'Enp~.doc') then
DeleteFile(main.AccesPath+'Enp~.doc');
DeleteFile(main.AccesPath+'Sog~.doc');
DeleteFile(main.AccesPath+'Sil~.doc');
if FileExists(main.AccesPath+'OiS~.doc') then
DeleteFile(main.AccesPath+'OiS~.doc');
DeleteFile(main.AccesPath+'Izm~.doc');
DeleteFile(main.AccesPath+'Kon~.doc');

if not RadioButton3.Checked then
RekF.Edit4.Visible:=false;

if cik='ГСЭ' then
RekF.Edit1.Text:='14.'
else
if cik='ЕН' then
RekF.Edit1.Text:='15.'
else
if cik='ОПД' then
RekF.Edit1.Text:='16.'
else
if cik='СД' then
RekF.Edit1.Text:='17.'
else
if cik='ДС' then
RekF.Edit1.Text:='18.';

if RadioButton3.Checked then begin
nsp:=ListBox6.Items[0];
Delete(nsp,5,2);
RekF.Edit3.Text:=nsp;
end;

Gauge1.Progress:=100;
Application.ProcessMessages;
Gauge1.Visible:=false;
Label56.Caption:='Готово';
RekF.ShowModal;

end;

procedure Tcr_stanF.Label17Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
if FileExists(main.AccesPath+'Op~.doc') then begin
typer:='File';
NewDoc:=main.AccesPath+'Op~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end else
begin
typer:='File';
Name_file:=PChar(main.AccesPath+'Op~.doc');
NewDoc:=main.AccesPath+'Op~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
WD.Range.Font.Bold:=2;
WD.Range.Font.Size:=14;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.InsertAfter('Специфические особенности преподавания дисциплины');
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
end;

end;

procedure Tcr_stanF.Button13Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
typer:='File';
Name_file:=PChar(main.AccesPath+'Tso~.doc');
NewDoc:=main.AccesPath+'Tso~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
WD.Range.Font.Bold:=2;
WD.Range.Font.Size:=14;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.InsertAfter('Использование технических средств обучения и вычислительной техники'+#13);
WordApplication1.Selection.InsertAfter('Программное обеспечение дисциплины');
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
end;

procedure Tcr_stanF.Button14Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
typer:='File';
Name_file:=PChar(main.AccesPath+'SRS~.doc');
NewDoc:=main.AccesPath+'SRS~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
WD.Range.Font.Bold:=2;
WD.Range.Font.Size:=14;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.InsertAfter('Организация самостоятельной работы студентов по дисциплине');
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
end;

procedure Tcr_stanF.Button15Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
typer:='File';
Name_file:=PChar(main.AccesPath+'Enp~.doc');
NewDoc:=main.AccesPath+'Enp~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
WD.Range.Font.Bold:=2;
WD.Range.Font.Size:=14;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.InsertAfter('Элементы научного поиска при изучении дисциплины');
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
end;

procedure Tcr_stanF.Button11Click(Sender: TObject);
var
Name_file:PWideChar;
typer,wdRep,wdFin:OleVariant;
zam,templ:OleVariant;
dol,codp,prc:integer;
dolj,fioin,im,ot,fior,fiord,prr:string;
begin
  typer:='File';
  wdFin:=wdFindStop;
  wdRep:=wdReplaceOne;

  Name_file:=PChar(main.AccesPath+'Izm~.doc');
  NewDoc:=main.AccesPath+'Izm~.doc';
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонИзм.doc'),Name_file,false);
  WordApplication1.Visible:=false;
  WordApplication1.ScreenUpdating:=false;
  WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
  WD.Save;
  WD.Close;

  Name_file:=PChar(main.AccesPath+'Kon~.doc');
  NewDoc:=main.AccesPath+'Kon~.doc';
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонКон.doc'),Name_file,false);
  WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  WordApplication1.Selection.Find.Forward;

  with DataModule1 do begin
  Query22_1.SQL.Clear;
  Query22_1.SQL.Add('SELECT coddol,fam,name,otch FROM prepodav WHERE cod="'+raz.Caption+'"');
  Query22_1.Open;
  //формирование фамилии и инициалов
  fioin:='';
  fioin:=fioin+Query22_1.FieldByName('fam').AsString;
  im:=Copy(Query22_1.FieldByName('name').AsString,1,1);
  ot:=Copy(Query22_1.FieldByName('otch').AsString,1,1);
  dol:=Query22_1.FieldByName('coddol').AsInteger;
  fioin:=fioin+' '+im+'.'+' '+ot+'.';
     famin:=fioin;

  Query18.SQL.Clear;
  Query18.SQL.Add('SELECT naim FROM doljn WHERE cod='+IntToStr(dol));
  Query18.Open;
  dolj:=Query18.FieldByName('naim').AsString;
     dolraz:=dolj;

  Query1_1.SQL.Clear;
  Query1_1.SQL.Add('SELECT fiorin,codpot FROM podrazd WHERE cod="'+kaf.Caption+'"');
  Query1_1.Open;
  fior:=Query1_1.FieldByName('fiorin').AsString;
     zavr:=fior;

  codp:=Query1_1.FieldByName('codpot').AsInteger;
  Query1_1.SQL.Clear;
  Query1_1.SQL.Add('SELECT fiorin FROM podrazd WHERE cod='+IntToStr(codp));
  Query1_1.Open;
  fiord:=Query1_1.FieldByName('fiorin').AsString;
    dek:=fiord;

  Query10.SQL.Clear;
  Query10.SQL.Add('SELECT codk FROM uchplan WHERE year="'+godc.Caption+'" AND codcp="'+ListBox6.Items[0]+'"');
  Query10.Open;
  prc:=Query10.FieldByName('codk').AsInteger;
  Query1_1.SQL.Clear;
  Query1_1.SQL.Add('SELECT fiorin FROM podrazd WHERE cod='+IntToStr(prc));
  Query1_1.Open;
  prr:=Query1_1.FieldByName('fiorin').AsString;
     zavp:=prr;

  end;

  templ:='##должнраз';
  zam:=dolj;
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
    zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;

  templ:='##фиораз';
  zam:=fioin;
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
    zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;

  templ:='##фиозав';
  zam:=fior;
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
    zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;

  templ:='##фиодек';
  zam:=fiord;
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
    zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;

  templ:='##фиозавпр';
  zam:=prr;
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
    zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;

  templ:='##фиофкмко';
  zam:=main.Label3.Caption;
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
    zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;

  templ:='##фиоумо';
  zam:=main.Label4.Caption;
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
    zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  WD.Save;
  WD.Close;
  WordApplication1.ScreenUpdating:=true;
  WordApplication1.ScreenRefresh;
  if WordApplication1.Documents.Count<>0 then
  WordApplication1.Visible:=true;

  if Button11.Caption='Далее>>' then begin
  Label53.Caption:='1';
  PageControl1.SelectNextPage(true);
  end;
  Button11.Caption:='Далее>>';

end;

procedure Tcr_stanF.Button16Click(Sender: TObject);
begin
PageControl1.SelectNextPage(true);
end;

procedure Tcr_stanF.Button17Click(Sender: TObject);
var
Name_file:PWideChar;
typer,wdRep,wdFin:OleVariant;
zam,templ:OleVariant;
i:integer;
begin
if Edit4.Enabled=true then
if ((ListBox9.Count=0) or ((ListBox9.Count=0) and (ListBox10.Count=0))) then
if MessageDlg('В списке государственных стандартов нет ни одного стандарта'+#13+'Закрыть окно без добавления изданий?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
Close
else Exit;

if Edit4.Enabled<>false then begin
typer:='File';
Name_file:=PChar(main.AccesPath+'Sil~.doc');
NewDoc:=main.AccesPath+'Sil~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонСсыл.doc'),Name_file,false);
WordApplication1.Visible:=false;
WordApplication1.ScreenUpdating:=false;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));

WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.Find.Forward;

wdFin:=wdFindStop;
wdRep:=wdReplaceOne;
templ:='##госстан';

for i:=0 to ListBox9.Count-1 do begin
zam:=ListBox9.Items[i];
  if i=0 then begin
  WordApplication1.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, wdFin, EmptyParam,
  zam, wdRep, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  WordApplication1.Selection.InsertAfter(#13);
  end
  else
  if i=ListBox9.Count-1 then
  WordApplication1.Selection.InsertAfter(zam)
  else begin
  WordApplication1.Selection.InsertAfter(zam);
  WordApplication1.Selection.InsertAfter(#13);
  end;

end;

if ListBox10.Count<>0 then
if ListBox10.Count=1 then begin
  zam:=ListBox10.Items[0];
  WordApplication1.Selection.InsertAfter(#13);
  WordApplication1.Selection.InsertAfter(zam);
  end
else
for i:=0 to ListBox10.Count-1 do begin
zam:=ListBox10.Items[i];
  if i=0 then begin
  WordApplication1.Selection.InsertAfter(#13);
  WordApplication1.Selection.InsertAfter(zam);
  WordApplication1.Selection.InsertAfter(#13);
  end
  else
  if i=ListBox10.Count-1 then
  WordApplication1.Selection.InsertAfter(zam)
  else begin
  WordApplication1.Selection.InsertAfter(zam);
  WordApplication1.Selection.InsertAfter(#13);
  end;

end;

WD.Save;
WD.Close;
WordApplication1.ScreenUpdating:=true;
WordApplication1.ScreenRefresh;
if WordApplication1.Documents.Count<>0 then
WordApplication1.Visible:=true;
end;

if Button17.Caption='Далее>>' then begin
Label54.Caption:='1';
PageControl1.SelectNextPage(true);
end;
Button17.Caption:='Далее>>';

end;

procedure Tcr_stanF.RadioButton6Click(Sender: TObject);
var
i:integer;
j:OleVariant;
begin
for i:=1 to WordApplication1.Documents.Count do begin
j:=i;
if WordApplication1.Documents.Item(j).Name='Vv~.doc' then
WordApplication1.Documents.Item(j).Close(EmptyParam,EmptyParam,EmptyParam);
end;
if FileExists(main.AccesPath+'Vv~.doc') then
DeleteFile(main.AccesPath+'Vv~.doc');
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('vved','nalved','');
sini.Free;
Label7.Visible:=false;
Button30.Visible:=false;
end;

procedure Tcr_stanF.Button18Click(Sender: TObject);
begin
PageControl1.SelectNextPage(false);
end;

procedure Tcr_stanF.Button19Click(Sender: TObject);
begin
PageControl1.SelectNextPage(false);
end;

procedure Tcr_stanF.Button20Click(Sender: TObject);
begin
PageControl1.SelectNextPage(false);
end;

procedure Tcr_stanF.Button21Click(Sender: TObject);
begin
PageControl1.SelectNextPage(false);
end;

procedure Tcr_stanF.Button22Click(Sender: TObject);
begin
PageControl1.SelectNextPage(false);
end;

procedure Tcr_stanF.Button23Click(Sender: TObject);
begin
PageControl1.SelectNextPage(false);
end;

procedure Tcr_stanF.Button24Click(Sender: TObject);
begin
PageControl1.SelectNextPage(false);
end;

procedure Tcr_stanF.ListBox3Click(Sender: TObject);
begin
if RadioButton5.Checked=true then
if (ListBox3.Items[ListBox3.ItemIndex]='Специальности') or (ListBox3.Items[ListBox3.ItemIndex]='Направления') or (ListBox3.Items[ListBox3.ItemIndex]='--------------------') then
ListBox3.ItemIndex:=-1;
end;

procedure Tcr_stanF.Button25Click(Sender: TObject);
begin
OpenDialog1.Title:='Выберите файл приложения';
OpenDialog1.InitialDir:='C:\Documents and Settings\';
OpenDialog1.Filter:='Документы Word (*.doc)|*.doc';
OpenDialog1.FilterIndex:=1;
OpenDialog1.Execute;
end;

procedure Tcr_stanF.OpenDialog1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
Edit3.Text:=OpenDialog1.FileName;
end;

procedure Tcr_stanF.Button26Click(Sender: TObject);
var
puti:string;
i:integer;
begin
ListBox8.Items.Append(Edit3.Text);
ListBox7.Items.Append('Приложение '+IntToStr(ListBox8.Count));
Edit3.Text:='';
  puti:='';
  for i:=0 to ListBox8.Count-1 do
  puti:=puti+ListBox8.Items[i]+'|';
  sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
  sini.WriteString('prilog','puti',puti);
  sini.Free;
end;

procedure Tcr_stanF.N1Click(Sender: TObject);
var
puti:string;
i:integer;
begin
ListBox7.Items.Delete(ListBox8.ItemIndex);
ListBox8.Items.Delete(ListBox8.ItemIndex);
  puti:='';
  for i:=0 to ListBox8.Count-1 do
  puti:=puti+ListBox8.Items[i]+'|';
  sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
  sini.WriteString('prilog','puti',puti);
  sini.Free;
end;

procedure Tcr_stanF.ListBox8Click(Sender: TObject);
begin
ListBox7.ItemIndex:=ListBox8.ItemIndex;
end;

procedure Tcr_stanF.Label18Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
if FileExists(main.AccesPath+'Sog~.doc') then begin
typer:='File';
NewDoc:=main.AccesPath+'Sog~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end else
begin
typer:='File';
Name_file:=PChar(main.AccesPath+'Sog~.doc');
NewDoc:=main.AccesPath+'Sog~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонСогл.doc'),Name_file,false);
WordApplication1.Visible:=true;
Application.Minimize;
WordApplication1.Activate;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
end;

end;

procedure Tcr_stanF.Button27Click(Sender: TObject);
var
silgos,silins:string;
i:integer;
begin
if RadioButton8.Checked then begin
ListBox9.Items.Append(Edit4.Text+'.'+' '+Edit5.Text);
Edit4.Text:='ГОСТ';
  silgos:='';
  for i:=0 to ListBox9.Count-1 do
  silgos:=silgos+ListBox9.Items[i]+'|';
  sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
  sini.WriteString('ccilki','silgos',silgos);
  sini.Free;
end;
if RadioButton9.Checked then begin
ListBox10.Items.Append(Edit4.Text+'.'+' '+Edit5.Text);
Edit4.Text:='CТП';
  silins:='';
  for i:=0 to ListBox10.Count-1 do
  silins:=silins+ListBox10.Items[i]+'|';
  sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
  sini.WriteString('ccilki','silins',silins);
  sini.Free;
end;
Edit5.Text:='';
end;

procedure Tcr_stanF.ListBox10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
silins:string;
i:integer;
begin
if Key=46 then
ListBox10.Items.Delete(ListBox10.ItemIndex);
  silins:='';
  for i:=0 to ListBox10.Count-1 do
  silins:=silins+ListBox10.Items[i]+'|';
  sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
  sini.WriteString('ccilki','silins',silins);
  sini.Free;
end;

procedure Tcr_stanF.ListBox9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
silgos:string;
i:integer;
begin
if Key=46 then
ListBox9.Items.Delete(ListBox9.ItemIndex);
  silgos:='';
  for i:=0 to ListBox9.Count-1 do
  silgos:=silgos+ListBox9.Items[i]+'|';
  sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
  sini.WriteString('ccilki','silgos',silgos);
  sini.Free;
end;

procedure Tcr_stanF.RadioButton10Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
if cr_stanF.Visible<>false then begin
typer:='File';
Name_file:=PChar(main.AccesPath+'OiS~.doc');
NewDoc:=main.AccesPath+'OiS~.doc';
CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
WD.Range.Font.Bold:=2;
WD.Range.Font.Size:=14;
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
WordApplication1.Selection.InsertAfter('ОБОЗНАЧЕНИЯ И СОКРАЩЕНИЯ');
WordApplication1.Selection.Start:=0;
WordApplication1.Selection.End_:=0;
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('sokr','nalsok','+');
sini.Free;
end;
end;

procedure Tcr_stanF.RadioButton11Click(Sender: TObject);
var
i:integer;
j:OleVariant;
begin
for i:=1 to WordApplication1.Documents.Count do begin
j:=i;
if WordApplication1.Documents.Item(j).Name='OiS~.doc' then
WordApplication1.Documents.Item(j).Close(EmptyParam,EmptyParam,EmptyParam);
end;
if FileExists(main.AccesPath+'OiS~.doc') then
DeleteFile(main.AccesPath+'OiS~.doc');
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('sokr','nalsok','');
sini.Free;
Label48.Visible:=false;
end;

procedure Tcr_stanF.BitBtn2Click(Sender: TObject);
var
ind:integer;
begin
ind:=ListBox8.ItemIndex;
ListBox8.Items.Insert(ListBox8.ItemIndex-1,ListBox8.Items[ListBox8.ItemIndex]);
ListBox8.Items.Delete(ListBox8.ItemIndex);
ListBox8.ItemIndex:=ind-1;
ListBox7.ItemIndex:=ind-1;
end;

procedure Tcr_stanF.BitBtn1Click(Sender: TObject);
var
ind:integer;
begin
ind:=ListBox8.ItemIndex;
ListBox8.Items.Insert(ListBox8.ItemIndex+1,ListBox8.Items[ListBox8.ItemIndex]);
ListBox8.Items.Delete(ListBox8.ItemIndex);
ListBox8.ItemIndex:=ind+1;
ListBox7.ItemIndex:=ind+1;
end;

procedure Tcr_stanF.Button29Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
Button27.Enabled:=false;
Edit4.Enabled:=false;
Edit5.Enabled:=false;
ListBox9.Enabled:=false;
ListBox10.Enabled:=false;
with cr_stanF do begin
if FileExists(main.AccesPath+'Sil~.doc') then begin
typer:='File';
NewDoc:=main.AccesPath+'Sil~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end
else begin
  typer:='File';
  Name_file:=PChar(main.AccesPath+'Sil~.doc');
  NewDoc:=main.AccesPath+'Sil~.doc';
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\ШаблонClear.doc'),Name_file,false);
  WordApplication1.Visible:=true;
  Application.Minimize;
  WordApplication1.Activate;
  WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
               EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
               EmptyParam,EmptyParam,EmptyParam));
  WD.Range.ParagraphFormat.Alignment:=wdAlignParagraphCenter;
  WD.Range.Font.Bold:=2;
  WD.Range.Font.Size:=14;
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  WordApplication1.Selection.InsertAfter('2 НОРМАТИВНЫЕ ССЫЛКИ');
  WordApplication1.Selection.Start:=0;
  WordApplication1.Selection.End_:=0;
  end;
 end;//with

 sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
 sini.WriteString('ccilki','silwd','+');
 sini.Free;
end;

procedure Tcr_stanF.Button28Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
typer:='File';
NewDoc:=main.AccesPath+'CZ~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end;

procedure Tcr_stanF.ListBox3DblClick(Sender: TObject);
begin
if RadioButton3.Checked or RadioButton4.Checked then begin
Edit1.Text:=ListBox3.Items.Strings[ListBox3.ItemIndex];
Button7Click(Sender);
end;

end;

procedure Tcr_stanF.WordApplication1Quit(Sender: TObject);
begin
if (WordApplication1.Documents.Count<1) then
WordApplication1.Disconnect;
end;

procedure Tcr_stanF.WordApplication1DocumentOpen(ASender: TObject;
  const Doc: _Document);
var
it,i:integer;
begin
it:=WordApplication1.CommandBars.Count;
  for i:=1 to it do
  if WordApplication1.CommandBars.Item[i].Name='Menu Bar' then
  WordApplication1.CommandBars.Item[i].Set_Enabled(false);
end;

procedure Tcr_stanF.FormShow(Sender: TObject);
begin
main.interf:=cr_stanF.WindowHandle;
end;

procedure Tcr_stanF.Timer1Timer(Sender: TObject);
begin
 if TabSheet1.TabIndex=2 then begin
 DateTimePicker1.Color:=clAqua;
 Sleep(500);
 DateTimePicker1.Color:=clWhite;
 end;
end;

procedure Tcr_stanF.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
var
i:integer;
dat:string;
begin
if Key=#13 then
ListBox13.Items[ListBox4.ItemIndex]:=DateToStr(DateTimePicker1.Date);
dat:='';
for i:=0 to ListBox13.Count-1 do
dat:=dat+ListBox13.Items[i]+'|';
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('primen','utvgos',dat);
sini.Free;
end;

procedure Tcr_stanF.Button30Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
typer:='File';
NewDoc:=main.AccesPath+'Vv~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end;

procedure Tcr_stanF.Button32Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
typer:='File';
NewDoc:=main.AccesPath+'SRS~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end;

procedure Tcr_stanF.Button31Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
typer:='File';
NewDoc:=main.AccesPath+'Tso~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end;

procedure Tcr_stanF.Button33Click(Sender: TObject);
var
Name_file:PWideChar;
typer:OleVariant;
begin
typer:='File';
NewDoc:=main.AccesPath+'Enp~.doc';
WordApplication1.Visible:=true;
Application.Minimize;
WD.ConnectTo(WordApplication1.Documents.Open2000(NewDoc,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
             EmptyParam,EmptyParam,EmptyParam));
end;

procedure Tcr_stanF.RadioButton8Click(Sender: TObject);
begin
Edit4.Text:='ГОСТ';
end;

procedure Tcr_stanF.RadioButton9Click(Sender: TObject);
begin
Edit4.Text:='СТП';
end;

procedure Tcr_stanF.BitBtn3Click(Sender: TObject);
begin
Application.Minimize;
end;

procedure Tcr_stanF.DateTimePicker1Change(Sender: TObject);
begin
  if RadioButton3.Checked then begin
  sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
  sini.WriteString('primen','utvgos',DateToStr(DateTimePicker1.Date));
  sini.Free;
  end;
end;

procedure Tcr_stanF.BitBtn4Click(Sender: TObject);
var
KeyValues:Variant;
ndis1,nkaf1,porv11,spec1,forob1,vdic1:Variant;
infgos1,famin1,dolraz1,zavr1,zavp1,dek1,sdic1:Variant;
Options:TLocateOptions;
kod,j,i,udp:integer;
fp,KeyFields:string;
Stream:TFileStream;
buf:array of char;
par:TParam;
begin
ndis:='"'+DataModule1.Query14_1.FieldByName('allpar').AsString+'"';
if RadioButton3.Checked then
    spec:='('+ListBox6.Items[0]+') '+'"'+Edit1.Text+'"';
if RadioButton5.Checked then begin
    spec:='';
    for i:=0 to ListBox4.Count-1 do
    spec:=spec+ListBox6.Items[i]+'; ';
    end;
if DBLookupComboBox4.Text='' then
forob:=Edit8.Text;

if DBLookupComboBox5.Text='' then begin
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('primen','utvuch',Edit9.Text);
sini.Free;
end else begin
sini:=TIniFile.Create(PChar(main.AccesPath+'sini.ini'));
sini.WriteString('primen','utvuch',DBLookupComboBox5.Text);
sini.Free;
end;

with DataModule1 do begin
  Table53.Close;
  Table54.Close;
  Table54.DBSession.DropConnections;
  Table56.Close;
  Options:=[loCaseInsensitive,loPartialKey];
  KeyValues:=VarArrayOf([dis.Caption,ListBox6.Items[0],fob.Caption,raz.Caption,kaf.Caption]);
  Query51.SQL.Clear;
  Query51.SQL.Add('SELECT * FROM standic');
  Query51.Open;
  if Query51.Locate('coddic;codcp;codfo;codr;codk',KeyValues,Options) then begin
  Beep;
  kod:=Query51.FieldByName('cod').AsInteger;
    if MessageDlg('Внести изменения в стандарт?',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
    Query51.SQL.Clear;
    if DBLookUpComboBox3.Text<>'' then
    Query51.SQL.Add('UPDATE standic SET dv=null, shifr=null, priz=null, sav=1 WHERE coddic='+dis.Caption+' and codcp="'+ListBox6.Items[0]+'" and codfo='+
    fob.Caption+' and codr='+raz.Caption+' and naimdic="'+DBLookUpComboBox3.Text+'" and codk="'+kaf.Caption+'"')
    else
    Query51.SQL.Add('UPDATE standic SET dv=null, shifr=null, priz=null, sav=1 WHERE coddic='+dis.Caption+' and codcp="'+ListBox6.Items[0]+'" and codfo='+
    fob.Caption+' and codr='+raz.Caption+' and naimdic="'+Edit7.Text+'" and codk="'+kaf.Caption+'"');
    Query51.ExecSQL;
    Query51.Close;

    Table54.Open;
    if Table54.Locate('codst',kod,Options) then
    Table54.Delete;
    while not Table54.Locate('codst',kod,Options) do begin
    Table54.Insert;
    Table54.FieldByName('codst').AsInteger:=kod;
    if FileExists(main.AccesPath+'Pas~.doc') then begin
    TBlobField(Table54.Fields[2]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[2]).LoadFromFile(main.AccesPath+'Pas~.doc');
    end;
    if FileExists(main.AccesPath+'Tso~.doc') then begin
    TBlobField(Table54.Fields[3]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[3]).LoadFromFile(main.AccesPath+'Tso~.doc');
    end;
    if FileExists(main.AccesPath+'Sog~.doc') then begin
    TBlobField(Table54.Fields[4]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[4]).LoadFromFile(main.AccesPath+'Sog~.doc');
    end;
    if FileExists(main.AccesPath+'Izm~.doc') then begin
    TBlobField(Table54.Fields[5]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[5]).LoadFromFile(main.AccesPath+'Izm~.doc');
    end;
    if FileExists(main.AccesPath+'Kon~.doc') then begin
    TBlobField(Table54.Fields[6]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[6]).LoadFromFile(main.AccesPath+'Kon~.doc');
    end;
    if FileExists(main.AccesPath+'Sz~.doc') then begin
    TBlobField(Table54.Fields[7]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[7]).LoadFromFile(main.AccesPath+'Sz~.doc');
    end;
    if FileExists(main.AccesPath+'UMM~.doc') then begin
    TBlobField(Table54.Fields[8]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[8]).LoadFromFile(main.AccesPath+'UMM~.doc');
    end;
    if FileExists(main.AccesPath+'Rab~.doc') then begin
    TBlobField(Table54.Fields[9]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[9]).LoadFromFile(main.AccesPath+'Rab~.doc');
    end;
    if FileExists(main.AccesPath+'Kar~.doc') then begin
    TBlobField(Table54.Fields[10]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[10]).LoadFromFile(main.AccesPath+'Kar~.doc');
    end;
    if FileExists(main.AccesPath+'At~.doc') then begin
    TBlobField(Table54.Fields[11]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[11]).LoadFromFile(main.AccesPath+'At~.doc');
    end;
    Table54.Post;
    end;
    Table54.Close;

    Table53.Open;
    if Table53.Locate('codst',kod,Options) then
    Table53.Delete;
    while not DataModule1.Table53.Locate('codst',kod,Options) do begin
    Table53.Insert;
    Table53.FieldByName('codst').AsInteger:=kod;
    if FileExists(main.AccesPath+'Sod~.doc') then begin
    TBlobField(Table53.Fields[2]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[2]).LoadFromFile(main.AccesPath+'Sod~.doc');
    end else
    Table53.Fields[2].AsVariant:=null;
    if FileExists(main.AccesPath+'Vv~.doc') then begin
    TBlobField(Table53.Fields[3]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[3]).LoadFromFile(main.AccesPath+'Vv~.doc');
    end;
    if FileExists(main.AccesPath+'Naim~.doc') then begin
    TBlobField(Table53.Fields[4]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[4]).LoadFromFile(main.AccesPath+'Naim~.doc');
    end;
    if FileExists(main.AccesPath+'Sil~.doc') then begin
    TBlobField(Table53.Fields[5]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[5]).LoadFromFile(main.AccesPath+'Sil~.doc');
    end;
    if FileExists(main.AccesPath+'OiS~.doc') then begin
    TBlobField(Table53.Fields[6]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[6]).LoadFromFile(main.AccesPath+'OiS~.doc');
    end else
    Table53.Fields[6].AsVariant:=null;
    if FileExists(main.AccesPath+'CZ~.doc') then begin
    TBlobField(Table53.Fields[7]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[7]).LoadFromFile(main.AccesPath+'CZ~.doc');
    end;
    if FileExists(main.AccesPath+'sini.ini') then begin
    TBlobField(Table53.Fields[8]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[8]).LoadFromFile(main.AccesPath+'sini.ini');
    end;
    Table53.Post;
    end;
    Table53.Close;

    if FileExists(main.AccesPath+'Op~.doc') or FileExists(main.AccesPath+'SRS~.doc') or FileExists(main.AccesPath+'Enp~.doc') then begin
    Table57.Open;
    if not Table57.Locate('codst',kod,Options) then begin
    while not DataModule1.Table57.Locate('codst',kod,Options) do begin
    Table57.Insert;
    Table57.FieldByName('codst').AsInteger:=kod;
    if FileExists(main.AccesPath+'Op~.doc') then begin
    TBlobField(Table57.Fields[2]).BlobType:=ftBlob;
    TBlobField(Table57.Fields[2]).LoadFromFile(main.AccesPath+'Op~.doc');
    end;
    if FileExists(main.AccesPath+'SRS~.doc') then begin
    TBlobField(Table57.Fields[3]).BlobType:=ftBlob;
    TBlobField(Table57.Fields[3]).LoadFromFile(main.AccesPath+'SRS~.doc');
    end;
    if FileExists(main.AccesPath+'Enp~.doc') then begin
    TBlobField(Table57.Fields[4]).BlobType:=ftBlob;
    TBlobField(Table57.Fields[4]).LoadFromFile(main.AccesPath+'Enp~.doc');
    end;
    Table57.Post;
    end;
    end else begin
    Table57.Delete;
    while not DataModule1.Table57.Locate('codst',kod,Options) do begin
    Table57.Insert;
    Table57.FieldByName('codst').AsInteger:=kod;
    if FileExists(main.AccesPath+'Op~.doc') then begin
    TBlobField(Table57.Fields[2]).BlobType:=ftBlob;
    TBlobField(Table57.Fields[2]).LoadFromFile(main.AccesPath+'Op~.doc');
    end;
    if FileExists(main.AccesPath+'SRS~.doc') then begin
    TBlobField(Table57.Fields[3]).BlobType:=ftBlob;
    TBlobField(Table57.Fields[3]).LoadFromFile(main.AccesPath+'SRS~.doc');
    end;
    if FileExists(main.AccesPath+'Enp~.doc') then begin
    TBlobField(Table57.Fields[4]).BlobType:=ftBlob;
    TBlobField(Table57.Fields[4]).LoadFromFile(main.AccesPath+'Enp~.doc');
    end;
    Table57.Post;
    end;
    end;
    Table57.Close;
    end; //if all Exists

    Query55.SQL.Clear;
    Query55.SQL.Add('SELECT * FROM standanpr WHERE codst='+IntToStr(kod));
    Query55.Open;
    if not Query55.IsEmpty then begin
    Query55.SQL.Clear;
    Query55.SQL.Add('DELETE FROM standanpr WHERE codst='+IntToStr(kod));
    Query55.ExecSQL;
    end;

    if ListBox8.Count<>0 then begin
    Query55.SQL.Clear;
    Query55.SQL.Add('set max_allowed_packet=35000000');
    Query55.ExecSQL;
    for i:=0 to ListBox8.Count-1 do begin
      Query55.SQL.Clear;
      Query55.SQL.Add('INSERT INTO standanpr (codst,npril,dok) VALUES ('+IntToStr(kod)+', '+IntToStr(i+1)+', '+':par)');
      Query55.ParamByName('par').LoadFromFile(String(ListBox8.Items[i]),ftTypedBinary);
      Query55.ExecSQL;
      Gauge1.Progress:=40;
      Application.ProcessMessages;
      end;
    end;
    Query55.Close;

    Table56.Open;
    if Table56.Locate('codst',kod,Options) then
    Table56.Delete;
    while not DataModule1.Table56.Locate('codst',kod,Options) do begin
    Table56.Insert;
    Table56.FieldByName('codst').AsInteger:=kod;
    if ndis<>'' then
    Table56.FieldByName('ndis').AsString:=ndis;
    if nkaf<>'' then
    Table56.FieldByName('nkaf').AsString:=nkaf;
    if porv1<>'' then
    Table56.FieldByName('porv').AsString:=porv1;
    if spec<>'' then
    Table56.FieldByName('spec').AsString:=spec;
    if forob<>'' then
    Table56.FieldByName('forob').AsString:=forob;
    if vdic<>'' then
    Table56.FieldByName('vdic').AsString:=vdic;
    if infgos<>'' then
    Table56.FieldByName('infgos').AsString:=infgos;
    if famin<>'' then
    Table56.FieldByName('famin').AsString:=famin;
    if dolraz<>'' then
    Table56.FieldByName('dolraz').AsString:=dolraz;
    if zavr<>'' then
    Table56.FieldByName('zavr').AsString:=zavr;
    if zavp<>'' then
    Table56.FieldByName('zavp').AsString:=zavp;
    if dek<>'' then
    Table56.FieldByName('dek').AsString:=dek;
    if sdic<>'' then
    Table56.FieldByName('sdic').AsString:=sdic;
    Table56.Post;
    end;
    Table56.Close;
    udp:=0;
    Table53.Open;
    if Table53.Locate('codst',kod,Options) then
    udp:=udp+1;
    Table53.Close;
    Table54.Open;
    if Table54.Locate('codst',kod,Options) then
    udp:=udp+1;
    Table54.Close;
    Table56.Open;
    if Table56.Locate('codst',kod,Options) then
    udp:=udp+1;
    Table56.Close;
    if udp<3 then
    MessageDlg('Сбой пересылки данных, пожалуйста повторите попытку сохранения',mtError,[mbOk],0)
    else
    MessageDlg('Станадрт сохранен',mtInformation,[mbOk],0);
    end else Exit;

    end else begin //если новый стандарт
    Query51.SQL.Clear;
    Query51.SQL.Add('INSERT INTO standic (coddic,codcp,codfo,codr,naimdic,codk,sav) VALUES ('+dis.Caption+', "'+ListBox6.Items[0]+'",'+fob.Caption+','+raz.Caption+', "'+DBLookUpComboBox3.Text+'", '+'"'+kaf.Caption+'", 1)');
    Query51.ExecSQL;
    Query51.SQL.Clear;
    Query51.SQL.Add('select cod,coddic,codcp,codfo,codr from standic');
    Query51.Open;
    KeyFields:='coddic;codcp;codfo;codr';
    KeyValues:=VarArrayOf([StrToInt(dis.Caption),ListBox6.Items[0],StrToInt(fob.Caption),StrToInt(raz.Caption)]);
    Options:=[loCaseInsensitive,loPartialKey];
    if Query51.Locate(KeyFields,KeyValues,Options) then
    kod:=Query51.FieldByName('cod').AsInteger
    else
    MessageDlg('Ошибка сохранения',mtError,[mbOk],0);
    Query51.Close;
    Table53.Open;
    while not DataModule1.Table53.Locate('codst',kod,Options) do begin
    Table53.Insert;
    Table53.FieldByName('codst').AsInteger:=kod;
    if FileExists(main.AccesPath+'Sod~.doc') then begin
    TBlobField(Table53.Fields[2]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[2]).LoadFromFile(main.AccesPath+'Sod~.doc');
    end else
    Table53.Fields[2].AsVariant:=null;
    if FileExists(main.AccesPath+'Vv~.doc') then begin
    TBlobField(Table53.Fields[3]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[3]).LoadFromFile(main.AccesPath+'Vv~.doc');
    end else
    Table53.Fields[3].AsVariant:=null;
    if FileExists(main.AccesPath+'Naim~.doc') then begin
    TBlobField(Table53.Fields[4]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[4]).LoadFromFile(main.AccesPath+'Naim~.doc');
    end;
    if FileExists(main.AccesPath+'Sil~.doc') then begin
    TBlobField(Table53.Fields[5]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[5]).LoadFromFile(main.AccesPath+'Sil~.doc');
    end;
    if FileExists(main.AccesPath+'OiS~.doc') then begin
    TBlobField(Table53.Fields[6]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[6]).LoadFromFile(main.AccesPath+'OiS~.doc');
    end else
    Table53.Fields[6].AsVariant:=null;
    if FileExists(main.AccesPath+'CZ~.doc') then begin
    TBlobField(Table53.Fields[7]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[7]).LoadFromFile(main.AccesPath+'CZ~.doc');
    end;
    if FileExists(main.AccesPath+'sini.ini') then begin
    TBlobField(Table53.Fields[8]).BlobType:=ftBlob;
    TBlobField(Table53.Fields[8]).LoadFromFile(main.AccesPath+'sini.ini');
    end;
    Table53.Post;
    end;
    Table53.Close;

    Table54.Open;
    while not DataModule1.Table54.Locate('codst',kod,Options) do begin
    Table54.Insert;
    Table54.FieldByName('codst').AsInteger:=kod;
    if FileExists(main.AccesPath+'Pas~.doc') then begin
    TBlobField(Table54.Fields[2]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[2]).LoadFromFile(main.AccesPath+'Pas~.doc');
    end;
    if FileExists(main.AccesPath+'Tso~.doc') then begin
    TBlobField(Table54.Fields[3]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[3]).LoadFromFile(main.AccesPath+'Tso~.doc');
    end;
    if FileExists(main.AccesPath+'Sog~.doc') then begin
    TBlobField(Table54.Fields[4]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[4]).LoadFromFile(main.AccesPath+'Sog~.doc');
    end;
    if FileExists(main.AccesPath+'Izm~.doc') then begin
    TBlobField(Table54.Fields[5]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[5]).LoadFromFile(main.AccesPath+'Izm~.doc');
    end;
    if FileExists(main.AccesPath+'Kon~.doc') then begin
    TBlobField(Table54.Fields[6]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[6]).LoadFromFile(main.AccesPath+'Kon~.doc');
    end;
    if FileExists(main.AccesPath+'Sz~.doc') then begin
    TBlobField(Table54.Fields[7]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[7]).LoadFromFile(main.AccesPath+'Sz~.doc');
    end;
    if FileExists(main.AccesPath+'UMM~.doc') then begin
    TBlobField(Table54.Fields[8]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[8]).LoadFromFile(main.AccesPath+'UMM~.doc');
    end;
    if FileExists(main.AccesPath+'Rab~.doc') then begin
    TBlobField(Table54.Fields[9]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[9]).LoadFromFile(main.AccesPath+'Rab~.doc');
    end;
    if FileExists(main.AccesPath+'Kar~.doc') then begin
    TBlobField(Table54.Fields[10]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[10]).LoadFromFile(main.AccesPath+'Kar~.doc');
    end;
    if FileExists(main.AccesPath+'At~.doc') then begin
    TBlobField(Table54.Fields[11]).BlobType:=ftBlob;
    TBlobField(Table54.Fields[11]).LoadFromFile(main.AccesPath+'At~.doc');
    end;
    Table54.Post;
    end;
    Table54.Close;

    if FileExists(main.AccesPath+'Op~.doc') or FileExists(main.AccesPath+'SRS~.doc') or FileExists(main.AccesPath+'Enp~.doc') then begin
    Table57.Open;
    while not DataModule1.Table57.Locate('codst',kod,Options) do begin
    Table57.Insert;
    Table57.FieldByName('codst').AsInteger:=kod;
    if FileExists(main.AccesPath+'Op~.doc') then begin
    TBlobField(Table57.Fields[2]).BlobType:=ftBlob;
    TBlobField(Table57.Fields[2]).LoadFromFile(main.AccesPath+'Op~.doc');
    end;
    if FileExists(main.AccesPath+'SRS~.doc') then begin
    TBlobField(Table57.Fields[3]).BlobType:=ftBlob;
    TBlobField(Table57.Fields[3]).LoadFromFile(main.AccesPath+'SRS~.doc');
    end;
    if FileExists(main.AccesPath+'Enp~.doc') then begin
    TBlobField(Table57.Fields[4]).BlobType:=ftBlob;
    TBlobField(Table57.Fields[4]).LoadFromFile(main.AccesPath+'Enp~.doc');
    end;
    Table57.Post;
    end;
    Table57.Close;
    end;

    if ListBox8.Count<>0 then begin
      Query55.SQL.Clear;
      Query55.SQL.Add('set max_allowed_packet=35000000');
      Query55.ExecSQL;
      Query55.SQL.Clear;
      Query55.SQL.Add('DELETE FROM standanpr WHERE codst='+IntToStr(kod));
      Query55.ExecSQL;
      for i:=0 to ListBox8.Count-1 do begin
      Query55.SQL.Clear;
      Query55.SQL.Add('INSERT INTO standanpr (codst,npril) VALUES ('+IntToStr(kod)+', '+IntToStr(i+1)+')');
      Query55.ExecSQL;
      fp:=PChar(ListBox8.Items[i]);
      for j:=1 to Length(fp) do
      if fp[j]='\' then
      fp[j]:='/';
      Query55.SQL.Clear;
      Query55.SQL.Add('UPDATE standanpr set dok=load_file("'+fp+'") WHERE codst='+IntToStr(kod)+' AND npril='+IntToStr(i+1));
      Query55.ExecSQL;
      end;
      Query55.Close;
    end;

    Table56.Open;
    while not DataModule1.Table56.Locate('codst',kod,Options) do begin
    Table56.Insert;
    Table56.FieldByName('codst').AsInteger:=kod;
    if ndis<>'' then
    Table56.FieldByName('ndis').AsString:=ndis;
    if nkaf<>'' then
    Table56.FieldByName('nkaf').AsString:=nkaf;
    if porv1<>'' then
    Table56.FieldByName('porv').AsString:=porv1;
    if spec<>'' then
    Table56.FieldByName('spec').AsString:=spec;
    if forob<>'' then
    Table56.FieldByName('forob').AsString:=forob;
    if vdic<>'' then
    Table56.FieldByName('vdic').AsString:=vdic;
    if infgos<>'' then
    Table56.FieldByName('infgos').AsString:=infgos;
    if famin<>'' then
    Table56.FieldByName('famin').AsString:=famin;
    if dolraz<>'' then
    Table56.FieldByName('dolraz').AsString:=dolraz;
    if zavr<>'' then
    Table56.FieldByName('zavr').AsString:=zavr;
    if zavp<>'' then
    Table56.FieldByName('zavp').AsString:=zavp;
    if dek<>'' then
    Table56.FieldByName('dek').AsString:=dek;
    if sdic<>'' then
    Table56.FieldByName('sdic').AsString:=sdic;
    Table56.Post;
    end;
    Table56.Close;
    udp:=0;
    Table53.Open;
    if Table53.Locate('codst',kod,Options) then
    udp:=udp+1;
    Table53.Close;
    Table54.Open;
    if Table54.Locate('codst',kod,Options) then
    udp:=udp+1;
    Table54.Close;
    Table56.Open;
    if Table56.Locate('codst',kod,Options) then
    udp:=udp+1;
    Table56.Close;
    if udp<3 then
    MessageDlg('Сбой пересылки данных, пожалуйста повторите попытку сохранения',mtError,[mbOk],0)
    else
    MessageDlg('Станадрт сохранен',mtInformation,[mbOk],0);
    end;

  end;//with
 end;

procedure Tcr_stanF.DBLookupComboBox1DropDown(Sender: TObject);
begin
if Edit2.Visible=true then begin
Edit2.Visible:=false;
Edit6.Visible:=false;
Edit7.Visible:=false;
end;
end;

procedure Tcr_stanF.DBLookupComboBox2DropDown(Sender: TObject);
begin
if Edit6.Visible=true then
Edit6.Visible:=false;
end;

procedure Tcr_stanF.DBLookupComboBox3DropDown(Sender: TObject);
begin
if Edit7.Visible=true then
Edit7.Visible:=false;
end;

procedure Tcr_stanF.DBLookupComboBox4DropDown(Sender: TObject);
begin
if Edit8.Visible=true then
Edit8.Visible:=false;
end;

end.



