unit spr_spreg22;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, Buttons, datamodule,DB, DBCtrls;

type
  Tspselo_up = class(TForm)
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spselo_up: Tspselo_up;
  reg :integer;
implementation
 uses main1,spr_spreg21;

{$R *.dfm}

procedure Tspselo_up.FormActivate(Sender: TObject);
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
   DataModule1.Table46_1.Filter:='tip=3 and priz='+'''1''';
   DataModule1.Table46_1.Filtered:=true;
end;

procedure Tspselo_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 spselo.Enabled :=True;
end;

procedure Tspselo_up.DBLookupComboBox1Click(Sender: TObject);
begin
 reg :=Datamodule1.table46_1.fieldbyname('pin').asinteger;
 DataModule1.Table46_1.Filtered:=false;
 DataModule1.Table46_1.Refresh;
end;

procedure Tspselo_up.BitBtn1Click(Sender: TObject);
var
 s : string;
 p: char;
begin
 if trim(Edit2.Text)='' then
  begin
   showmessage('Введите название населенного пункта !');
   Edit2.SetFocus;
   exit;
  end;
 if reg=0 then
  begin
   showmessage('Выберите район !');
   DbLookupComboBox1.SetFocus;
   exit;
  end;
 DataModule1.Query3.SQL.Clear;
 if act =1 then begin
   s :='insert into geography (name,tip,rod,priz) values ('+''''+trim(Edit2.Text)+''''+',5,'+inttostr(reg)+','+''''+'1'+''''+')';
   DataModule1.Query3.SQL.Add(s);
  end
 else  begin
   if RadioButton1.Checked =True
   then  p :='1'
   else  p :='0';
   s :='update geography set name='+''''+Edit2.Text+''''+',tip=5,rod='+inttostr(reg)+',priz='+''''+p+''''+'where pin='+inttostr(pin);;
   DataModule1.Query3.SQL.Add(s);
  end;
  DataModule1.Query3.ExecSQL;
  DataModule1.Table46_1.Refresh;
  close;

end;

procedure Tspselo_up.BitBtn2Click(Sender: TObject);
begin
 close;
end;

end.
