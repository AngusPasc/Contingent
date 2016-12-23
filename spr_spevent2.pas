unit spr_spevent2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, datamodule, DB, DBCtrls;

type
  Tspevent_up = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox1: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox2: TGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spevent_up: Tspevent_up;
  sost, stat: integer;

implementation

uses main1, spr_spevent1;
{$R *.dfm}

procedure Tspevent_up.BitBtn1Click(Sender: TObject);
begin
  if trim(Edit2.Text) = '' then
  begin
    showmessage('Введите название!');
    Edit2.SetFocus;
    exit;
  end;
  DataModule1.Table_w26.fieldbyname('spsost').asinteger := sost;
  DataModule1.Table_w26.fieldbyname('spstatus').asinteger := stat;
  DataModule1.Table_w26.fieldbyname('name').AsString := trim(Edit2.Text);
  if RadioButton1.Checked = True then
    DataModule1.Table_w26.fieldbyname('priz').AsString := '1'
  else
    DataModule1.Table_w26.fieldbyname('priz').AsString := '0';
  { if RadioButton3.Checked =True
    then  DataModule1.Table_w26.fieldbyname('act').AsString :='1'
    else  DataModule1.Table_w26.fieldbyname('act').AsString :='0';
    if RadioButton5.Checked =True
    then  DataModule1.Table_w26.fieldbyname('cause').AsString :='1'
    else  DataModule1.Table_w26.fieldbyname('cause').AsString :='0';
    if RadioButton7.Checked =True
    then  DataModule1.Table_w26.fieldbyname('vfort').AsString :='B';
    if RadioButton8.Checked =True
    then  DataModule1.Table_w26.fieldbyname('vfort').AsString :='E';
    if RadioButton9.Checked =True
    then  DataModule1.Table_w26.fieldbyname('vfort').AsString :='S'; }

  DataModule1.Table_w26.Refresh;
  close;
end;

procedure Tspevent_up.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w26.Cancel;
  close;
end;

procedure Tspevent_up.FormActivate(Sender: TObject);
begin
  if act = 1 then // добавление
  begin
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit2.Text := '';
  end
  else
  begin
    DBLookupComboBox1.DataSource := DataModule1.DataSource_w26;
    DBLookupComboBox1.DataField := 'spsost';
    DBLookupComboBox2.DataSource := DataModule1.DataSource_w26;
    DBLookupComboBox2.DataField := 'spstatus';
    Edit2.Text := DataModule1.Table_w26.fieldbyname('name').AsString;
    if DataModule1.Table_w26.fieldbyname('vfort').AsString = 'B' then
    begin
      RadioButton7.Checked := True;
      RadioButton8.Checked := False;
      RadioButton9.Checked := False;
    end;
    if DataModule1.Table_w26.fieldbyname('vfort').AsString = 'E' then
    begin
      RadioButton7.Checked := False;
      RadioButton8.Checked := True;
      RadioButton9.Checked := False;
    end;
    if DataModule1.Table_w26.fieldbyname('vfort').AsString = 'S' then
    begin
      RadioButton7.Checked := False;
      RadioButton8.Checked := False;
      RadioButton9.Checked := True;
    end;

    if DataModule1.Table_w26.fieldbyname('cause').AsString = '1' then
    begin
      RadioButton5.Checked := True;
      RadioButton6.Checked := False;
    end
    else
    begin
      RadioButton5.Checked := False;
      RadioButton6.Checked := True;
    end;
    if DataModule1.Table_w26.fieldbyname('act').AsString = '1' then
    begin
      RadioButton3.Checked := True;
      RadioButton4.Checked := False;
    end
    else
    begin
      RadioButton3.Checked := False;
      RadioButton4.Checked := True;
    end;
    if DataModule1.Table_w26.fieldbyname('priz').AsString = '1' then
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

procedure Tspevent_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spr_spevent.Enabled := True;
end;

procedure Tspevent_up.DBLookupComboBox1Click(Sender: TObject);
begin
  sost := DataModule1.table_w25.fieldbyname('pin').asinteger;
  DataModule1.Table_w26.Refresh;
end;

procedure Tspevent_up.DBLookupComboBox2Click(Sender: TObject);
begin
  stat := DataModule1.table_w24.fieldbyname('pin').asinteger;
  DataModule1.Table_w26.Refresh;
end;

end.
