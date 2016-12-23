unit spr_spcitiz2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, datamodule, DB;

type
  Tspcitiz_up = class(TForm)
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
  spcitiz_up: Tspcitiz_up;

implementation

uses spr_spcitiz1;
{$R *.dfm}

procedure Tspcitiz_up.FormActivate(Sender: TObject);
begin
  if DataModule1.Table_w18.State = dsInsert then // добавление
  begin
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit2.Text := ''
  end
  else
  begin
    Edit2.Text := DataModule1.Table_w18.fieldbyname('name').AsString;
    if DataModule1.Table_w18.fieldbyname('priz').AsString = '1' then
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

procedure Tspcitiz_up.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w18.Cancel;
  close;
end;

procedure Tspcitiz_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spr_spcitiz.Enabled := True;
end;

procedure Tspcitiz_up.BitBtn1Click(Sender: TObject);
begin
  if trim(Edit2.Text) = '' then
  begin
    showmessage('Введите название!');
    Edit2.SetFocus;
    exit;
  end;
  DataModule1.Table_w18.fieldbyname('name').AsString := trim(Edit2.Text);
  if RadioButton1.Checked = True then
    DataModule1.Table_w18.fieldbyname('priz').AsString := '1'
  else
    DataModule1.Table_w18.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w18.Refresh;
  close;
end;

end.
