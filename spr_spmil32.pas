unit spr_spmil32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, datamodule,DB;

type
  Tspmil3_up = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spmil3_up: Tspmil3_up;

implementation
 uses spr_spmil31;
{$R *.dfm}

procedure Tspmil3_up.FormActivate(Sender: TObject);
begin
 if DataModule1.Table_w22.State = dsInsert   then //добавление
  begin
    RadioButton1.Checked :=True;  RadioButton2.Checked :=False;
    Edit2.Text :=''
  end
 else
  begin
   Edit2.Text :=DataModule1.Table_w22.fieldbyname('name').AsString;
   if DataModule1.Table_w22.fieldbyname('priz').AsString ='1'
   then  begin RadioButton1.Checked :=True;  RadioButton2.Checked :=False end
   else  begin RadioButton2.Checked :=True;  RadioButton1.Checked :=False; end;
  end;
end;

procedure Tspmil3_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 spr_spmil3.Enabled :=True;
end;

procedure Tspmil3_up.BitBtn1Click(Sender: TObject);
begin
  if trim(Edit2.Text)='' then
  begin
   showmessage('Введите название!');
   Edit2.SetFocus;
   exit;
  end;
 DataModule1.Table_w22.fieldbyname('name').AsString:=trim(Edit2.Text);
  if RadioButton1.Checked =True
   then  DataModule1.Table_w22.fieldbyname('priz').AsString :='1'
   else  DataModule1.Table_w22.fieldbyname('priz').AsString :='0';
  DataModule1.Table_w22.Refresh;
  close;
end;

procedure Tspmil3_up.BitBtn2Click(Sender: TObject);
begin
 DataModule1.Table_w22.Cancel;
 close;
end;

end.
