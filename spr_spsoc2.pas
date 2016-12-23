unit spr_spsoc2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, datamodule, DB;

type
  Tspsoc_up = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spsoc_up: Tspsoc_up;

implementation

uses spr_spsoc1;
{$R *.dfm}

procedure Tspsoc_up.FormActivate(Sender: TObject);
begin
  if DataModule1.Table_w17.State = dsInsert then // добавление
  begin
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit2.Text := ''
  end
  else
  begin
    Edit2.Text := DataModule1.Table_w17.fieldbyname('name').AsString;
    if DataModule1.Table_w17.fieldbyname('priz').AsString = '1' then
    begin
      RadioButton1.Checked := True;
      RadioButton2.Checked := False
    end
    else
    begin
      RadioButton2.Checked := True;
      RadioButton1.Checked := False;
    end;
  end;
end;

procedure Tspsoc_up.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w17.Cancel;
  close;
end;

procedure Tspsoc_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spr_spsoc.Enabled := True;
end;

procedure Tspsoc_up.BitBtn1Click(Sender: TObject);
begin
  if trim(Edit2.Text) = '' then
  begin
    showmessage('Введите название!');
    Edit2.SetFocus;
    exit;
  end;
  DataModule1.Table_w17.fieldbyname('name').AsString := trim(Edit2.Text);
  if RadioButton1.Checked = True then
    DataModule1.Table_w17.fieldbyname('priz').AsString := '1'
  else
    DataModule1.Table_w17.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w17.Refresh;
  close;
end;

end.
