unit stud_acc3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, StdCtrls, Mask, DBCtrls, ExtCtrls,Buttons,DB,DateUtils;

type
  Tfilgeo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure DBLookupComboBox4DropDown(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  filgeo: Tfilgeo;
  strana,region,raion,gorod,punkt:integer;
implementation
  uses main1,stud_acc1 ;
{$R *.dfm}

procedure Tfilgeo.DBLookupComboBox1CloseUp(Sender: TObject);
begin
 if (dblookupcombobox1.Text<>text)then
begin
strana:=dblookupcombobox1.ListSource.DataSet.fieldbyname('pin').AsInteger;
raion:=0;gorod:=0;punkt:=0;region:=0;
text:=dblookupcombobox1.Text;
end;
if text='' then strana:=1;
end;

procedure Tfilgeo.DBLookupComboBox1DropDown(Sender: TObject);
begin
 text:=dblookupcombobox1.Text;
end;

procedure Tfilgeo.DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
 filgeo.DBLookupComboBox1CloseUp(nil);
end;

procedure Tfilgeo.DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=46 then
begin
strana:=1;//по умолчанию Россия
//sendmessage(dblookupcombobox2.Handle,wm_keydown,ord(#46),46);
//sendmessage(dblookupcombobox3.Handle,wm_keydown,ord(#46),46);
//sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
region:=0;raion:=0;gorod:=0;punkt:=0;
end
else
filgeo.DBLookupComboBox1CloseUp(nil);
end;

procedure Tfilgeo.FormCreate(Sender: TObject);
begin
 DataModule1.geography.open;
end;

procedure Tfilgeo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.geography.close;
 // DataModule1.geography.filtred:=false;
  stud_acc.Enabled:=true;
end;

procedure Tfilgeo.DBLookupComboBox2CloseUp(Sender: TObject);
begin
 if (dblookupcombobox2.Text<>text) then
begin

region:=dblookupcombobox2.ListSource.DataSet.fieldbyname('pin').AsInteger;
sendmessage(dblookupcombobox3.Handle,wm_keydown,ord(#46),46);
sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
raion:=0;gorod:=0;
text:=dblookupcombobox2.Text;
if dblookupcombobox3.visible then dblookupcombobox3.setfocus;
end;
if text='' then region:=36;
end;

procedure Tfilgeo.DBLookupComboBox2DropDown(Sender: TObject);
begin
 text:=dblookupcombobox2.Text;
end;

procedure Tfilgeo.DBLookupComboBox2Enter(Sender: TObject);
begin
// datamodule1.qgeog2.Filter:='tip=2 and rod='+inttostr(strana);
//if adrvis=3 then  datamodule1.qgeog2.Filter:='name= '+QuotedStr('Алтайский*');
//datamodule1.qgeog2.Filtered:=true;
end;

procedure Tfilgeo.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
//fizgeog.DBLookupComboBox2CloseUp(nil);
end;

procedure Tfilgeo.DBLookupComboBox2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=46 then
begin
region:=0;
sendmessage(dblookupcombobox3.Handle,wm_keydown,ord(#46),46);
sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
raion:=0;gorod:=0;punkt:=0;
end
else
//fizgeog.DBLookupComboBox2CloseUp(nil);
end;

procedure Tfilgeo.DBLookupComboBox3CloseUp(Sender: TObject);
begin
// k:=46;
if (dblookupcombobox3.Text)<>text then
begin

raion:=dblookupcombobox3.ListSource.DataSet.fieldbyname('pin').AsInteger;
sendmessage(dblookupcombobox4.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
gorod:=0;punkt:=0;
if dblookupcombobox5.visible then dblookupcombobox5.setfocus;
//if edit5.visible then edit5.setfocus;
//if dblookupcombobox7.visible then dblookupcombobox7.setfocus;
end;
end;

procedure Tfilgeo.DBLookupComboBox3DropDown(Sender: TObject);
begin
 text:=dblookupcombobox3.Text;
end;

procedure Tfilgeo.DBLookupComboBox3Enter(Sender: TObject);
begin
// datamodule1.qgeog3.Filter:='tip=3 and rod='+inttostr(region);
//datamodule1.qgeog3.Filtered:=true;
end;

procedure Tfilgeo.DBLookupComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
 //fizgeog.DBLookupComboBox3CloseUp(nil);
end;

procedure Tfilgeo.DBLookupComboBox3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=46 then
begin
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
punkt:=0;
raion:=0;
end
else
//fizgeog.DBLookupComboBox3CloseUp(nil);
end;

procedure Tfilgeo.DBLookupComboBox4CloseUp(Sender: TObject);
begin
// k:=46;
if (dblookupcombobox4.Text)<>text then
begin

gorod:=dblookupcombobox4.ListSource.DataSet.fieldbyname('pin').AsInteger;
sendmessage(dblookupcombobox3.Handle,wm_keydown,ord(#46),46);
if dblookupcombobox5.visible then sendmessage(dblookupcombobox5.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
//raion:=0;punkt:=0;uli:='';predp:=0;
//if dblookupcombobox6.visible then dblookupcombobox6.setfocus;
//if dbedit3.Visible then dbedit3.SetFocus;
//if dblookupcombobox7.visible then dblookupcombobox7.setfocus;
//if edit5.visible then edit5.setfocus;
//if (not dbedit3.visible)and(not dblookupcombobox7.visible)and (not edit5.Visible)then bitbtn1.SetFocus;
end;
end;

procedure Tfilgeo.DBLookupComboBox4DropDown(Sender: TObject);
begin
 text:=dblookupcombobox4.Text;
end;

procedure Tfilgeo.DBLookupComboBox4Enter(Sender: TObject);
begin
 //datamodule1.query41.Filter:='tip=4 and rod='+inttostr(region);
//datamodule1.query41.Filtered:=true;
end;

procedure Tfilgeo.DBLookupComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
//fizgeog.DBLookupComboBox4CloseUp(nil);
end;

procedure Tfilgeo.DBLookupComboBox4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=46 then
begin
//if dblookupcombobox6.visible then sendmessage(dblookupcombobox6.Handle,wm_keydown,ord(#46),46);
//if dblookupcombobox7.visible then sendmessage(dblookupcombobox7.Handle,wm_keydown,ord(#46),46);
raion:=0;gorod:=0;punkt:=0;
end
else
//fizgeog.DBLookupComboBox4CloseUp(nil);
end;

end.
