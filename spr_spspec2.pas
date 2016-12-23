unit spr_spspec2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, datamodule, DB;

type
  Tspspec_up = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spspec_up: Tspspec_up;

implementation

uses spr_spspec1;
{$R *.dfm}

procedure Tspspec_up.FormActivate(Sender: TObject);
begin
  if DataModule1.Table_w35.State = dsInsert then // добавление
  begin
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit1.Text := '';
    Edit2.Text := ''
  end
  else
  begin
    Edit1.Text := DataModule1.Table_w35.fieldbyname('name').AsString;
    Edit2.Text := DataModule1.Table_w35.fieldbyname('sname').AsString;
    if DataModule1.Table_w35.fieldbyname('priz').AsString = '1' then
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

procedure Tspspec_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spr_spspec.Enabled := True;
end;

procedure Tspspec_up.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w35.Cancel;
  close;
end;

end.
