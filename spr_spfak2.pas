unit spr_spfak2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, datamodule, DB;

type
  Tspfak_up = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
  spfak_up: Tspfak_up;

implementation

uses spr_spfak1;
{$R *.dfm}

procedure Tspfak_up.FormActivate(Sender: TObject);
begin
  if DataModule1.Table_w34.State = dsInsert then // добавление
  begin
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit1.Text := '';
    Edit2.Text := ''
  end
  else
  begin
    Edit1.Text := DataModule1.Table_w34.fieldbyname('name').AsString;
    Edit2.Text := DataModule1.Table_w34.fieldbyname('mean').AsString;
    if DataModule1.Table_w34.fieldbyname('priz').AsString = '1' then
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

procedure Tspfak_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spr_spfak.Enabled := True;
end;

procedure Tspfak_up.BitBtn1Click(Sender: TObject);
begin
  if trim(Edit1.Text) = '' then
  begin
    showmessage('Введите название!');
    Edit1.SetFocus;
    exit;
  end;
  DataModule1.Table_w34.fieldbyname('name').AsString := trim(Edit1.Text);
  DataModule1.Table_w34.fieldbyname('mean').AsString := trim(Edit2.Text);
  DataModule1.Table_w34.fieldbyname('pinrod').asinteger := 0;
  if RadioButton1.Checked = True then
    DataModule1.Table_w34.fieldbyname('priz').AsString := '1'
  else
    DataModule1.Table_w34.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w34.Refresh;
  close;
end;

procedure Tspfak_up.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w34.Cancel;
  close;
end;

end.
