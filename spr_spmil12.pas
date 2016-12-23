unit spr_spmil12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, datamodule,DB;

type
  Tspmil1_up = class(TForm)
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
  spmil1_up: Tspmil1_up;

implementation
 uses spr_spmil11;
{$R *.dfm}

procedure Tspmil1_up.FormActivate(Sender: TObject);
begin
 if DataModule1.Table_w20.State = dsInsert   then //добавление
  begin
    RadioButton1.Checked :=True;  RadioButton2.Checked :=False;
    Edit2.Text :=''
  end
 else
  begin
   Edit2.Text :=DataModule1.Table_w20.fieldbyname('name').AsString;
   if DataModule1.Table_w20.fieldbyname('priz').AsString ='1'
   then  begin RadioButton1.Checked :=True;  RadioButton2.Checked :=False end
   else  begin RadioButton2.Checked :=True;  RadioButton1.Checked :=False; end;
  end;
end;

procedure Tspmil1_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spr_spmil1.Enabled :=True;
end;

procedure Tspmil1_up.BitBtn1Click(Sender: TObject);
begin
  if trim(Edit2.Text)='' then
  begin
   showmessage('Введите название!');
   Edit2.SetFocus;
   exit;
  end;
  DataModule1.Table_w20.fieldbyname('name').AsString:=trim(Edit2.Text);
  if RadioButton1.Checked =True
   then  DataModule1.Table_w20.fieldbyname('priz').AsString :='1'
   else  DataModule1.Table_w20.fieldbyname('priz').AsString :='0';
  DataModule1.Table_w20.Refresh;
  close;
end;

procedure Tspmil1_up.BitBtn2Click(Sender: TObject);
begin
 DataModule1.Table_w20.Cancel;
 close;
end;

end.
