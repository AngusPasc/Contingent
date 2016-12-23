unit spr_spgrup2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, datamodule, DB, DBCtrls;

type
  Tspgrup1_up = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
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
  spgrup1_up: Tspgrup1_up;

implementation

uses spr_spgrup1, main1;
{$R *.dfm}

procedure Tspgrup1_up.FormActivate(Sender: TObject);
begin
  DataModule1.Table7.Open;
  if DataModule1.Table_w37.State = dsInsert then // добавление
  begin
    DataModule1.Table_w37.fieldbyname('spotd').AsInteger := codfo;
    DataModule1.Table_w37.fieldbyname('spfak').AsInteger := codf;
    DataModule1.Table_w37.fieldbyname('spspec').AsInteger := codspec;
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit1.Text := '';
  end
  else
  begin
    Edit1.Text := DataModule1.Table_w37.fieldbyname('name').AsString;
    Edit2.Text := DataModule1.Table_w37.fieldbyname('ngrup').AsString;
    if DataModule1.Table_w37.fieldbyname('priz').AsString = '1' then
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

procedure Tspgrup1_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table7.Close;
  spr_spgrup.Enabled := True;
end;

procedure Tspgrup1_up.BitBtn1Click(Sender: TObject);
begin
  if trim(Edit1.Text) = '' then
  begin
    showmessage('Введите название!');
    Edit1.SetFocus;
    exit;
  end;
  DataModule1.Table_w37.fieldbyname('name').AsString := trim(Edit1.Text);
  DataModule1.Table_w37.fieldbyname('ngrup').AsString := trim(Edit2.Text);
  if RadioButton1.Checked = True then
    DataModule1.Table_w37.fieldbyname('priz').AsString := '1'
  else
    DataModule1.Table_w37.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w37.Refresh;
  Close;
end;

procedure Tspgrup1_up.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w37.Cancel;
  Close;
end;

end.
