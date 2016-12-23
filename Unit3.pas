unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormActivate(Sender: TObject);
begin
  if DataModule1.Table_w25.State = dsInsert   then //добавление
  begin
    RadioButton1.Checked :=True;  RadioButton2.Checked :=False;
    Edit2.Text :=''
  end
 else
  begin
   Edit2.Text :=DataModule1.Table_w25.fieldbyname('name').AsString;
   if DataModule1.Table_w25.fieldbyname('priz').AsString ='1'
   then  begin RadioButton1.Checked :=True;  RadioButton2.Checked :=False end
   else  begin RadioButton2.Checked :=True;  RadioButton1.Checked :=False; end;
  end;

end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 spr_spsost.Enabled :=True;
end;

end.
