unit stud_moves2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, StdCtrls, Mask, DBCtrls, ExtCtrls,Buttons, Spin,
  DB,DateUtils;

type
  Tnew_stud = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    SpinEdit1: TSpinEdit;
    Label12: TLabel;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  new_stud: Tnew_stud;
  gruppa,fak,fo,spec,kurs :integer; // новые
  f_spec,f_gr : string; //фильтры для выбора
  sost,status, event : integer;
  mov_pin,pinacc : longint;  //pin приказа
  sql1,sql2,sql3,osn : string;
implementation
 uses main1,stud_acc1,umy_proc;
{$R *.dfm}

procedure Tnew_stud.FormActivate(Sender: TObject);
begin
 DataModule1.Table_w34.Filter:='pinrod=0 and priz=''1''';
  DataModule1.Table_w34.Filtered:=True;
  DataModule1.Table_w26.Filter:='priz=''1''';
  DataModule1.Table_w26.Filtered:=True;
end;

procedure Tnew_stud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.Table_w33.Close;
  DataModule1.Table_w34.Close;
  DataModule1.Table_w36.Close;
  DataModule1.Table_w26.Filtered:=False;
  DataModule1.Table_w33.Filtered:=False;
  DataModule1.Table_w34.Filtered:=False;
  DataModule1.Table_w36.Filtered:=False;
  DataModule1.Table_w37.Filtered:=False;
  stud_acc.Enabled:=true;
end;

procedure Tnew_stud.FormCreate(Sender: TObject);
begin
 DataModule1.Table_w33.Open;
 DataModule1.Table_w34.Open;
 DataModule1.Table_w36.Open;
end;

procedure Tnew_stud.DBLookupComboBox1Click(Sender: TObject);
begin
  event := Datamodule1.Table_w26.fieldbyname('pin').AsInteger;
  sost:= Datamodule1.Table_w26.fieldbyname('spsost').AsInteger;
  status := Datamodule1.Table_w26.fieldbyname('spstatus').AsInteger;
//  DataModule1.Table_w6.Refresh;
end;

procedure Tnew_stud.DBLookupComboBox2Click(Sender: TObject);
begin
 fak := DataModule1.Table_w34.fieldByname('pin').AsInteger;
 Datamodule1.Table_w33.Filter :='priz=''1''';
 Datamodule1.Table_w33.Filtered:=True;
// DataModule1.Table_w1.Refresh;
end;

procedure Tnew_stud.DBLookupComboBox3Click(Sender: TObject);
begin
 fo := DataModule1.Table_w33.fieldByname('pin').AsInteger;
 f_spec :='priz=''1'' and spfak='+inttostr(fak)+' and spotd='+inttostr(fo);
 Datamodule1.Table_w36.Filter :=f_spec;
 Datamodule1.Table_w36.Filtered:=True;
// DataModule1.Table_w1.Refresh;
end;

procedure Tnew_stud.DBLookupComboBox4Click(Sender: TObject);
begin
 spec := DataModule1.Table_w36.fieldByname('spspec').AsInteger;
 f_gr :='priz=''1'' and spfak='+inttostr(fak)+' and spotd='+inttostr(fo)+' and spspec='+inttostr(spec);
 Datamodule1.Table_w37.Filter :=f_gr;
 Datamodule1.Table_w37.Filtered:=True;
// DataModule1.Table_w1.Refresh;
end;

procedure Tnew_stud.DBLookupComboBox5Click(Sender: TObject);
begin
 gruppa :=DataModule1.Table_w37.fieldbyname('pin').AsInteger;
// DataModule1.Table_w1.Refresh;
end;

procedure Tnew_stud.SpinEdit1Change(Sender: TObject);
begin
 kurs := spinedit1.Value;
end;

procedure Tnew_stud.BitBtn1Click(Sender: TObject);
var ss :string[5];
    s3: string;
    sl:integer;
begin
  if  Edit1.Text = '' then
  begin
   showmessage('Заполните поле Номер приказа !');
   exit;
  end;
  if  Edit3.Text = '' then
  begin
   showmessage('Заполните поле Дата приказа !');
   exit;
  end;
  if  Edit2.Text = '' then
  begin
   showmessage('Заполните поле Фамилия !');
   exit;
  end;
  if  Edit5.Text = '' then
  begin
   showmessage('Заполните поле Имя !');
   exit;
  end;
  if  Edit6.Text = '' then
  begin
   showmessage('Заполните поле Отчество !');
   exit;
  end;

  if trim(Edit3.Text)<> '' then
   begin
    str_d:=''''+inttostr(yearof(strtodate(Edit3.text)))+'-'+ inttostr(monthof(strtodate(Edit3.text)))+'-'+inttostr(dayof(strtodate(Edit3.text)))+'''';
    ss:=inttostr(yearof(strtodate(Edit3.text)))
   end
  else
   begin
    str_d :='Null';
    ss :=inttostr(yearof(date));
   end;
  If Edit4.Text ='' then osn :='Null' else osn :=''''+Edit4.Text+'''';
  if CheckBox1.Checked=True then sl:=1 else sl:=0;
  DataModule1.table_w1.Filtered:=False;
  DataModule1.Table_w1.IndexName :='PRIMARY';
  DataModule1.Query1.SQL.Clear;
  s1 :='insert  into acc (fam,name,vname,spgrup,spotd,spfak,spspec,kurs,spsost,spstatus,godpr,priz,pro,deperson,sl) values ('+''''+trim(Edit2.text)+''''+','+''''+trim(Edit5.text)+'''';
  s2 :=','+''''+trim(Edit6.text)+''''+','+inttostr(gruppa)+','+inttostr(fo)+','+inttostr(fak)+','+inttostr(spec)+',1,'+inttostr(sost)+','+inttostr(status)+','+ss+','+''''+'*'+''''+',';
  s3 :=''''+'00'+''''+',0,'+inttostr(sl)+')';
  DataModule1.Query1.SQL.Add(s1+s2+s3);
  DataModule1.Query1.ExecSQL;        //добавляем в acc
  DataModule1.table_w1.Refresh;

  DataModule1.table_w1.Last;
  pinacc :=  datamodule1.table_w1.FieldByName('pin').AsInteger;
  DataModule1.table_w1.Filtered:=True;
  DataModule1.Query1.SQL.Clear;
  sql1 :='insert into moves  (acc,spevent,mvnum,mvdate,mvosn,spgrup,spotd,spfak,spspec,kurs) ';
  sql2 :='values ('+inttostr(pinacc)+','+inttostr(event)+','+''''+Edit1.Text+''''+','+str_d+','+osn;
  sql3 :=','+ inttostr(gruppa)+','+inttostr(fo)+','+inttostr(fak)+','+inttostr(spec)+','+ inttostr(kurs)+')';
  DataModule1.Query1.SQL.Add(sql1+sql2+sql3);
  DataModule1.Query1.ExecSQL;        //добавляем в acc
  DataModule1.table_w6.Refresh;
    ////////////////////////////////////////
//************ Из ПЛАТНИКОВ ***********//
 nachislenie(stud_pin,'notdel');
/////////////////////////////////////////
  close;
end;

procedure Tnew_stud.BitBtn2Click(Sender: TObject);
begin
 close;
end;

end.
