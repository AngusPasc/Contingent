unit spr_spstat2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, datamodule, DB;

type
  Tspstat_up = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spstat_up: Tspstat_up;

implementation

uses spr_spstat1;
{$R *.dfm}

procedure Tspstat_up.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w24.Cancel;
  close;
end;

procedure Tspstat_up.FormActivate(Sender: TObject);
begin
  if DataModule1.Table_w24.State = dsInsert then // ����������
  begin
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit2.Text := ''
  end
  else
  begin
    Edit2.Text := DataModule1.Table_w24.fieldbyname('name').AsString;
    if DataModule1.Table_w24.fieldbyname('priz').AsString = '1' then
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

procedure Tspstat_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spr_spstat.Enabled := True;
end;

procedure Tspstat_up.BitBtn1Click(Sender: TObject);
begin
  if trim(Edit2.Text) = '' then
  begin
    showmessage('������� ��������!');
    Edit2.SetFocus;
    exit;
  end;
  DataModule1.Table_w24.fieldbyname('name').AsString := trim(Edit2.Text);
  if RadioButton1.Checked = True then
    DataModule1.Table_w24.fieldbyname('priz').AsString := '1'
  else
    DataModule1.Table_w24.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w24.Refresh;
  close;
end;

end.
