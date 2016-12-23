unit spr_spreg32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, datamodule,DB, DBCtrls;

type
  Tspgorod_up = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spgorod_up: Tspgorod_up;
  reg :integer;
implementation
uses main1,spr_spreg31;
{$R *.dfm}

procedure Tspgorod_up.FormActivate(Sender: TObject);
begin
 
  if act = 1   then //добавление
  begin
    RadioButton1.Checked :=True;  RadioButton2.Checked :=False;
    Edit2.Text :='';
  end
 else
  begin
   Edit2.Text :=DataModule1.Table46_1.fieldbyname('name').AsString;
   if DataModule1.Table46_1.fieldbyname('priz').AsString ='1'
   then  begin RadioButton1.Checked :=True;  RadioButton2.Checked :=False end
   else  begin RadioButton2.Checked :=True;  RadioButton1.Checked :=False; end;
  end;
   DataModule1.Table46_1.Filter:='tip=2 and priz='+'''1''';
   DataModule1.Table46_1.Filtered:=true;
end;

procedure Tspgorod_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spgorod.Enabled :=True;
end;

procedure Tspgorod_up.BitBtn1Click(Sender: TObject);
var
 s : string;
 p: char;
begin
 if trim(Edit2.Text)='' then
  begin
   showmessage('Введите название города !');
   Edit2.SetFocus;
   exit;
  end;
 if reg=0 then
  begin
   showmessage('Выберите регион !');
   DbLookupComboBox1.SetFocus;
   exit;
  end;
 DataModule1.Query3.SQL.Clear;
 if act =1 then begin
   s :='insert into geography (name,tip,rod,priz) values ('+''''+trim(Edit2.Text)+''''+',4,'+inttostr(reg)+','+''''+'1'+''''+')';
   DataModule1.Query3.SQL.Add(s);
  end
 else  begin
   if RadioButton1.Checked =True
   then  p :='1'
   else  p :='0';
   s :='update geography set name='+''''+Edit2.Text+''''+',tip=4,rod='+inttostr(reg)+',priz='+''''+p+''''+'where pin='+inttostr(pin);;
   DataModule1.Query3.SQL.Add(s);
  end;
  DataModule1.Query3.ExecSQL;
  DataModule1.Table46_1.Refresh;
  close;
end;

procedure Tspgorod_up.DBLookupComboBox1Click(Sender: TObject);
begin
 reg :=Datamodule1.table46_1.fieldbyname('pin').asinteger;
 DataModule1.Table46_1.Filtered:=false;
  DataModule1.Table46_1.Refresh;
end;

procedure Tspgorod_up.BitBtn2Click(Sender: TObject);
begin
 close;
end;

end.
