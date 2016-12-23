unit izgeog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls,db, Mask,QControls, Buttons, ExtCtrls;

type
  TFizgeog = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit5: TDBEdit;
    Shape1: TShape;
    DBEdit3: TDBEdit;
    ComboBox1: TDBComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure DBLookupComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure DBLookupComboBox5CloseUp(Sender: TObject);
    procedure DBLookupComboBox6CloseUp(Sender: TObject);
    procedure DBLookupComboBox7CloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox7Enter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure DBLookupComboBox4DropDown(Sender: TObject);
    procedure DBLookupComboBox5DropDown(Sender: TObject);
    procedure DBLookupComboBox6DropDown(Sender: TObject);
    procedure DBLookupComboBox7DropDown(Sender: TObject);
    procedure DBLookupComboBox4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox6KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox7KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fizgeog: TFizgeog;
  fil,text,dom,old1,old2,old3,old4,old5,old6,old7,old8,kva,uli:string;
  fstat,canc:boolean;
  strana,region,raion,gorod,punkt,predp:integer;
implementation
uses datamodule,spr_bazah,main, spr_sncel;
{$R *.dfm}

procedure TFizgeog.FormActivate(Sender: TObject);
begin
status:=0;
fil:=datamodule1.Table46_1.Filter;
fstat:=datamodule1.Table46_1.Filtered;


end;

procedure TFizgeog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if adrvis<>5 then
begin
if not canc then fbazah.adress else
begin
//if adrvis=1 then fbazah.Edit8.Text:='';
//if adrvis=2 then fbazah.Edit10.Text:='';
end;
end;
end;

procedure TFizgeog.DBLookupComboBox2Enter(Sender: TObject);
begin
datamodule1.qgeog2.Filter:='tip=2 and rod='+inttostr(strana);
if adrvis=3 then  datamodule1.qgeog2.Filter:='name= '+QuotedStr('Алтайский*');
datamodule1.qgeog2.Filtered:=true;
end;

procedure TFizgeog.DBLookupComboBox3Enter(Sender: TObject);
begin

datamodule1.qgeog3.Filter:='tip=3 and rod='+inttostr(region);
datamodule1.qgeog3.Filtered:=true;

end;

procedure TFizgeog.DBLookupComboBox4Enter(Sender: TObject);
begin
datamodule1.query41.Filter:='tip=4 and rod='+inttostr(region);
datamodule1.query41.Filtered:=true;
end;

procedure TFizgeog.DBLookupComboBox5Enter(Sender: TObject);
begin
datamodule1.query51.Filter:='tip=5 and rod='+inttostr(raion);
datamodule1.query51.Filtered:=true;
end;

procedure TFizgeog.DBLookupComboBox6Enter(Sender: TObject);
begin
if gorod<>0 then datamodule1.query6.Filter:='tip=6 and rod='+inttostr(gorod);
if punkt<>0 then datamodule1.query6.Filter:='tip=6 and rod='+inttostr(punkt);
if gorod+punkt=0 then  datamodule1.query6.Filter:='tip=6 and rod=0';
datamodule1.query6.Filtered:=true;
end;

procedure TFizgeog.DBLookupComboBox5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var da:boolean;
begin
 if key=46 then
begin
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
punkt:=0;uli:='';predp:=0;
end;
end;

procedure TFizgeog.DBLookupComboBox1CloseUp(Sender: TObject);
begin
if (dblookupcombobox1.Text<>text)then
begin
strana:=dblookupcombobox1.ListSource.DataSet.fieldbyname('pin').AsInteger;
sendmessage(dblookupcombobox2.Handle,wm_keydown,ord(#46),46);
sendmessage(dblookupcombobox3.Handle,wm_keydown,ord(#46),46);
sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
raion:=0;gorod:=0;punkt:=0;uli:='';predp:=0;region:=regionumol;
text:=dblookupcombobox1.Text;
if dblookupcombobox2.visible then dblookupcombobox2.setfocus;
end;
if text='' then strana:=stranaumol;
end;

procedure TFizgeog.DBLookupComboBox2CloseUp(Sender: TObject);
begin
if (dblookupcombobox2.Text<>text) then
begin

region:=dblookupcombobox2.ListSource.DataSet.fieldbyname('pin').AsInteger;
sendmessage(dblookupcombobox3.Handle,wm_keydown,ord(#46),46);
sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
raion:=0;gorod:=0;punkt:=0;uli:='';predp:=0;
text:=dblookupcombobox2.Text;
if dblookupcombobox3.visible then dblookupcombobox3.setfocus;
end;
if text='' then region:=regionumol;

end;

procedure TFizgeog.DBLookupComboBox3CloseUp(Sender: TObject);
var k:word;
begin
k:=46;
if (dblookupcombobox3.Text)<>text then
begin

raion:=dblookupcombobox3.ListSource.DataSet.fieldbyname('pin').AsInteger;
sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
gorod:=0;punkt:=0;uli:='';predp:=0;
if dblookupcombobox5.visible then dblookupcombobox5.setfocus;
if edit5.visible then edit5.setfocus;
if dblookupcombobox7.visible then dblookupcombobox7.setfocus;
end;
end;

procedure TFizgeog.DBLookupComboBox4CloseUp(Sender: TObject);
var k:word;
shi:tshiftstate;
begin
k:=46;
if (dblookupcombobox4.Text)<>text then
begin

gorod:=dblookupcombobox4.ListSource.DataSet.fieldbyname('pin').AsInteger;
sendmessage(dblookupcombobox3.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
raion:=0;punkt:=0;uli:='';predp:=0;
//if dblookupcombobox6.visible then dblookupcombobox6.setfocus;
if dbedit3.Visible then dbedit3.SetFocus;
if dblookupcombobox7.visible then dblookupcombobox7.setfocus;
if edit5.visible then edit5.setfocus;
if (not dbedit3.visible)and(not dblookupcombobox7.visible)and (not edit5.Visible)then bitbtn1.SetFocus;
end;
end;

procedure TFizgeog.DBLookupComboBox5CloseUp(Sender: TObject);
var k:word;
shi:tshiftstate;
begin
k:=46;
if (dblookupcombobox5.Text)<>text then
begin

punkt:=dblookupcombobox5.ListSource.DataSet.fieldbyname('pin').AsInteger;
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
gorod:=0;uli:='';predp:=0;
//if dblookupcombobox6.visible then dblookupcombobox6.setfocus;
if dbedit3.Visible then dbedit3.Setfocus;
if (not dbedit3.Visible)then bitbtn1.SetFocus;
end;
end;

procedure TFizgeog.DBLookupComboBox6CloseUp(Sender: TObject);
var i:integer;
begin
if ((dblookupcombobox6.Text)<>text) then
begin
uli:=dblookupcombobox6.text;
for i:=length(uli) downto 1 do
if uli[i]=' ' then break;
if copy(uli,i+1,length(uli))='аал' then combobox1.itemindex:=0;
if copy(uli,i+1,length(uli))='аллея' then combobox1.itemindex:=1;
if copy(uli,i+1,length(uli))='б-р' then combobox1.itemindex:=2;
if copy(uli,i+1,length(uli))='въезд' then combobox1.itemindex:=3;
if copy(uli,i+1,length(uli))='высел' then combobox1.itemindex:=4;
if copy(uli,i+1,length(uli))='дор' then combobox1.itemindex:=5;
if copy(uli,i+1,length(uli))='заезд' then combobox1.itemindex:=6;
if copy(uli,i+1,length(uli))='кв-л' then combobox1.itemindex:=7;
if copy(uli,i+1,length(uli))='мкр' then combobox1.itemindex:=8;
if copy(uli,i+1,length(uli))='парк' then combobox1.itemindex:=9;
if copy(uli,i+1,length(uli))='пер' then combobox1.itemindex:=10;
if copy(uli,i+1,length(uli))='переезд' then combobox1.itemindex:=11;
if copy(uli,i+1,length(uli))='пл' then combobox1.itemindex:=12;
if copy(uli,i+1,length(uli))='платф' then combobox1.itemindex:=13;
if copy(uli,i+1,length(uli))='полустанок' then combobox1.itemindex:=14;
if copy(uli,i+1,length(uli))='пр-кт' then combobox1.itemindex:=15;
if copy(uli,i+1,length(uli))='проезд' then combobox1.itemindex:=16;
if copy(uli,i+1,length(uli))='проулок' then combobox1.itemindex:=17;
if copy(uli,i+1,length(uli))='рзд' then combobox1.itemindex:=18;
if copy(uli,i+1,length(uli))='сквер' then combobox1.itemindex:=19;
if copy(uli,i+1,length(uli))='спуск' then combobox1.itemindex:=20;
if copy(uli,i+1,length(uli))='ст' then combobox1.itemindex:=21;
if copy(uli,i+1,length(uli))='стр' then combobox1.itemindex:=22;
if copy(uli,i+1,length(uli))='тер' then combobox1.itemindex:=23;
if copy(uli,i+1,length(uli))='тракт' then combobox1.itemindex:=24;
if copy(uli,i+1,length(uli))='туп' then combobox1.itemindex:=25;
if copy(uli,i+1,length(uli))='ул' then combobox1.itemindex:=26;
if copy(uli,i+1,length(uli))='ш' then combobox1.itemindex:=27;
if dbedit3.visible then dbedit3.setfocus;
dbedit3.text:=copy(uli,1,i);
end;
end;

procedure TFizgeog.DBLookupComboBox7CloseUp(Sender: TObject);
begin
if ((dblookupcombobox7.Text)<>text) then
begin
predp:=dblookupcombobox7.ListSource.DataSet.fieldbyname('pin').AsInteger;
bitbtn1.SetFocus;
end;
end;

procedure TFizgeog.FormShow(Sender: TObject);
var i:integer;
begin
if not datamodule1.qgeog1.active  then datamodule1.qgeog1.open;
if not datamodule1.qgeog2.active  then datamodule1.qgeog2.open;
if not datamodule1.qgeog3.active  then datamodule1.qgeog3.open;
if not datamodule1.query41.active then datamodule1.query41.open;
if not datamodule1.query51.active then datamodule1.query51.open;
if not datamodule1.query6.active  then datamodule1.query6.open;
if not datamodule1.query7.active  then datamodule1.query7.open;
if ((adrvis=1)or (adrvis=2)or (adrvis=4))and (datamodule1.table36_1.state=dsbrowse) then datamodule1.table36_1.edit;
if adrvis=1 then
begin
label7.visible:=false;
dblookupcombobox7.visible:=false;
label6.visible:=false;
dblookupcombobox6.visible:=false;
dbedit3.visible:=false;
combobox1.visible:=false;
shape1.visible:=false;
label8.visible:=false;
dbedit1.visible:=false;
label9.visible:=false;
dbedit2.visible:=false;
edit5.visible:=false;
fizgeog.DBLookupComboBox1.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox1.DataField:='mregion0';
fizgeog.DBLookupComboBox2.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox2.DataField:='mregion1';
fizgeog.DBLookupComboBox3.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox3.DataField:='mregion2';
fizgeog.DBLookupComboBox4.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox4.DataField:='mregion3';
fizgeog.DBLookupComboBox5.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox5.DataField:='mregion4';
old1:=datamodule1.Table36_1mregion0.Asstring;
old2:=datamodule1.Table36_1mregion1.Asstring;
old3:=datamodule1.Table36_1mregion2.Asstring;
old4:=datamodule1.Table36_1mregion3.Asstring;
old5:=datamodule1.Table36_1mregion4.Asstring;
strana:=datamodule1.Table36_1mregion0.AsInteger;
region:=datamodule1.Table36_1mregion1.AsInteger;
raion:=datamodule1.Table36_1mregion2.AsInteger;
gorod:=datamodule1.Table36_1mregion3.AsInteger;
punkt:=datamodule1.Table36_1mregion4.AsInteger;
uli:='';
dom:='';
kva:='0';
predp:=0;
if strana=0 then
begin
datamodule1.Table36_1mregion0.AsInteger:=stranaumol;
strana:=stranaumol;
end;
if region=0 then
begin
datamodule1.Table36_1mregion1.AsInteger:=regionumol;
region:=regionumol;
end;
raion:=0;
end;

if adrvis=2 then
begin
label7.visible:=false;
dblookupcombobox7.visible:=false;
fizgeog.DBLookupComboBox1.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox1.DataField:='aregion0';
fizgeog.DBLookupComboBox2.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox2.DataField:='aregion1';
fizgeog.DBLookupComboBox3.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox3.DataField:='aregion2';
fizgeog.DBLookupComboBox4.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox4.DataField:='aregion3';
fizgeog.DBLookupComboBox5.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox5.DataField:='aregion4';
ComboBox1.DataSource:=datamodule1.Data36_1;
ComboBox1.DataField:='auls';
dbedit3.datasource:=datamodule1.Data36_1;
DBedit3.DataField:='aul';
dbedit1.DataField:='adom'; dbedit2.DataField:='akva';
old1:=datamodule1.Table36_1aregion1.Asstring;
old2:=datamodule1.Table36_1aregion2.Asstring;
old3:=datamodule1.Table36_1aregion3.Asstring;
old4:=datamodule1.Table36_1aregion4.Asstring;
old5:=datamodule1.Table36_1aul.Asstring;
old6:=datamodule1.Table36_1adom.Asstring;
old7:=datamodule1.Table36_1akva.Asstring;
old7:=datamodule1.Table36_1akva.Asstring;
old8:=datamodule1.Table36_1aregion0.Asstring;;
strana:=datamodule1.Table36_1aregion0.asinteger;
region:=datamodule1.Table36_1aregion1.AsInteger;
raion:=datamodule1.Table36_1aregion2.AsInteger;
gorod:=datamodule1.Table36_1aregion3.AsInteger;
punkt:=datamodule1.Table36_1aregion4.AsInteger;
uli:=datamodule1.Table36_1aul.Asstring;
dom:=datamodule1.Table36_1adom.Asstring;
kva:=datamodule1.Table36_1akva.Asstring;
if strana=0 then
begin
strana:=stranaumol;
end;
if region=0 then
begin
datamodule1.Table36_1aregion1.AsInteger:=regionumol;
region:=regionumol;
end;
if strana=0 then
begin
datamodule1.Table36_1aregion0.AsInteger:=stranaumol;
strana:=stranaumol;
end;
predp:=0;
end;


if adrvis=3 then
begin
dblookupcombobox1.Enabled:=false;
label5.visible:=false;
dblookupcombobox5.visible:=false;
label6.visible:=false;
dblookupcombobox6.visible:=false;
combobox1.visible:=false;
dbedit3.visible:=false;
shape1.visible:=false;
label8.visible:=false;
dbedit1.visible:=false;
label9.visible:=false;
dbedit2.visible:=false;
strana:=stranaumol;
region:=regionumol;
dom:='';kva:='';
if datamodule1.table2_1.state=dsbrowse then
datamodule1.table2_1.edit;
fizgeog.DBLookupComboBox2.DataSource:=datamodule1.Data2_1;
fizgeog.DBLookupComboBox2.DataField:='celreg1';
fizgeog.DBLookupComboBox3.DataSource:=datamodule1.Data2_1;
fizgeog.DBLookupComboBox3.DataField:='celreg2';
fizgeog.DBLookupComboBox4.DataSource:=datamodule1.Data2_1;
fizgeog.DBLookupComboBox4.DataField:='celreg3';
fizgeog.DBLookupComboBox7.DataSource:=datamodule1.Data2_1;
fizgeog.DBLookupComboBox7.DataField:='celpred';
old1:=datamodule1.Table2_1celreg1.Asstring;
old2:=datamodule1.Table2_1celreg2.Asstring;
old3:=datamodule1.Table2_1celreg3.Asstring;
old4:=datamodule1.Table2_1celpred.Asstring;

raion:=datamodule1.Table2_1celreg2.AsInteger;
gorod:=datamodule1.Table2_1celreg3.AsInteger;
predp:=datamodule1.Table2_1celpred.AsInteger;;
end;

if adrvis=4 then
begin
edit5.Visible:=true;
label7.Caption:='Наименование';
dblookupcombobox7.visible:=false;
label5.visible:=false;
dblookupcombobox5.visible:=false;
label6.visible:=false;
combobox1.visible:=false;
dblookupcombobox6.visible:=false;
dbedit3.visible:=false;
shape1.visible:=false;
label8.visible:=false;
dbedit1.visible:=false;
label9.visible:=false;
dbedit2.visible:=false;
fizgeog.DBLookupComboBox1.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox1.DataField:='kemv0';
fizgeog.DBLookupComboBox2.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox2.DataField:='kemv1';
fizgeog.DBLookupComboBox3.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox3.DataField:='kemv2';
fizgeog.DBLookupComboBox4.DataSource:=datamodule1.Data36_1;
fizgeog.DBLookupComboBox4.DataField:='kemv3';
old1:=datamodule1.Table36_1kemv0.Asstring;
old2:=datamodule1.Table36_1kemv1.Asstring;
old3:=datamodule1.Table36_1kemv2.Asstring;
old4:=datamodule1.Table36_1kemv3.Asstring;
strana:=datamodule1.Table36_1kemv0.AsInteger;
region:=datamodule1.Table36_1kemv1.AsInteger;
raion:=datamodule1.Table36_1kemv2.AsInteger;
gorod:=datamodule1.Table36_1kemv3.AsInteger;
if strana=0 then
begin
datamodule1.Table36_1kemv0.AsInteger:=stranaumol;
strana:=stranaumol;
end;
if region=0 then
begin
datamodule1.Table36_1kemv1.AsInteger:=regionumol;
region:=regionumol;
end;
end;

if adrvis=5 then
begin
if datamodule1.table19_1.state=dsbrowse then datamodule1.table19_1.edit;
label7.visible:=false;
dblookupcombobox7.visible:=false;
fizgeog.DBLookupComboBox1.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox1.DataField:='mest0';
fizgeog.DBLookupComboBox2.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox2.DataField:='mest1';
fizgeog.DBLookupComboBox3.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox3.DataField:='mest2';
fizgeog.DBLookupComboBox4.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox4.DataField:='mest3';
fizgeog.DBLookupComboBox5.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox5.DataField:='mest4';
old1:=datamodule1.table19_1mest0.Asstring;
old2:=datamodule1.table19_1mest1.Asstring;
old3:=datamodule1.table19_1mest2.Asstring;
old4:=datamodule1.table19_1mest3.Asstring;
old5:=datamodule1.table19_1mest4.Asstring;
combobox1.visible:=false;
label6.visible:=false;
dblookupcombobox6.visible:=false;
dbedit3.visible:=false;
shape1.visible:=false;
label8.visible:=false;
dbedit1.visible:=false;
label9.visible:=false;
dbedit2.visible:=false;
strana:=datamodule1.table19_1mest0.AsInteger;
region:=datamodule1.table19_1mest1.AsInteger;
raion:=datamodule1.table19_1mest2.AsInteger;
gorod:=datamodule1.table19_1mest3.AsInteger;
punkt:=datamodule1.table19_1mest4.AsInteger;
uli:='';
dom:='';
kva:='';
predp:=0;
if strana=0 then
begin
datamodule1.table19_1mest0.AsInteger:=stranaumol;
strana:=stranaumol;
end;
if region=0 then
begin
datamodule1.table19_1mest1.AsInteger:=regionumol;
region:=regionumol;
end;
end;

if adrvis=6 then
begin
if datamodule1.table19_1.state=dsbrowse then datamodule1.table19_1.edit;
label7.visible:=false;
dblookupcombobox7.visible:=false;
fizgeog.DBLookupComboBox1.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox1.DataField:='mest0';
fizgeog.DBLookupComboBox2.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox2.DataField:='mest1';
fizgeog.DBLookupComboBox3.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox3.DataField:='mest2';
fizgeog.DBLookupComboBox4.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox4.DataField:='mest3';
fizgeog.DBLookupComboBox5.DataSource:=datamodule1.Data19_1;
fizgeog.DBLookupComboBox5.DataField:='mest4';
old1:=datamodule1.table19_1.filter;
if datamodule1.table19_1.filtered then old2:='1' else old2:='0';
label6.visible:=false;
dblookupcombobox6.visible:=false;
dbedit3.visible:=false;
combobox1.visible:=false;
shape1.visible:=false;
label8.visible:=false;
dbedit1.visible:=false;
label9.visible:=false;
dbedit2.visible:=false;
strana:=datamodule1.table19_1mest0.AsInteger;
region:=datamodule1.table19_1mest1.AsInteger;
raion:=datamodule1.table19_1mest2.AsInteger;
gorod:=datamodule1.table19_1mest3.AsInteger;
punkt:=datamodule1.table19_1mest4.AsInteger;
uli:='';
dom:='';
kva:='';
predp:=0;
if strana=0 then
begin
datamodule1.table19_1mest0.AsInteger:=stranaumol;
strana:=stranaumol;
end;
if region=0 then
begin
datamodule1.table19_1mest1.AsInteger:=regionumol;
region:=regionumol;
end;
end;


end;

procedure TFizgeog.DBLookupComboBox7Enter(Sender: TObject);
begin
if gorod<>0 then datamodule1.query7.Filter:='tip=7 and rod='+inttostr(gorod);
if punkt<>0 then datamodule1.query7.Filter:='tip=7 and rod='+inttostr(punkt);
if (punkt=0)and (raion<>0) then datamodule1.query7.Filter:='tip=7 and rod='+inttostr(raion);
datamodule1.query7.Filtered:=true;
end;

procedure TFizgeog.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var ind,fil,stro:string;
stat:boolean;
begin
stradres:='';
if not canc then
begin
if (trim(dblookupcombobox1.Text)<>'') then stradres:=stradres+' '+dblookupcombobox1.Text;
if (trim(dblookupcombobox2.Text)<>'') then begin if stradres=''then stradres:=stradres+' '+dblookupcombobox2.Text else stradres:=stradres+' , '+dblookupcombobox2.Text;end;
if (trim(dblookupcombobox3.Text)<>'') then begin if stradres=''then stradres:=stradres+' '+dblookupcombobox3.Text else stradres:=stradres+' , '+dblookupcombobox3.Text;end;
if (trim(dblookupcombobox4.Text)<>'') then begin if stradres=''then stradres:=stradres+' '+dblookupcombobox4.Text else stradres:=stradres+' , '+dblookupcombobox4.Text;end;
if (trim(dblookupcombobox5.Text)<>'') then begin if stradres=''then stradres:=stradres+' '+dblookupcombobox5.Text else stradres:=stradres+' , '+dblookupcombobox5.Text;end;
if (trim(dbedit3.Text)<>'') then begin if stradres=''then stradres:=stradres+' '+combobox1.Text+' '+dbedit3.Text else stradres:=stradres+' , '+combobox1.Text+' '+dbedit3.Text;end;
if (trim(dblookupcombobox7.Text)<>'') then begin if stradres=''then stradres:=stradres+' '+dblookupcombobox7.Text else stradres:=stradres+' , '+dblookupcombobox7.Text;end;
if (trim(dbedit1.Text)<>'') then begin if stradres=''then stradres:=stradres+' '+dbedit1.Text else stradres:=stradres+' , '+dbedit1.Text;end;
if (trim(dbedit2.Text)<>'') then begin if stradres=''then stradres:=stradres+' кв.'+dbedit2.Text else stradres:=stradres+' ,кв.'+dbedit2.Text;end;
end;

if ((adrvis=1) or (adrvis=2))and(((datamodule1.Table36_1.State=dsinsert)or(datamodule1.Table36_1.State=dsedit))) then
begin

if (adrvis=1) and (not canc) then
begin
if strana+region+raion+gorod+punkt=0 then begin showmessage('Введите адресные данные');canclose:=false; exit;end else canclose:=true;
if strana=0 then strana:=stranaumol;
if (region=0)AND(strana=stranaumol)  then region:=regionumol;
if trim(dbedit1.Text)<>'' then
dom:=(dbedit1.Text) else dom:='';
//if uli=0 then begin showmessage('Выберите улицу');canclose:=false; exit;end else canclose:=true;
//if dom=0 then begin showmessage('Введите номер дома');canclose:=false; exit;end else canclose:=true;
if gorod+punkt=0 then begin showmessage('Выберите город или населенный пункт');canclose:=false; exit;end else canclose:=true;
if adrvis=1 then fbazah.Edit8.Text:=stradres;
datamodule1.Table36_1mregion0.AsInteger:=strana;
datamodule1.Table36_1mregion1.AsInteger:=region;
datamodule1.Table36_1mregion2.AsInteger:=raion;
datamodule1.Table36_1mregion3.AsInteger:=gorod;
datamodule1.Table36_1mregion4.AsInteger:=punkt;
end;

if (adrvis=2)and(not canc) then
begin

strana:=stranaumol;
if region+raion+gorod+punkt=0 then begin showmessage('Введите адресные данные');canclose:=false; exit;end else canclose:=true;
if region=0 then region:=regionumol;
if trim(dbedit1.Text)<>'' then
dom:=(dbedit1.Text) else dom:='';
if trim(dbedit2.Text)<>'' then
kva:=(dbedit2.Text) else kva:='';
if gorod+punkt=0 then begin showmessage('Выберите город или населенный пункт');canclose:=false; exit;end else canclose:=true;
if adrvis=2 then fbazah.Edit10.Text:=stradres;
datamodule1.Table36_1aregion1.AsInteger:=region;
datamodule1.Table36_1aregion2.AsInteger:=raion;
datamodule1.Table36_1aregion3.AsInteger:=gorod;
datamodule1.Table36_1aregion4.AsInteger:=punkt;
datamodule1.Table36_1aul.Asstring:=dbedit3.Text;
datamodule1.Table36_1auls.Asstring:=combobox1.Text;
datamodule1.Table36_1adom.Asstring:=dom;
if kva<>'' then datamodule1.Table36_1akva.Asstring:=kva;
end;
end;
if (((datamodule1.Table36_1.State=dsinsert)or(datamodule1.Table36_1.State=dsedit))) then
begin
if (adrvis=4) and (not canc) then
begin
if strana+region+raion+gorod=0 then begin showmessage('Введите адресные данные');canclose:=false; exit;end else canclose:=true;
if strana=0 then strana:=stranaumol;
if (region=0)AND(strana=stranaumol)  then region:=regionumol;
//if raion+gorod=0 then begin showmessage('Выберите город или район');canclose:=false; exit;end else canclose:=true;
if adrvis=4 then fbazah.Edit5.Text:=stradres+' ,'+edit5.Text;
datamodule1.Table36_1kemv0.AsInteger:=strana;
datamodule1.Table36_1kemv1.AsInteger:=region;
datamodule1.Table36_1kemv2.AsInteger:=raion;
datamodule1.Table36_1kemv3.AsInteger:=gorod;
end;
end;



if (adrvis=3)and(not canc)and ((datamodule1.Table2_1.State=dsinsert)or(datamodule1.Table2_1.State=dsedit)) then
begin
if region+raion+gorod+punkt+predp=0 then begin showmessage('Введите адресные данные');canclose:=false; exit;end else canclose:=true;
if region=0 then region:=regionumol;
//if (gorod=0) then begin showmessage('Выберите город или населенный пункт');canclose:=false; exit;end else canclose:=true;
if predp=0 then begin showmessage('Выберите предприятие,выдавшее целевое направление');canclose:=false; exit;end else canclose:=true;
datamodule1.Table2_1celreg1.AsInteger:=region;
datamodule1.Table2_1celreg2.AsInteger:=raion;
datamodule1.Table2_1celreg3.AsInteger:=gorod;
datamodule1.Table2_1celpred.AsInteger:=predp;
try
datamodule1.Table2_1.Post;
except
datamodule1.Table2_1.Close;
datamodule1.Table2_1.Open;
end;
datamodule1.Table2_1.Refresh;
end;
if adrvis=3 then
begin
if fizgeog<>nil then fizgeog:=nil;
datamodule1.Table2_1.Refresh;
fil:=datamodule1.Table46_1.Filter;
stat:=datamodule1.Table46_1.Filtered;
datamodule1.Table46_1.Filter:='';
datamodule1.Table46_1.Filtered:=false;
datamodule1.Table46_1.Refresh;
datamodule1.Table2_1.Refresh;
end;

if (adrvis=5) and (not canc) then
begin
if strana+region+raion+gorod+punkt=0 then begin showmessage('Введите адресные данные');canclose:=false; exit;end else canclose:=true;
if strana=0 then strana:=stranaumol;
if (region=0)AND(strana=stranaumol)  then region:=regionumol;
if gorod+punkt=0 then begin showmessage('Выберите город или населенный пункт');canclose:=false; exit;end else canclose:=true;
datamodule1.table19_1mest0.AsInteger:=strana;
datamodule1.table19_1mest1.AsInteger:=region;
datamodule1.table19_1mest2.AsInteger:=raion;
datamodule1.table19_1mest3.AsInteger:=gorod;
datamodule1.table19_1mest4.AsInteger:=punkt;
end;

if (adrvis=6) and (not canc) then
begin
stro:='';
if trim(dblookupcombobox1.Text)=''  then strana:=0;
if trim(dblookupcombobox2.Text)=''  then region:=0;
if trim(dblookupcombobox3.Text)=''  then raion:=0;
if trim(dblookupcombobox4.Text)=''  then gorod:=0;
if trim(dblookupcombobox5.Text)=''  then punkt:=0;
if strana+region+raion+gorod+punkt=0 then begin showmessage('Введите адресные данные');canclose:=false; exit;end else canclose:=true;
if strana=0 then strana:=stranaumol;
if (region=0)AND(strana=stranaumol)  then region:=regionumol;
if strana<>0 then stro:='mest0='+inttostr(strana);
if region<>0 then stro:=stro+' and mest1='+inttostr(region);
if raion<>0 then  stro:=stro+' and mest2='+inttostr(raion);
if gorod<>0 then stro:=stro+' and mest3='+inttostr(gorod);
if punkt<>0  then stro:=stro+' and mest4='+inttostr(punkt);
datamodule1.table19_1.CANCEL;
if stro<>'' then
begin
datamodule1.table19_1.filter:=stro;
datamodule1.table19_1.filtered:=true;
end;

end;

fizgeog:=nil;
end;

procedure TFizgeog.FormCreate(Sender: TObject);
begin
canc:=false;
end;

procedure TFizgeog.DBLookupComboBox1DropDown(Sender: TObject);
begin
text:=dblookupcombobox1.Text;
end;

procedure TFizgeog.DBLookupComboBox2DropDown(Sender: TObject);
begin
text:=dblookupcombobox2.Text;
end;

procedure TFizgeog.DBLookupComboBox3DropDown(Sender: TObject);
begin
text:=dblookupcombobox3.Text;
end;

procedure TFizgeog.DBLookupComboBox4DropDown(Sender: TObject);
begin
text:=dblookupcombobox4.Text;
end;

procedure TFizgeog.DBLookupComboBox5DropDown(Sender: TObject);
begin
text:=dblookupcombobox5.Text;
end;

procedure TFizgeog.DBLookupComboBox6DropDown(Sender: TObject);
begin
text:=dblookupcombobox6.Text;
end;

procedure TFizgeog.DBLookupComboBox7DropDown(Sender: TObject);
begin
text:=dblookupcombobox7.Text;
end;

procedure TFizgeog.DBLookupComboBox4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
begin
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
raion:=0;gorod:=0;punkt:=0;uli:='';predp:=0;
end
else
fizgeog.DBLookupComboBox4CloseUp(nil);
end;

procedure TFizgeog.DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
begin
strana:=stranaumol;//по умолчанию Россия
sendmessage(dblookupcombobox2.Handle,wm_keydown,ord(#46),46);
sendmessage(dblookupcombobox3.Handle,wm_keydown,ord(#46),46);
sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
raion:=0;gorod:=0;punkt:=0;uli:='';predp:=0;region:=0;
end
else
fizgeog.DBLookupComboBox1CloseUp(nil);
end;

procedure TFizgeog.DBLookupComboBox2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
begin
region:=0;
sendmessage(dblookupcombobox3.Handle,wm_keydown,ord(#46),46);
sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
raion:=0;gorod:=0;punkt:=0;uli:='';predp:=0;
end
else
fizgeog.DBLookupComboBox2CloseUp(nil);
end;

procedure TFizgeog.DBLookupComboBox3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
begin
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
punkt:=0;uli:='';predp:=0;
raion:=0;
end
else
fizgeog.DBLookupComboBox3CloseUp(nil);
end;

procedure TFizgeog.DBLookupComboBox6KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
begin
uli:='';
end
else
fizgeog.DBLookupComboBox6CloseUp(nil);
end;

procedure TFizgeog.DBLookupComboBox7KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
begin
predp:=0;
end
else
fizgeog.DBLookupComboBox7CloseUp(nil);
end;

procedure TFizgeog.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin dbedit2.SetFocus;key:=#0; end;
end;

procedure TFizgeog.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
fizgeog.DBLookupComboBox2CloseUp(nil);
end;

procedure TFizgeog.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
fizgeog.DBLookupComboBox1CloseUp(nil);
end;

procedure TFizgeog.DBLookupComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
fizgeog.DBLookupComboBox3CloseUp(nil);
end;

procedure TFizgeog.DBLookupComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
fizgeog.DBLookupComboBox4CloseUp(nil);
end;

procedure TFizgeog.DBLookupComboBox5KeyPress(Sender: TObject;
  var Key: Char);
begin
fizgeog.DBLookupComboBox5CloseUp(nil);
end;

procedure TFizgeog.BitBtn1Click(Sender: TObject);
begin
canc:=false;
close;
end;

procedure TFizgeog.BitBtn2Click(Sender: TObject);
begin
canc:=true;
if adrvis=1 then
begin
datamodule1.Table36_1mregion0.Asstring:=old1;
datamodule1.Table36_1mregion1.Asstring:=old2;
datamodule1.Table36_1mregion2.Asstring:=old3;
datamodule1.Table36_1mregion3.Asstring:=old4;
datamodule1.Table36_1mregion4.Asstring:=old5;
end;
if adrvis=2 then
begin
datamodule1.Table36_1aregion0.Asstring:=old8;
datamodule1.Table36_1aregion1.Asstring:=old1;
datamodule1.Table36_1aregion2.Asstring:=old2;
datamodule1.Table36_1aregion3.Asstring:=old3;
datamodule1.Table36_1aregion4.Asstring:=old4;
datamodule1.Table36_1aul.Asstring:=old5;
datamodule1.Table36_1adom.Asstring:=old6;
datamodule1.Table36_1akva.Asstring:=old7;
end;
if adrvis=3 then
begin
datamodule1.Table2_1celreg1.Asstring:=old1;
datamodule1.Table2_1celreg2.Asstring:=old2;
datamodule1.Table2_1celreg3.Asstring:=old3;
datamodule1.Table2_1celpred.Asstring:=old4;
end;
if adrvis=4 then
begin
datamodule1.Table36_1kemv0.Asstring:=old1;
datamodule1.Table36_1kemv1.Asstring:=old2;
datamodule1.Table36_1kemv2.Asstring:=old3;
datamodule1.Table36_1kemv3.Asstring:=old4;
end;
if adrvis=5 then
begin
datamodule1.Table19_1mest0.Asstring:=old1;
datamodule1.Table19_1mest1.Asstring:=old2;
datamodule1.Table19_1mest2.Asstring:=old3;
datamodule1.Table19_1mest3.Asstring:=old4;
datamodule1.Table19_1mest4.Asstring:=old5;
end;
if adrvis=6 then
begin
datamodule1.table19_1.cancel;
datamodule1.table19_1.filter:=old1;
if old2='1' then datamodule1.table19_1.filtered:=true else  datamodule1.table19_1.filtered:=false;
end;
close;
end;

procedure TFizgeog.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin key:=#0; bitbtn1.SetFocus end;
end;

procedure TFizgeog.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin key:=#0; bitbtn1.SetFocus end;
end;

procedure TFizgeog.DBEdit3KeyPress(Sender: TObject; var Key: Char);
var st:string;
begin
if (key=#13)and(dbedit1.Visible) then  dbedit1.SetFocus;
st:=dbedit3.Text;
if (length(trim(st))=0)or (dbedit3.SelLength=length(st))or (st[length(st)]=' ')or (st[length(st)]='.') then
begin

if ((key=' ')) and ((st[length(st)]=' ')) then key:=#0;
if ((key>='а') and (key<='п')) then key:=chr(ord(key)-32) else
 if ((key>='р') and (key<='я')) then key:=chr(ord(key)-32) else
  if not (((key>='А') and (key<='П'))or((key>='Р') and (key<='Я'))OR (key=#8)or (key=' ')or (key='.')or (key in['0'..'9'])) then
  key:=#0;
end
else
begin

if ((key=' ')) and ((st[length(st)]=' ')) then key:=#0;
if ((key>='А') and (key<='П')) then key:=chr(ord(key)+32) else
  if ((key>='Р') and (key<='Я')) then key:=chr(ord(key)+32) else
   if not (((key>='а') and (key<='п'))or((key>='р') and (key<='я'))OR (key=#8)or (key=' ')or (key in['0'..'9'])) then
  key:=#0;
end;
end;


procedure TFizgeog.ComboBox1Change(Sender: TObject);
begin
dbedit3.setfocus;
end;

end.
