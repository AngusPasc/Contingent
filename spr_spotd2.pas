unit spr_spotd2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, datamodule, DB;

type
  Tspotd_up = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label2: TLabel;
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
  spotd_up: Tspotd_up;

implementation

uses spr_spotd1;
{$R *.dfm}

procedure Tspotd_up.FormActivate(Sender: TObject);
begin
  if DataModule1.Table_w33.State = dsInsert then // добавление
  begin
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit1.Text := '';
    Edit2.Text := ''
  end
  else
  begin
    Edit1.Text := DataModule1.Table_w33.fieldbyname('name').AsString;
    Edit2.Text := DataModule1.Table_w33.fieldbyname('mean').AsString;
    if DataModule1.Table_w33.fieldbyname('priz').AsString = '1' then
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

procedure Tspotd_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spr_spotd.Enabled := True;
end;

procedure Tspotd_up.BitBtn1Click(Sender: TObject);
begin
  if trim(Edit1.Text) = '' then
  begin
    showmessage('Введите название!');
    Edit1.SetFocus;
    exit;
  end;
  DataModule1.Table_w33.fieldbyname('name').AsString := trim(Edit1.Text);
  DataModule1.Table_w33.fieldbyname('mean').AsString := trim(Edit2.Text);
  if RadioButton1.Checked = True then
    DataModule1.Table_w33.fieldbyname('priz').AsString := '1'
  else
    DataModule1.Table_w33.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w33.Refresh;
  close;
end;

procedure Tspotd_up.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w33.Cancel;
  close;
end;

end.
