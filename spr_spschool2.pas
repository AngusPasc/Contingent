unit spr_spschool2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, datamodule, DB;

type
  Tspschool_up = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Edit1: TEdit;
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
  spschool_up: Tspschool_up;

implementation

uses spr_spschool1;
{$R *.dfm}

procedure Tspschool_up.FormActivate(Sender: TObject);
begin
  if DataModule1.Table_w19.State = dsInsert then // ����������
  begin
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit2.Text := '';
    Edit1.Text := ''
  end
  else
  begin
    Edit2.Text := DataModule1.Table_w19.fieldbyname('pname').AsString;
    Edit1.Text := DataModule1.Table_w19.fieldbyname('name').AsString;
    if DataModule1.Table_w19.fieldbyname('priz').AsString = '1' then
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

procedure Tspschool_up.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w19.Cancel;
  close;
end;

procedure Tspschool_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spr_spschool.Enabled := True;
end;

procedure Tspschool_up.BitBtn1Click(Sender: TObject);
begin
  if (trim(Edit2.Text) = '') or (trim(Edit1.Text) = '') then
  begin
    showmessage('������� ��������!');
    Edit2.SetFocus;
    exit;
  end;
  DataModule1.Table_w19.fieldbyname('pname').AsString := trim(Edit2.Text);
  DataModule1.Table_w19.fieldbyname('name').AsString := trim(Edit1.Text);
  if RadioButton1.Checked = True then
    DataModule1.Table_w19.fieldbyname('priz').AsString := '1'
  else
    DataModule1.Table_w19.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w19.Refresh;
  close;
end;

end.
