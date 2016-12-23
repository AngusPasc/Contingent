unit spr_gorod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ToolWin, ImgList,db;

type
  Tfgorod = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    Tree1: TTreeView;
    Tree: TTreeView;
    procedure appexception(sender:tobject;e:exception);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton8Click(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeChange(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgorod: Tfgorod;
  state : integer;
  otmena : boolean;
implementation
uses datamodule,main1,password1;
{$R *.dfm}
procedure tfgorod.appexception(sender:tobject;e:exception);
begin
if trim(dbgrid1.Fields[0].DisplayText)='' then begin showmessage('Введите наименование района'); exit;end;
if (trim(dbgrid1.Fields[0].DisplayText)<>'') and (e<>nil) then
begin application.ShowException(e);application.Terminate; end;
end;

procedure Tfgorod.ToolButton1Click(Sender: TObject);
var i:1..73;
begin
state:=1;
if (datamodule1.Table46_1.State=dsedit)or (datamodule1.Table46_1.State=dsinsert) then datamodule1.Table46_1.Refresh;
datamodule1.Table46_1.Append;

end;

procedure Tfgorod.ToolButton3Click(Sender: TObject);
begin
state:=2;
if (datamodule1.Table46_1.State=dsedit)or (datamodule1.Table46_1.State=dsinsert) then datamodule1.Table46_1.Refresh;
datamodule1.Table46_1.Edit;

end;

procedure Tfgorod.ToolButton5Click(Sender: TObject);
var i:1..73;
begin
if messagedlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbyes,mbno],0)=mryes then
begin
//otmena:=false;
//if upzv=0 then
tree.Items.Item[nomintree].Delete;
for i:=1 to dlinval do begin newval[i]:='П.У.';oldval[i]:=dbgrid1.Fields[i-1].AsString; end;
datch:=date;timch:=time;
if not datamodule1.Table46_1.Eof then
begin
if (datamodule1.Table46_1.State=dsedit)or (datamodule1.Table46_1.State=dsinsert) then datamodule1.Table46_1.Refresh;
datamodule1.Table46_1.Edit;
datamodule1.Table46_1.FieldByName('priz').AsString:='0';
mozno:=false;
datamodule1.Table46_1.Post;
end;

//Delete(tree.Items.Item[nomintree]);
end;
end;

procedure Tfgorod.BitBtn1Click(Sender: TObject);
var bilo:boolean;
rod:word;
begin
bilo:=false;
if datamodule1.Table46_1.State=dsinsert then bilo:=true;
if (datamodule1.Table46_1.State=dsinsert)or (datamodule1.Table46_1.State=dsedit) then
begin
try
datamodule1.Table46_1.Post;
rod:=datamodule1.Table46_1pin.AsInteger;
if bilo then
begin
datamodule1.Table46_1.Append;
datamodule1.Table46_1name.AsString:='Администрация';
datamodule1.Table46_1tip.AsInteger:=7;
datamodule1.Table46_1rod.AsInteger:=rod;
datamodule1.Table46_1priz.AsString:='1';
MOZNO:=FALSE;
datamodule1.Table46_1.Post;
end;

except
if (trim(dbgrid1.Fields[0].DisplayText)<>'') then
begin
datamodule1.Table46_1.Close;
datamodule1.Table46_1.Open;
end;
end;
end;
datamodule1.Table46_1.Refresh;
toolbutton1.Enabled:=true;
toolbutton3.Enabled:=true;
toolbutton5.Enabled:=true;
toolbutton8.Enabled:=true;
toolbutton7.Enabled:=true;

end;

procedure Tfgorod.ToolButton7Click(Sender: TObject);
var st,ind:string;
da,fil:boolean;
pin:word;
i:1..73;
begin
st:='';
da:=false;
pin:=datamodule1.Table46_1.FieldByName('pin').AsInteger;
for i:=1 to dlinval do begin newval[i]:='Ф.У.';oldval[i]:=dbgrid1.Fields[i-1].AsString; end;
if messagedlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbyes,mbno],0)=mryes then
begin
fil:=datamodule1.Table2_1.Filtered;
ind:=datamodule1.Table2_1.IndexFieldNames;
datamodule1.Table2_1.Filtered:=false;
datamodule1.Table2_1.IndexFieldNames:='celreg3';
if datamodule1.Table2_1.FindKey([pin]) then begin da:=true; st:=st+'"Целевой набор"';end;
datamodule1.Table2_1.Filtered:=fil;
datamodule1.Table2_1.IndexFieldNames:=ind;

fil:=datamodule1.Table36_1.Filtered;
ind:=datamodule1.Table36_1.IndexFieldNames;
datamodule1.Table36_1.Filtered:=false;
datamodule1.Table36_1.IndexFieldNames:='aregion3';
if datamodule1.Table36_1.FindKey([pin]) then
begin
if da then st:=st+',"Перечень студентов(прописка)"' else st:=st+'"Перечень студентов(прописка)"';
da:=true;
end;
datamodule1.Table36_1.Filtered:=fil;
datamodule1.Table36_1.IndexFieldNames:=ind;

fil:=datamodule1.Table36_1.Filtered;
ind:=datamodule1.Table36_1.IndexFieldNames;
datamodule1.Table36_1.Filtered:=false;
datamodule1.Table36_1.IndexFieldNames:='mregion3';
if datamodule1.Table36_1.FindKey([pin]) then
begin
if da then st:=st+',"Перечень студентов(место рождения)"' else st:=st+'"Перечень студентов(место рождения)"';
da:=true;
end;
datamodule1.Table36_1.Filtered:=fil;
datamodule1.Table36_1.IndexFieldNames:=ind;

fil:=datamodule1.Table46_1.Filtered;
ind:=datamodule1.Table46_1.IndexFieldNames;
datamodule1.Table46_1.Filtered:=false;
datamodule1.Table46_1.IndexFieldNames:='rod';
if datamodule1.Table46_1.FindKey([pin]) then
begin
if da then st:=st+',"Адресные данные"' else st:=st+'"Адресные данные"';
da:=true;
end;
datamodule1.Table46_1.Filtered:=fil;
datamodule1.Table46_1.IndexFieldNames:=ind;
if da then messagedlg('Удалить запись невозможно!Запись используется в таблицах:'+#13+#10+st,mtInformation,[mbok],0)
else
begin
tree.Items.Item[nomintree].Delete;
datamodule1.Table46_1.Delete;
datch:=date;timch:=time;
for i:=1 to dlinval do
begin
datamodule1.Table11_1.Append;
datamodule1.Table11_1datch.AsDateTime:=datch;
datamodule1.Table11_1kto.AsInteger:=pinkod;
datamodule1.Table11_1mess.AsString:=pole[i];
datamodule1.Table11_1fname.AsString:='geography';
datamodule1.Table11_1oldval.AsString:=oldval[i];
datamodule1.Table11_1newval.AsString:=newval[i];
datamodule1.Table11_1tim.AsDateTime:=timch;
datamodule1.Table11_1.Refresh;
end;
end;
end;
//fgorod.OnCreate(nil);
end;

procedure Tfgorod.FormActivate(Sender: TObject);
var i:1..73;
begin
application.OnException:=appexception;
datamodule1.Table46_1.IndexFieldNames:='name';
datamodule1.Table46_1.Refresh;
dlinval:=dbgrid1.FieldCount;
for i:=1 to dlinval do
pole[i]:=dbgrid1.Fields[i-1].FieldName;
if dostup<>1 then
begin
toolbutton7.Visible:=false;
toolbutton8.Visible:=false;
end
else
begin
toolbutton7.Visible:=true;
toolbutton8.Visible:=true;
end;

if upzv=1 then begin datamodule1.Table46_1.Filter:='tip=4';datamodule1.Table46_1.Filtered:=true;end;
if upzv=0 then begin datamodule1.Table46_1.Filter:='priz=1 and tip=4';datamodule1.Table46_1.Filtered:=true;end;
end;

procedure Tfgorod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
datamodule1.Table46_1.Filter:='';
datamodule1.Table46_1.Filtered:=false;
end;

procedure Tfgorod.ToolButton8Click(Sender: TObject);
var i:1..73;
begin
if (datamodule1.Table46_1.State=dsedit)or (datamodule1.Table46_1.State=dsinsert) then datamodule1.Table46_1.Refresh;
datch:=date;timch:=time;
otmena:=false;
for i:=1 to dlinval do begin newval[i]:='О.П.У.';oldval[i]:=dbgrid1.Fields[i-1].AsString; end;
datamodule1.Table46_1.Edit;
datamodule1.Table46_1.FieldByName('priz').AsString:='1';
mozno:=false;
datamodule1.Table46_1.Post;
end;

procedure Tfgorod.DBGrid1Exit(Sender: TObject);
var e:exception;
begin
if (datamodule1.Table46_1.State=dsinsert) or (datamodule1.Table46_1.State=dsedit)then
begin
e:=nil;
fgorod.appexception(dbgrid1,e);
end;
end;

procedure Tfgorod.ToolButton9Click(Sender: TObject);
begin
if (datamodule1.Table46_1.State=dsinsert) or(datamodule1.Table46_1.State=dsedit) then
otmena:=true;
datamodule1.Table46_1.Cancel;
datamodule1.Table46_1.Refresh;
toolbutton1.Enabled:=true;
toolbutton3.Enabled:=true;
toolbutton5.Enabled:=true;
toolbutton8.Enabled:=true;
toolbutton7.Enabled:=true;

end;

procedure Tfgorod.FormCreate(Sender: TObject);
var i,k1,pin,k2,pin1:word;
zakl,zakl1:tbookmark;
stro:string;
begin
mozno:=true;
datamodule1.Table46_1.Refresh;
fgorod.Tree.Items.Clear;
fgorod.Tree1.Items.Clear;
fgorod.tree.Items.Add(nil,'Страна');
fgorod.tree1.Items.Add(nil,'-1');
datamodule1.Table46_1.IndexFieldNames:='pin';
//if upzv=1 then datamodule1.table46_1.Filter:='tip=1' else   datamodule1.table46_1.Filter:='priz=1 and tip=1';
datamodule1.table46_1.Filter:='tip=1';
datamodule1.Table46_1.Filtered:=true;
datamodule1.Table46_1.First;
i:=1;
while not datamodule1.Table46_1.Eof do
begin
fgorod.tree.Items.AddChild(fgorod.tree.Items[0],datamodule1.Table46_1name.AsString);
fgorod.tree1.Items.AddChild(fgorod.tree1.Items[0],datamodule1.Table46_1pin.AsString);
pin1:=datamodule1.Table46_1pin.AsInteger;
//zakl:=datamodule1.Table46_1.GetBookmark;
//if upzv=1 then stro:='tip=2 and rod='+fgorod.Tree1.Items.Item[i].Text else stro:='tip=2 and priz=1 and rod='+fgorod.Tree1.Items.Item[i].Text;
 stro:='tip=2 and rod='+fgorod.Tree1.Items.Item[i].Text;
datamodule1.Table46_1.Filter:=stro;
datamodule1.Table46_1.First;
k1:=i;
while not datamodule1.Table46_1.Eof do
begin
k2:=i+1;
fgorod.tree.Items.AddChild(fgorod.tree.items[k1],datamodule1.Table46_1name.AsString);
pin:=datamodule1.Table46_1pin.AsInteger;
fgorod.Tree1.Items.AddChild(fgorod.Tree1.Items[k1],inttostr(pin));
//if upzv=1 then datamodule1.Table46_1.Filter:='tip=4 and rod='+fgorod.Tree1.Items.Item[i+1].Text else datamodule1.Table46_1.Filter:='tip=4 and priz=1 and rod='+fgorod.Tree1.Items.Item[i+1].Text;
datamodule1.Table46_1.Filter:='tip=4 and rod='+fgorod.Tree1.Items.Item[i+1].Text;
datamodule1.Table46_1.First;

while not datamodule1.Table46_1.Eof do
begin
fgorod.Tree.Items.AddChild(fgorod.Tree.Items[k2],datamodule1.Table46_1name.AsString);
fgorod.Tree1.Items.AddChild(fgorod.Tree1.Items[k2],inttostr(pin));
i:=i+1;
datamodule1.Table46_1.Next;
end;
datamodule1.Table46_1.Filter:=stro;
datamodule1.Table46_1.FindKey([pin]);
datamodule1.Table46_1.Next;
i:=i+1;
end;
i:=i+1;
if upzv=1 then datamodule1.table46_1.Filter:='tip=1' else datamodule1.table46_1.Filter:='priz=1 and tip=1';
datamodule1.Table46_1.Filtered:=true;
datamodule1.Table46_1.FindKey([pin1]);
datamodule1.Table46_1.Next;
end;
fgorod.Tree.Items[0].Expanded:=true;
if fgorod.tree.Selected<>nil then
begin
if upzv=1 then datamodule1.Table46_1.Filter:='tip=4 and rod='+(fgorod.Tree1.Items.Item[fgorod.Tree.Selected.AbsoluteIndex].text) else datamodule1.Table46_1.Filter:='tip=4 and priz=1 and rod='+(fgorod.Tree1.Items.Item[fgorod.Tree.Selected.AbsoluteIndex].text);
end
else
if upzv=1 then datamodule1.Table46_1.Filter:='tip=4 and rod=-1' else datamodule1.Table46_1.Filter:='tip=4 and priz=1 and rod=-1';
otmena:=false;
end;

procedure Tfgorod.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var i:1..73;
  j:integer;
  begin
datch:=date;timch:=time;
if (datamodule1.Table46_1.State<>dsinsert)and(datamodule1.Table46_1.State<>dsedit) then
for i:=1 to dlinval do
oldval[i]:=dbgrid1.Fields[i-1].AsString;

end;

procedure Tfgorod.TreeChange(Sender: TObject; Node: TTreeNode);
begin
roditel:=strtoint(fgorod.Tree1.Items.Item[fgorod.Tree.Selected.absoluteindex].Text);
nomintree:=tree.Selected.AbsoluteIndex;
if upzv=1 then datamodule1.Table46_1.Filter:='tip=4 and rod='+fgorod.Tree1.Items.Item[fgorod.Tree.Selected.absoluteindex].Text else datamodule1.Table46_1.Filter:='tip=4 and priz=1 and rod='+fgorod.Tree1.Items.Item[fgorod.Tree.Selected.absoluteindex].Text;
if fgorod.Tree.Selected.Level>=2 then
begin
toolbutton1.Enabled:=true;
toolbutton3.Enabled:=true;
toolbutton5.Enabled:=true;
toolbutton9.Enabled:=true;
toolbutton8.Enabled:=true;
toolbutton7.Enabled:=true;
bitbtn1.Enabled:=true;
end
else
begin
toolbutton1.Enabled:=false;
toolbutton3.Enabled:=false;
toolbutton5.Enabled:=false;
toolbutton9.Enabled:=false;
toolbutton8.Enabled:=false;
toolbutton7.Enabled:=false;
bitbtn1.Enabled:=false;
end;

end;

end.
