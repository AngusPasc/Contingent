unit stud_acc1copy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids,datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin,DateUtils,OleServer, WordXP,ComObj;

type
  Tstud_acc = class(TForm)
    Button1: TButton;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    TreeView1: TTreeView;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit9: TEdit;
    Label9: TLabel;
    Edit10: TEdit;
    Label10: TLabel;
    Edit11: TEdit;
    Label11: TLabel;
    Edit12: TEdit;
    Panel4: TPanel;
    Label12: TLabel;
    Edit13: TEdit;
    Label13: TLabel;
    Edit14: TEdit;
    Label14: TLabel;
    Edit15: TEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit18: TEdit;
    Label18: TLabel;
    Panel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit20: TEdit;
    Label22: TLabel;
    Edit21: TEdit;
    Label23: TLabel;
    Edit22: TEdit;
    Panel6: TPanel;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    Label24: TLabel;
    Edit1: TEdit;
    Edit24: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Edit25: TEdit;
    Label27: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Label28: TLabel;
    DBLookupComboBox15: TDBLookupComboBox;
    DBLookupComboBox18: TDBLookupComboBox;
    DBLookupComboBox17: TDBLookupComboBox;
    DBLookupComboBox16: TDBLookupComboBox;
    DBLookupComboBox14: TDBLookupComboBox;
    DBLookupComboBox19: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Label29: TLabel;
    Edit7: TEdit;
    Label30: TLabel;
    Edit16: TEdit;
    BitBtn3: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    Label31: TLabel;
    Edit17: TEdit;
    Label32: TLabel;
    Edit19: TEdit;
    DBGrid3: TDBGrid;
    Button5: TButton;
    Button6: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Label33: TLabel;
    Edit23: TEdit;
    Label34: TLabel;
    Edit26: TEdit;
    DBGrid4: TDBGrid;
    Panel8: TPanel;
    Label35: TLabel;
    Edit27: TEdit;
    Label36: TLabel;
    Edit28: TEdit;
    Panel10: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    GroupBox3: TGroupBox;
    Label40: TLabel;
    Edit29: TEdit;
    Label41: TLabel;
    Edit30: TEdit;
    Label42: TLabel;
    Edit31: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    BitBtn2: TBitBtn;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    RadioGroup2: TRadioGroup;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Button7: TButton;
    Edit37: TEdit;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure acc_filter;
    procedure PageControl3Change(Sender: TObject);
    procedure SpinEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure TabSheet3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure DBLookupComboBox6Click(Sender: TObject);
    procedure DBLookupComboBox7Click(Sender: TObject);
    procedure DBLookupComboBox8Click(Sender: TObject);
    procedure DBLookupComboBox9Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit37Change(Sender: TObject);
    procedure Edit37KeyPress(Sender: TObject; var Key: Char);
    procedure Button11Click(Sender: TObject);
    procedure DBLookupComboBox7Enter(Sender: TObject);
    procedure DBLookupComboBox8Enter(Sender: TObject);
    procedure DBLookupComboBox9Enter(Sender: TObject);
    procedure DBLookupComboBox7DropDown(Sender: TObject);
    procedure DBLookupComboBox8DropDown(Sender: TObject);
    procedure DBLookupComboBox9DropDown(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
type filter=record
     fo   :integer;
     fak  :integer;
     spec :integer;
end;
var
  stud_acc: Tstud_acc;
  mas: array[-1..60] of filter;
  n,sost,status,gruppa,kurs : integer;
  str_d,filt1,filt2,s1,s2,s3,s4 : string;
  pr_tree :boolean;
  num_page,act_war,kadr :integer;    //номер закладки с которой работали
  w: char;   // для ВУС
  w4,w5,w6,w7,w8,w9 : string; // для ВУС
  r1,r2 :integer; //код региона, код района

implementation
 uses main1, stud_moves1, stud_fam1, stud_good1,stud_del1, stud_del2,
      prakt_progress1,stud_moves2,stud_moves3;
{$R *.dfm}

procedure Tstud_acc.Button1Click(Sender: TObject);
begin
 close;
end;

procedure Tstud_acc.FormCreate(Sender: TObject);
begin
 { if sys_priznak<>1 then  exit;}
  if priz_dost<>1 then
   begin
   DataModule1.Table_w1.ReadOnly:=True;
   DataModule1.Table_w2.ReadOnly:=True;
   DataModule1.Table_w3.ReadOnly:=True;
   DataModule1.Table_w4.ReadOnly:=True;
   DataModule1.Table_w5.ReadOnly:=True;
   DataModule1.Table_w6.ReadOnly:=True;
  end;
  DataModule1.Table_w6.IndexName :='idxmovacc';
 
  datamodule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w3.Open;
  DataModule1.Table_w4.Open;
  DataModule1.Table_w5.Open;
  DataModule1.Table_w6.Open;
  DataModule1.Table_w19.Open;
  DataModule1.Table46_1.Open;
  pr_tree := False;
end;

procedure Tstud_acc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //FreeMem(mas,n*sizeof(filter));

 DataModule1.Table_w1.Close;  DataModule1.Table_w2.Close;
 DataModule1.Table_w3.Close;  DataModule1.Table_w4.Close;
 DataModule1.Table_w5.Close;  DataModule1.Table_w6.Close;
 DataModule1.Table_w14.Close; DataModule1.Table_w15.Close;
 DataModule1.Table_w16.Close; DataModule1.Table_w17.Close;
 DataModule1.Table_w18.Close; DataModule1.Table_w19.Close;
 DataModule1.Table_w23.Close; DataModule1.Table46_1.Close;

 DataModule1.table_w1.Filtered:=False;
 DataModule1.table_w4.Filtered:=False;
 DataModule1.table_w5.Filtered:=False;
 DataModule1.Table_w6.Filtered:=False;
 pr_tree :=False;
 main.Enabled:=True;
end;

procedure Tstud_acc.FormActivate(Sender: TObject);
var
 k,i,codf,codfo :integer;    //код факультета формы обучения
begin

  if cod_podr='11' then  begin       //отдел кадров
   button12.Enabled :=True;
   button13.Enabled :=True;
  end;
  if pr_tree then
   begin
    case num_page of
     1 : PageControl3.ActivePage :=TabSheet1;
     3 : pagecontrol3.ActivePage:=TabSheet3;
     4 : pagecontrol3.ActivePage:=TabSheet4;
     5 : pagecontrol3.ActivePage:=TabSheet5;
    end;
    exit;  //дерево уже создано
   end;
  if priz_dost<>1 then
   begin
   DataModule1.Table_w1.ReadOnly:=True;    //acc
   DataModule1.Table_w2.ReadOnly:=True;    //acckadr
   DataModule1.Table_w3.ReadOnly:=True;    //accwar
   DataModule1.Table_w4.ReadOnly:=True;    //accfam
   DataModule1.Table_w5.ReadOnly:=True;    //accgood
   DataModule1.Table_w6.ReadOnly:=True;    //moves
  end;
   PageControl3.ActivePage :=TabSheet1;
 // DataModule1.Table_w6.IndexName :='idxmovacc';
  DataModule1.Table_w1.IndexName :='idxaccfam';
  datamodule1.Table_w1.Open;  DataModule1.Table_w2.Open;
  DataModule1.Table_w3.Open;  DataModule1.Table_w4.Open;
  DataModule1.Table_w5.Open;  DataModule1.Table_w6.Open;
  DataModule1.Table_w14.Open; DataModule1.Table_w15.Open;
  DataModule1.Table_w16.Open; DataModule1.Table_w17.Open;
  DataModule1.Table_w18.Open; DataModule1.Table_w19.Open;
  DataModule1.Table_w20.Open; DataModule1.Table_w21.Open;
  DataModule1.Table_w22.Open; DataModule1.Table_w23.Open;
//  pr_tree := False;


  DataModule1.Table_w37.Filtered:=False;
  i:=-1; k:=0;
  datamodule1.Table_w36.Open;
  DataModule1.Table_w36.First;
  DataModule1.Table_w36.Filter:='priz=''1''';
  DataModule1.Table_w36.Filtered:=True;
  n:=datamodule1.Table_w36.RecordCount;
 // setlength(mas,n*sizeof(filter));
  while not DataModule1.Table_w36.Eof do
   begin
    if (i=-1) and (k=0) then     //добавили 1 факультет  и его спец-ть
     begin
      codf := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      codfo:= DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
      TreeView1.Items.Add(Nil,DataModule1.Table_w36.fieldbyname('fak').AsString);
      i:=i+1; k:=i;
      mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger; mas[i].fo :=0; mas[i].spec :=0;

      TreeView1.Items.AddChild(TreeView1.Items[i],DataModule1.Table_w36.fieldbyname('otd').AsString);
      i:=i+1;
      mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      mas[i].fo :=DataModule1.Table_w36.fieldbyname('spotd').AsInteger; mas[i].spec :=0;

      TreeView1.Items.AddChild(TreeView1.Items[i],DataModule1.Table_w36.fieldbyname('spec').AsString);
      i:=i+1;
      mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      mas[i].fo :=DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
      mas[i].spec :=DataModule1.Table_w36.fieldbyname('spspec').AsInteger;
     end
    else
     if (codf = DataModule1.Table_w36.fieldbyname('spfak').AsInteger)   //тот же факультет
     then      // добавляем еще спец-ти того же факультета
      begin
       if  codfo = DataModule1.Table_w36.fieldbyname('spotd').AsInteger then //та же форма обучения
         begin
          TreeView1.Items.Add(TreeView1.Items[i],DataModule1.Table_w36.fieldbyname('spec').AsString);
          i:=i+1;
          mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
          mas[i].fo :=DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
          mas[i].spec :=DataModule1.Table_w36.fieldbyname('spspec').AsInteger;
         end
       else //сменилась форма обучения
         begin
          //i:=k;
          codfo:= DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
          TreeView1.Items.Add(TreeView1.Items[k],DataModule1.Table_w36.fieldbyname('otd').AsString);
          i:=i+1;
          mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
          mas[i].fo :=DataModule1.Table_w36.fieldbyname('spotd').AsInteger; mas[i].spec :=0;

          TreeView1.Items.AddChild(TreeView1.Items[i],DataModule1.Table_w36.fieldbyname('spec').AsString);
          i:=i+1;
          mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
          mas[i].fo :=DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
          mas[i].spec :=DataModule1.Table_w36.fieldbyname('spspec').AsInteger;

         end
      end
     else     //сменился факультет
      begin
       codf := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
       codfo:= DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
       TreeView1.Items.Add(nil,DataModule1.Table_w36.fieldbyname('fak').AsString);
       i:=i+1;
       mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger; mas[i].fo :=0; mas[i].spec :=0;

       TreeView1.Items.AddChild(TreeView1.Items[i],DataModule1.Table_w36.fieldbyname('otd').AsString);
       i:=i+1;  k:=i;
       mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
       mas[i].fo :=DataModule1.Table_w36.fieldbyname('spotd').AsInteger; mas[i].spec :=0;

       TreeView1.Items.AddChild(TreeView1.Items[i],DataModule1.Table_w36.fieldbyname('spec').AsString);
       i:=i+1;
       mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
       mas[i].fo :=DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
       mas[i].spec :=DataModule1.Table_w36.fieldbyname('spspec').AsInteger;

      end;
    DataModule1.Table_w36.Next;
   end;
   DataModule1.Table_w36.Close;
   DataModule1.Table_w36.Filtered:=False;
   pr_tree :=True;
   n:=0;
   TreeView1.SetFocus;
end;

procedure Tstud_acc.acc_filter;
begin
 filt1:='';
 if mas[n].fak<>0 then filt1:='spfak= '+inttostr(mas[n].fak);
 if mas[n].fo<>0 then
  if  trim(filt1)<>'' then filt1:=trim(filt1)+' and spotd='+inttostr(mas[n].fo);
 if mas[n].spec<>0 then
  if  trim(filt1)<>'' then filt1:=trim(filt1)+' and spspec='+inttostr(mas[n].spec);
 filt2:='';
 if gruppa<>0 then filt2:='spgrup='+inttostr(gruppa);
 if sost<>0   then
  if trim(filt2)<>'' then filt2:=trim(filt2)+' and spsost='+inttostr(sost)
                     else filt2:='spsost='+inttostr(sost);
 if status<>0 then
   if trim(filt2)<>'' then filt2:=trim(filt2)+' and spstatus='+inttostr(status)
                      else filt2:='spstatus='+inttostr(status);
 if kurs<>0   then
   if trim(filt2)<>'' then filt2:=trim(filt2)+' and kurs='+inttostr(kurs)
                      else filt2:='kurs='+inttostr(kurs);


 if filt1='' then
   if filt2='' then  DataModule1.table_w1.Filtered:=False
   else  begin
           DataModule1.Table_w1.Filter:=filt2; DataModule1.table_w1.Filtered:=True;
         end
 else
   if filt2='' then
         begin
           DataModule1.Table_w1.Filter:=filt1; DataModule1.table_w1.Filtered:=True;
         end
   else  begin
           DataModule1.Table_w1.Filter:=trim(filt1)+' and '+trim(filt2);
           DataModule1.table_w1.Filtered:=True;
         end;
 Edit1.Text:=inttostr(Datamodule1.Table_w1.RecordCount);
end;

procedure Tstud_acc.TreeView1Click(Sender: TObject);
begin
 n:=treeview1.Selected.AbsoluteIndex;
 acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox3Click(Sender: TObject);
begin
 status:=DBLookupComboBox3.Listsource.dataset.fieldbyname('pin').asinteger;
 acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox2Click(Sender: TObject);
begin
 sost:=DBLookupComboBox2.Listsource.dataset.fieldbyname('pin').asinteger;
 acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox1Click(Sender: TObject);
begin
 gruppa :=DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').asinteger;
 DataModule1.Table_w37.Filtered:=False;
 acc_filter;
end;

procedure Tstud_acc.BitBtn1Click(Sender: TObject);
begin
  DBLookupComboBox1.Font.Color :=clWindow; gruppa:=0;
  DBLookupComboBox2.Font.Color :=clWindow; sost:=0;
  DBLookupComboBox3.Font.Color :=clWindow; status:=0;
  //SpinEdit1.Font.Color :=clWindow;
  edit37.Text:='';
  kurs :=0;
  acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox1DropDown(Sender: TObject);
begin
 DataModule1.Table_w37.Filter := filt1;
 DataModule1.Table_w37.Filtered :=True;
 DBLookupComboBox1.Font.Color :=clNone;
end;

procedure Tstud_acc.DBLookupComboBox2DropDown(Sender: TObject);
begin
   DBLookupComboBox2.Font.Color :=clNone;
end;

procedure Tstud_acc.DBLookupComboBox3DropDown(Sender: TObject);
begin
  DBLookupComboBox3.Font.Color :=clNone;
end;

procedure Tstud_acc.SpinEdit1Change(Sender: TObject);
begin
  kurs :=SpinEdit1.Value;
  acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key=46) or (key=8)  then
 begin
  DBLookupComboBox1.Font.color :=clWindow;
  gruppa:=0;
  acc_filter;
  DBLookupComboBox2.SetFocus;
 end;
end;

procedure Tstud_acc.DBLookupComboBox2Enter(Sender: TObject);
begin
 if DBLookupComboBox1.Font.Color = clWindow then
    DBLookupComboBox1.Font.Color:=clWindow;
end;

procedure Tstud_acc.DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=46) or (key=8)  then
 begin
  DBLookupComboBox2.Font.color :=clWindow;
  sost:=0;
  acc_filter;
  DBLookupComboBox3.SetFocus;
 end;
end;

procedure Tstud_acc.DBLookupComboBox3Enter(Sender: TObject);
begin
  if DBLookupComboBox2.Font.Color = clWindow then
    DBLookupComboBox2.Font.Color:=clWindow;
end;

procedure Tstud_acc.DBLookupComboBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key=46) or (key=8)  then
 begin
  DBLookupComboBox3.Font.color :=clWindow;
  status:=0;
  acc_filter;
  DBLookupComboBox1.SetFocus;
 end;
end;

procedure Tstud_acc.DBLookupComboBox1Enter(Sender: TObject);
begin
   if DBLookupComboBox3.Font.Color = clWindow then
    DBLookupComboBox3.Font.Color:=clWindow;
end;

procedure Tstud_acc.PageControl3Change(Sender: TObject);
begin
  stud_pin:= DataModule1.Table_w1.FieldByName('pin').Asinteger;
  stud_fio:=trim(DataModule1.Table_w1.FieldByname('fam').asstring);
  stud_fio:=trim(stud_fio)+' '+trim(DataModule1.Table_w1.FieldByname('name').asstring)+' ';
  stud_fio:=trim(stud_fio)+' '+trim(DataModule1.Table_w1.FieldByname('vname').asstring);
  stud_gr :=trim(DataModule1.Table_w1.FieldByname('gruppa').asstring);
  stud_ls :=trim(DataModule1.Table_w1.FieldByname('ls').asstring);
  stud_zb :=trim(DataModule1.Table_w1.FieldByname('zachbook').asstring);
  if cod_podr='11' then         //отдел кадров
   begin
    Tabsheet6.Enabled:=false;  Button12.Enabled:=true
   end;

  if cod_podr='11_1' then         //ВУС
   begin
    Tabsheet2.Enabled:=false; Tabsheet3.Enabled:=false; Tabsheet4.Enabled:=false;
    Tabsheet5.Enabled:=false;
   end;

   if cod_podr='23' then         //отдел практики и трудоустройства
   begin
    Tabsheet2.Enabled:=false; Tabsheet3.Enabled:=false; Tabsheet4.Enabled:=false;
    Tabsheet5.Enabled:=false; Tabsheet6.Enabled:=false;
   end;

  if pagecontrol3.ActivePage=TabSheet1 then num_page :=1;

  if pagecontrol3.ActivePage=TabSheet2 then       //вкладка 2 - сведения о студенте
   begin
    DataModule1.Table_w2.IndexName :='idxkadacc';    // поиск pin студента
    if not DataModule1.Table_w2.FindKey([stud_pin]) then
     begin

      showmessage('Нет сведений о выбранном студенте!');
      DataModule1.Query1.SQL.Clear;
      s1 :='insert  into acckadr (acc) values ('+inttostr(stud_pin)+')';
      DataModule1.Query1.SQL.Add(s1);
      DataModule1.Query1.ExecSQL;
      Datamodule1.Table_w2.Refresh;
     end;
    if DataModule1.Table_w2.Fieldbyname('sex').asstring = '1'
    then
         begin RadioButton1.Checked :=True; RadioButton2.Checked :=False; label20.Caption :='Окончил'; end
    else
         begin RadioButton2.Checked :=True; RadioButton1.Checked :=False; label20.Caption :='Окончила'; end;

    if DataModule1.Table_w2.Fieldbyname('marry').asstring ='1'
    then
         begin RadioButton3.Checked :=True; RadioButton4.Checked :=False; end
    else
         begin RadioButton4.Checked :=True; RadioButton3.Checked :=False; end;

    if DataModule1.Table_w2.Fieldbyname('hostel').asstring = '1'
    then
        begin RadioButton5.Checked :=True; RadioButton6.Checked :=False; end
    else
         begin RadioButton6.Checked :=True; RadioButton5.Checked :=False; end;

    edit2.Text :=DataModule1.Table_w1.Fieldbyname('ls').AsString;
    edit3.Text :=DataModule1.Table_w1.Fieldbyname('zachBook').AsString;

    edit4.Text :=DataModule1.Table_w1.Fieldbyname('fam').AsString;
    edit5.Text :=DataModule1.Table_w1.Fieldbyname('name').AsString;
    edit6.Text :=DataModule1.Table_w1.Fieldbyname('vname').AsString;

    edit8.Text :=DataModule1.Table_w2.Fieldbyname('pasnum').AsString;
    edit9.Text :=DataModule1.Table_w2.Fieldbyname('pasdate').AsString;
    edit10.Text :=DataModule1.Table_w2.Fieldbyname('paswho').AsString;

    edit11.Text :=DataModule1.Table_w2.Fieldbyname('dat_ro').AsString;
    edit12.Text :=DataModule1.Table_w2.Fieldbyname('mes_ro').AsString;

    edit13.Text :=DataModule1.Table_w2.Fieldbyname('address').AsString;
    edit14.Text :=DataModule1.Table_w2.Fieldbyname('registr').AsString;
    edit15.Text :=DataModule1.Table_w2.Fieldbyname('phone').AsString;

    edit18.Text :=DataModule1.Table_w2.Fieldbyname('famaly').AsString;

    edit20.Text :=DataModule1.Table_w2.Fieldbyname('mesjob').AsString;
    edit21.Text :=DataModule1.Table_w2.Fieldbyname('doljob').AsString;
    edit22.Text :=DataModule1.Table_w2.Fieldbyname('teljob').AsString;

    edit24.Text :=DataModule1.Table_w2.Fieldbyname('schoolpr').AsString;
    edit25.Text :=DataModule1.Table_w2.Fieldbyname('schoolgod').AsString;
    If priz_dost=1  // доступ на редактирование
    then begin
     Edit2.ReadOnly :=False;  Edit3.ReadOnly :=False;  Edit8.ReadOnly :=False;
     Edit9.ReadOnly :=False;  Edit10.ReadOnly :=False; Edit11.ReadOnly :=False;
     Edit12.ReadOnly :=False; Edit13.ReadOnly :=False; Edit14.ReadOnly :=False;
     Edit15.ReadOnly :=False; Edit18.ReadOnly :=False; Edit20.ReadOnly :=False;
     Edit21.ReadOnly :=False; Edit22.ReadOnly :=False; Edit24.ReadOnly :=False;
     Edit25.ReadOnly :=False;  DBLookupComboBox18.ReadOnly :=False;
     DBLookupComboBox17.ReadOnly :=False; DBLookupComboBox15.ReadOnly :=False;
     DBLookupComboBox16.ReadOnly :=False;  DBLookupComboBox19.ReadOnly :=False;
     GroupBox1.Enabled :=True;   GroupBox2.Enabled :=True;
     RadioGroup1.Enabled :=True; RadioButton1.Enabled :=True;  RadioButton2.Enabled :=True;
     BitBtn3.Enabled :=True;
    end;
   num_page :=2;
   end;

   if pagecontrol3.ActivePage=TabSheet3 then   //вкладка 3 - приказы по студенту
    begin
      if priz_dost<>1 then
      begin
       button2.Enabled:=False;
       button3.Enabled:=False;
       button4.Enabled:=False;
      end;
      Edit7.text :=stud_fio;
      Edit16.text :=stud_gr;
      DataModule1.Table_w6.Filter:='acc='+inttostr(stud_pin);
      DataModule1.Table_w6.Filtered:=True;
      DataModule1.Table_w6.Last;
      mark:= DataModule1.Table_w6.GetBookmark;        //создали закладку на последней записи
     num_page :=3;
     end;

   if pagecontrol3.ActivePage=TabSheet4 then   //вкладка 4 - смена фамилии (паспорта)
    begin
      if priz_dost<>1 then
      begin
       button5.Enabled:=False;
       button6.Enabled:=False;
      end;
      Edit17.text :=stud_fio;
      Edit19.text :=stud_gr;
      DataModule1.Table_w4.Filter:='acc='+inttostr(stud_pin);
      DataModule1.Table_w4.Filtered:=True;
      num_page :=4;
   end;

   if pagecontrol3.ActivePage=TabSheet5 then   //вкладка 5 - поощрения/взыскания
    begin
     if priz_dost<>1 then
      begin
       button8.Enabled:=False;
       button9.Enabled:=False;
       button10.Enabled:=False;
      end;
      Edit23.text :=stud_fio;
      Edit26.text :=stud_gr;
      DataModule1.Table_w5.Filter:='acc='+inttostr(stud_pin);
      DataModule1.Table_w5.Filtered:=True;
      num_page :=5;
   end;

   if pagecontrol3.ActivePage=TabSheet6 then   //вкладка 6 - ВУС
    begin
     DataModule1.Table46_1.Open;

     Edit27.text :=stud_fio;  Edit27.Enabled :=False;
     Edit28.text :=stud_gr;   Edit28.Enabled :=False;
      DBLookupComboBox4.DataSource :=DataModule1.DataSource_w3;
       DBLookupComboBox4.DataField := 'spmil1';
       DBLookupComboBox5.DataSource :=DataModule1.DataSource_w3;
       DBLookupComboBox5.DataField := 'spmil3';
       DBLookupComboBox6.DataSource :=DataModule1.DataSource_w3;
       DBLookupComboBox6.DataField := 'spmil2';
       DBLookupComboBox7.DataSource :=DataModule1.DataSource_w3;
       DBLookupComboBox7.DataField := 'spreg1';
       DBLookupComboBox8.DataSource :=DataModule1.DataSource_w3;
       DBLookupComboBox8.DataField := 'spreg2';
       DBLookupComboBox9.DataSource :=DataModule1.DataSource_w3;
       DBLookupComboBox9.DataField := 'spreg3';

     Edit29.Text :=''; Edit30.Text :=''; Edit31.Text :='';
     Edit32.Text :=''; Edit33.Text :=''; Edit34.Text :='';
     Edit35.Text :=''; Edit36.Text :='';
     DataModule1.Table_w3.IndexName :='idxwaracc';    // поиск по pin студента
     DataModule1.Table46_1.Filtered :=False;
     if not DataModule1.Table_w3.FindKey([stud_pin]) then
      begin
       act_war :=1;    // добавление информации
       RadioButton7.Checked :=False; RadioButton8.Checked :=True;
       w4:=''; DBLookupComboBox4.DataSource:=nil;
       w5:=''; DBLookupComboBox5.DataSource:=nil;
       w6:=''; DBLookupComboBox6.DataSource:=nil;
       w7:=''; DBLookupComboBox7.DataSource:=nil;
       w8:=''; DBLookupComboBox8.DataSource:=nil;
       w9:=''; DBLookupComboBox9.DataSource:=nil;
      end
     else
      begin
       act_war :=2;    // редактирование информации
       r1 :=0;
       if DataModule1.Table_w3.fieldbyname('spmil1').asstring <> '' then
        w4 :=''''+DataModule1.Table_w3.fieldbyname('spmil1').asstring+''''
       else
        begin
         w4:='';
         DBLookupComboBox4.DataSource:=nil;
        end;
       if  DataModule1.Table_w3.fieldbyname('spmil2').asstring <> '' then
        w5 :=''''+DataModule1.Table_w3.fieldbyname('spmil2').asstring+''''
       else
        begin
         w5:='';
         DBLookupComboBox5.DataSource:=nil;
        end;
       if DataModule1.Table_w3.fieldbyname('spmil3').asstring <> '' then
        w6 :=''''+DataModule1.Table_w3.fieldbyname('spmil3').asstring+''''
       else
        begin
         w6:='';
         DBLookupComboBox6.DataSource:=nil;
        end;
       if DataModule1.Table_w3.fieldbyname('spreg1').asstring <> '' then
        begin
         r1:=DataModule1.Table_w3.fieldbyname('spreg1').asinteger;
         w7 :=''''+DataModule1.Table_w3.fieldbyname('spreg1').asstring+''''
        end
       else
        begin
         w7:='';
         DBLookupComboBox7.DataSource:=nil;
        end;
       if DataModule1.Table_w3.fieldbyname('spreg2').asstring <> '' then
        w8 :=''''+DataModule1.Table_w3.fieldbyname('spreg2').asstring+''''
       else
       begin
         w8:='';
         DBLookupComboBox8.DataSource:=nil;
        end;
       if  DataModule1.Table_w3.fieldbyname('spreg3').asstring<> '' then
        w9 :=''''+DataModule1.Table_w3.fieldbyname('spreg3').asstring+''''
       else
        begin
         w9:='';
         DBLookupComboBox9.DataSource:=nil;
        end;

       if DataModule1.Table_w3.FieldByName('priz').AsString = '0' then // не служил
        begin
         RadioButton7.Checked :=False; RadioButton8.Checked :=True;
         DBLookupComboBox4.Enabled:=False; DBLookupComboBox5.Enabled:=False;
         DBLookupComboBox6.Enabled:=False;
         DBLookupComboBox7.Enabled:=False;
         DBLookupComboBox8.Enabled:=False; DBLookupComboBox9.Enabled:=False;
         Edit29.Enabled :=False; Edit30.Enabled :=False; Edit31.Enabled :=False;
         Edit32.Enabled :=False; Edit33.Enabled :=False; Edit34.Enabled :=False;
         Edit35.Enabled :=False; Edit36.Enabled :=False;
        end ;
       if DataModule1.Table_w3.FieldByName('priz').AsString = '1' then //  служил
        begin
         RadioButton7.Checked :=True; RadioButton8.Checked :=False;
         Edit29.Text := trim(DataModule1.Table_w3.fieldbyname('milnum').AsString);
         Edit30.Text := trim(DataModule1.Table_w3.fieldbyname('mildate').AsString);
         Edit31.Text := trim(DataModule1.Table_w3.fieldbyname('milwho').AsString);
         Edit32.Text := trim(DataModule1.Table_w3.fieldbyname('katgodn').AsString);
         Edit33.Text := trim(DataModule1.Table_w3.fieldbyname('specnum').AsString);
         Edit34.Text := trim(DataModule1.Table_w3.fieldbyname('speckod').AsString);
         Edit35.Text := trim(DataModule1.Table_w3.fieldbyname('kateg').AsString);
         Edit36.Text := trim(DataModule1.Table_w3.fieldbyname('grupuch').AsString);
        end;
     if priz_dost<>1 then
      begin
       RadioButton7.Enabled :=False;  RadioButton8.Enabled :=False;
       DBLookupComboBox4.Enabled:=False; DBLookupComboBox5.Enabled:=False;
       DBLookupComboBox6.Enabled:=False;
       DBLookupComboBox7.Enabled:=False;
       DBLookupComboBox8.Enabled:=False; DBLookupComboBox9.Enabled:=False;
       bitBtn2.Enabled :=False;
       Edit29.Enabled :=False; Edit30.Enabled :=False; Edit31.Enabled :=False;
       Edit32.Enabled :=False; Edit33.Enabled :=False; Edit34.Enabled :=False;
       Edit35.Enabled :=False; Edit36.Enabled :=False;
      end;
     end;
     num_page :=6;
    end;
end;



procedure Tstud_acc.SpinEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=46) or (key=8)  then
 begin
  Spinedit1.Value :=0;
  Spinedit1.Text :='0';
  kurs:=0;
 end;
end;

procedure Tstud_acc.Button2Click(Sender: TObject);
begin
  Enabled:=False;
  act :=1;          //добавление нового приказа
  Application.CreateForm(Tacc_moves,acc_moves);
  acc_moves.Show;
end;

procedure Tstud_acc.Button3Click(Sender: TObject);
begin
  Enabled:=False;
  DataModule1.Table_w6.Last;
  act :=2;         // изменение последнего приказа
  Application.CreateForm(Tacc_moves,acc_moves);
  acc_moves.Show;
end;

procedure Tstud_acc.Button4Click(Sender: TObject);
begin
  Enabled:=False;
  Application.CreateForm(Tacc_del,acc_del);
  acc_del.Show;

end;

procedure Tstud_acc.BitBtn3Click(Sender: TObject);
begin
  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('update acc set ls='+''''+Edit2.text+''''+', zachbook='+''''+Edit3.text+''''+' where pin='+inttostr(stud_pin));
  DataModule1.Query1.ExecSQL;


  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('update acckadr set  pasnum='+''''+Edit8.text+''''+',paswho='+''''+Edit10.text+''''+',mes_ro='+''''+Edit12.text+'''');
  DataModule1.Query1.SQL.Add(',address='+''''+ Edit13.text+''''+ ',registr='+''''+ Edit14.text+''''+',phone='+''''+ Edit15.text+'''');
  DataModule1.Query1.SQL.Add(',mesjob='+''''+ Edit20.text+''''+',doljob='+''''+Edit21.text+''''+',teljob='+''''+ Edit22.text+'''');
  DataModule1.Query1.SQL.Add(',famaly='+''''+ Edit18.text+''''+ ',schoolpr='+''''+ Edit24.text+'''');
  DataModule1.Query1.SQL.Add(',schoolgod='+Edit25.text);

  if RadioButton1.Checked =True
    then DataModule1.Query1.SQL.Add(',sex='+''''+'1'+'''')
    else DataModule1.Query1.SQL.Add(',sex='+''''+'0'+'''');
 if  RadioButton3.Checked =True
    then  DataModule1.Query1.SQL.Add(',marry='+''''+'1'+'''')
    else  DataModule1.Query1.SQL.Add(',marry='+''''+'0'+'''');
 if  RadioButton5.Checked =True
    then DataModule1.Query1.SQL.Add(',hostel='+''''+'1'+'''')
    else DataModule1.Query1.SQL.Add(',hostel='+''''+'0'+'''');

 if edit9.text <> '' then
  begin
  str_d:=inttostr(yearof(strtodate(Edit9.text)))+'-'+ inttostr(monthof(strtodate(Edit9.text)))+'-'+inttostr(dayof(strtodate(Edit9.text)));
  DataModule1.Query1.SQL.Add(',pasdate='+''''+str_d+'''');
  end
  else  DataModule1.Query1.SQL.Add(',pasdate=Null');



 if edit11.text <> '' then
  begin
  str_d:=inttostr(yearof(strtodate(Edit11.text)))+'-'+ inttostr(monthof(strtodate(Edit11.text)))+'-'+inttostr(dayof(strtodate(Edit11.text)));
  DataModule1.Query1.SQL.Add(',dat_ro='+''''+str_d+'''');
  end
  else   DataModule1.Query1.SQL.Add(',dat_ro=Null');


  DataModule1.Query1.SQL.Add(' where acc='+inttostr(stud_pin));
  DataModule1.Query1.ExecSQL;
  DataModule1.Table_w1.Refresh;
  DataModule1.Table_w2.Refresh;
  PageControl3.ActivePage :=TabSheet1;

end;

procedure Tstud_acc.Button5Click(Sender: TObject);
begin
  Enabled:=False;
  act :=1;          //добавление нового приказа  по смене фамилии
  Application.CreateForm(Tacc_fam,acc_fam);
  acc_fam.Show;
end;

procedure Tstud_acc.Button6Click(Sender: TObject);
begin
  Enabled:=False;
  act :=2;          //изменение приказа  по смене фамилии
  datamodule1.Table_w4.Last;
  Application.CreateForm(Tacc_fam,acc_fam);
  acc_fam.Show;
end;

procedure Tstud_acc.Button8Click(Sender: TObject);
begin
  Enabled:=False;
  act :=1;          //добавление нового приказа о поощрении/ взыскании
  Application.CreateForm(Tacc_good,acc_good);
  acc_good.Show;
end;

procedure Tstud_acc.Button9Click(Sender: TObject);
begin
  Enabled:=False;
  act :=2;          //редактирование приказа о поощрении /взыскании
  Application.CreateForm(Tacc_good,acc_good);
  acc_good.Show;
end;

procedure Tstud_acc.TabSheet3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  Edit16.Text := trim(stud_gr);
end;

procedure Tstud_acc.Button7Click(Sender: TObject);
begin
  Enabled:=False;
  act :=2;          //удаление приказа по смене фамилии
  datamodule1.Table_w4.Last;
  acc_delfam.Show;
end;

procedure Tstud_acc.Button10Click(Sender: TObject);
begin
  datamodule1.Table_w5.Delete;
  datamodule1.Table_w5.Refresh;
end;

procedure Tstud_acc.RadioButton8Click(Sender: TObject);
begin
  if RadioButton8.Checked =True then // выключаем все если не служил
  begin
   w:='0';
   DBLookupComboBox4.Enabled:=False; DBLookupComboBox5.Enabled:=False;
   DBLookupComboBox6.Enabled:=False;
   DBLookupComboBox7.Enabled:=False;
   DBLookupComboBox8.Enabled:=False; DBLookupComboBox9.Enabled:=False;
   Edit29.Enabled :=False; Edit30.Enabled :=False; Edit31.Enabled :=False;
   Edit32.Enabled :=False; Edit33.Enabled :=False; Edit34.Enabled :=False;
   Edit35.Enabled :=False; Edit36.Enabled :=False;
  end;
end;

procedure Tstud_acc.RadioButton7Click(Sender: TObject);
begin
  if RadioButton7.Checked =True then // включаем все если  служил
  begin
   w :='1';
   DBLookupComboBox4.Enabled:=True; DBLookupComboBox5.Enabled:=True;
   DBLookupComboBox6.Enabled:=True; DBLookupComboBox7.Enabled:=True;
   DBLookupComboBox8.Enabled:=True; DBLookupComboBox9.Enabled:=True;
   Edit29.Enabled :=True; Edit30.Enabled :=True; Edit31.Enabled :=True;
   Edit32.Enabled :=True; Edit33.Enabled :=True; Edit34.Enabled :=True;
   Edit35.Enabled :=True; Edit36.Enabled :=True;
  end;
end;

procedure Tstud_acc.DBLookupComboBox4Click(Sender: TObject);
begin
 w4 :=''''+DataModule1.Table_w20.fieldbyname('pin').asstring+'''';
 DataModule1.Table_w3.Refresh;
end;

procedure Tstud_acc.DBLookupComboBox5Click(Sender: TObject);
begin
 w5 :=''''+DataModule1.Table_w22.fieldbyname('pin').asstring+'''';
 DataModule1.Table_w3.Refresh;
end;

procedure Tstud_acc.DBLookupComboBox6Click(Sender: TObject);
begin
 w6 :=''''+DataModule1.Table_w21.fieldbyname('pin').asstring+'''';
 DataModule1.Table_w3.Refresh;
end;

procedure Tstud_acc.DBLookupComboBox7Click(Sender: TObject);
begin
 w7 :=''''+DataModule1.Table46_1.fieldbyname('pin').asstring+'''';
 r1:= DataModule1.Table46_1.fieldbyname('pin').AsInteger;
 DataModule1.Table_w3.Refresh;
end;

procedure Tstud_acc.DBLookupComboBox8Click(Sender: TObject);
begin
 w8 :=''''+DataModule1.Table46_1.fieldbyname('pin').asstring+'''';
 w9 :='';
 r2:= DataModule1.Table46_1.fieldbyname('pin').AsInteger;
 DataModule1.Table_w3.Refresh;
end;

procedure Tstud_acc.DBLookupComboBox9Click(Sender: TObject);
begin
 w9 :=''''+DataModule1.Table46_1.fieldbyname('pin').asstring+'''';
 w8 :='';
 DataModule1.Table_w3.Refresh;
end;

procedure Tstud_acc.BitBtn2Click(Sender: TObject);
begin
 if trim(Edit30.Text)<>'' then
  str_d :=''''+inttostr(yearof(strtodate(Edit30.text)))+'-'+ inttostr(monthof(strtodate(Edit30.text)))+'-'+inttostr(dayof(strtodate(Edit30.text)))+''''
 else
  str_d :='Null';
 if w4='' then w4:='Null';
 if w5='' then w5:='Null';
 if w6='' then w6:='Null';
 if w7='' then w7:='Null';
 if w8='' then w8:='Null';
 if w9='' then w9:='Null';


 if act_war = 1 then      // добавляем
  begin
   DataModule1.Query1.SQL.Clear;
   if w ='0' then   //не служил
    begin
     s1 :='insert  into accwar (acc, priz) values ('+inttostr(stud_pin)+','+''''+w+''''+')';
     DataModule1.Query1.SQL.Add(s1);
    end
   else          // служил
    begin
     s1 :='insert  into accwar (acc,spmil1,milnum,mildate,milwho,katgodn,spmil2,kateg,grupuch,spmil3,specnum,speckod,priz,spreg1,spreg2,spreg3)';
     s2 :=' values ('+inttostr(stud_pin)+','+w4+','+''''+Edit29.text+''''+','+str_d+','+''''+Edit31.Text+''''+',';
     s3 :=''''+Edit32.text+''''+','+w6+','+''''+Edit35.Text+''''+','+''''+Edit36.Text+''''+','+w5+',';
     s4 :=''''+Edit33.text+''''+','+''''+edit34.text+''''+','+''''+w+''''+','+w7+','+w8+','+w9+ ')';
     DataModule1.Query1.SQL.Add(s1+s2+s3+s4);
    end;
   DataModule1.Query1.ExecSQL;        //добавляем в accwar
   DataModule1.Table_w3.Refresh;
  end;
  if act_war = 2 then      // редактируем
  begin
   DataModule1.Query1.SQL.Clear;
   if w ='0' then   //не служил
    begin
     s1 :='update accwar set spmil1=null,milnum=null,mildate=null,milwho=null,katgodn=null,spmil2=null,kateg=null,';
     s2 :='grupuch=null,spmil3=null,specnum=null,speckod=null,spreg1=null,spreg2=null,spreg3=null,priz='+w+' where acc='+inttostr(stud_pin); ;
     DataModule1.Query1.SQL.Add(s1+s2);
//     DataModule1.Query2.SQL.Clear;
//     DataModule1.Query2.SQL.Add('delete from accwar where acc='+inttostr(stud_pin));
//     DataModule1.Query2.ExecSQL;
    end
   else
    begin
     s1 :='update accwar set spmil1='+w4+',milnum='+''''+edit29.Text+''''+',mildate='+str_d+',milwho='+''''+edit31.Text+'''';
     s2:=',katgodn='+''''+edit32.Text+''''+',spmil2='+w6+',kateg='+''''+edit35.Text+''''+',grupuch='+''''+edit36.Text;
     s3:=''''+',spmil3='+w5+',specnum='+''''+edit33.Text+''''+',speckod='+''''+edit34.text+''''+',priz='+w;
     s4 :=',spreg1='+w7+',spreg2='+w8+',spreg3='+w9+' where acc='+inttostr(stud_pin);
     DataModule1.Query1.SQL.Add(s1+s2+s3+s4);
    end;
   DataModule1.Query1.ExecSQL;
   DataModule1.Table_w3.Refresh;

  end;
  PageControl3.ActivePage :=TabSheet1;
  DataModule1.Table46_1.Filter:='';
  DataModule1.Table46_1.Filtered:=false;
  DataModule1.Table46_1.Close;

end;

procedure Tstud_acc.Edit37Change(Sender: TObject);
var
 s_fam : string;
begin
 if trim(Edit37.Text) <>'' then
  begin
   s_fam := trim(Edit37.Text);
   DataModule1.Table_w1.IndexName :='idxaccfam';
   DataModule1.Table_w1.FindNearest([s_fam]);
  end
else
  DataModule1.Table_w1.First;
end;

procedure Tstud_acc.Edit37KeyPress(Sender: TObject; var Key: Char);
begin
 if (length(trim(edit37.Text))=0)or (edit37.SelLength=length(edit37.Text)) then
begin
if ((key>='а') and (key<='п')) then key:=chr(ord(key)-32) else
 if ((key>='р') and (key<='я')) then key:=chr(ord(key)-32) else
  if not (((key>='А') and (key<='П'))or((key>='Р') and (key<='Я'))OR (key=#8)) then
  key:=#0;
end
else
if ((key>='A') and (key<='П')) then key:=chr(ord(key)+32) else
  if ((key>='Р') and (key<='Я')) then key:=chr(ord(key)+32) else
   if not (((key>='а') and (key<='п'))or((key>='р') and (key<='я'))OR (key=#8)) then
  key:=#0;

end;

procedure Tstud_acc.Button11Click(Sender: TObject);
 var
  WordApp,NEWDOC: OLEVariant;
  t1: OLEVariant;
  i,j,n :integer;
  Name_file,STR:PWideChar;
  NAME_FILE1:STRING;
  BIG,SMALL:INTEGER;
  f:Tprakt_progress;
  fil:olevariant;
begin
  prakt_progress:=tprakt_progress.Create(application);
  bitbtn1.Enabled:=false;
  BIG :=wdLineWidth225pt;
  SMALL :=wdLineWidth075pt;
  name_file:=PChar('c:\doc\приказы_по_'+trim(stud_fio)+'.doc');
  Repaint;
  fil:=string(name_file);
  n:= DataModule1.Table_w6.RecordCount;
  prakt_progress.show;
  prakt_progress.Label1.Caption:='Обработка '+inttostr(n)+' записей.';
  application.ProcessMessages;
 
  prakt_progress.ProgressBar1.Max:=70+n*10;

  prakt_progress.ProgressBar1.StepIt;//1


  CopyFile(PChar('c:\doc\report3.doc'),Name_file,false);

   prakt_progress.ProgressBar1.StepIt;//2
   try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;

  prakt_progress.ProgressBar1.StepIt;//3
  NEWDOC:=WordApp.Documents.Open(string(Name_file));
  T1:=NEWDOC.Tables.Item(1);

  prakt_progress.ProgressBar1.StepIt;//4
  T1.CELL(2,1).RANGE.TEXT:=trim(stud_fio);
  T1.CELL(2,2).RANGE.TEXT:='группа '+trim(stud_gr);

  prakt_progress.ProgressBar1.StepIt;//5

  for i:=1 to n do
  begin
   prakt_progress.ProgressBar1.StepIt;
   prakt_progress.Label1.Caption:='Обработка '+inttostr(n-i)+' записей.';
   application.ProcessMessages;
   prakt_progress.ProgressBar1.StepIt;
   t1.Cell(i+3,1).Range.Text:=inttostr(i);
   t1.Cell(i+3,2).Range.Text:=trim(datamodule1.Table_w6.fieldbyname('mvnum').AsString);
   t1.Cell(i+3,3).Range.Text:=trim(datamodule1.Table_w6.fieldbyname('mvdate').AsString);
   t1.Cell(i+3,4).Range.Text:=trim(datamodule1.Table_w6.fieldbyname('event').AsString);
   t1.Cell(i+3,5).Range.Text:=trim(datamodule1.Table_w6.fieldbyname('mvosn').AsString);
    DataModule1.Table_w6.Next;
   if i<n then  t1.Rows.Add();     //чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt;//7
  prakt_progress.free;

  WordApp.visible:=true;
  if WordApp.visible=true then NEWDOC.SAVEas(fil);
  if WordApp.visible=false then WordApp.Quit;
  WordApp:=unassigned;
  bitbtn1.Enabled:=True;
end;

procedure Tstud_acc.DBLookupComboBox7Enter(Sender: TObject);
begin
// DataModule1.Table46_1.Filter:='tip=2 ';
// DataModule1.Table46_1.Filtered :=True;
end;

procedure Tstud_acc.DBLookupComboBox8Enter(Sender: TObject);
begin
// DataModule1.Table46_1.Filter:='tip=3';
// DataModule1.Table46_1.Filtered :=True;
end;

procedure Tstud_acc.DBLookupComboBox9Enter(Sender: TObject);
begin
// DataModule1.Table46_1.Filter:='tip=4 and rod='+ inttostr(r1);
// DataModule1.Table46_1.Filtered :=True;
end;


procedure Tstud_acc.DBLookupComboBox7DropDown(Sender: TObject);
begin
 DataModule1.Table46_1.Filter:='tip=2 ';
 DataModule1.Table46_1.Filtered :=True;
end;

procedure Tstud_acc.DBLookupComboBox8DropDown(Sender: TObject);
begin
 DataModule1.Table46_1.Filter:='tip=3 and rod='+ inttostr(r1);
 DataModule1.Table46_1.Filtered :=True;
 //DBLookupComboBox.Font.Color :=clNone;
end;

procedure Tstud_acc.DBLookupComboBox9DropDown(Sender: TObject);
begin
DataModule1.Table46_1.Filter:='tip=4 and rod='+ inttostr(r1);
 DataModule1.Table46_1.Filtered :=True;
end;

procedure Tstud_acc.Button12Click(Sender: TObject);
begin
 Enabled:=False;
 act :=1;          //добавление нового студента
 Application.CreateForm(Tnew_stud,new_stud);
 new_stud.Show;
end;

procedure Tstud_acc.Button13Click(Sender: TObject);
begin
 Enabled:=False;   //удаление студента
 Application.CreateForm(Tdel_stud,del_stud);
 del_stud.Show;
end;

end.
