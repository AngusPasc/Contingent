unit spr_spreg02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, datamodule, DB, DBCtrls;

type
  Tspstrana_up = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spstrana_up: Tspstrana_up;

implementation

uses main1, spr_spreg01;
{$R *.dfm}

procedure Tspstrana_up.FormActivate(Sender: TObject);
begin
  if act = 1 then // добавление
  begin
    RadioButton1.Checked := True;
    RadioButton2.Checked := False;
    Edit2.Text := '';
  end
  else
  begin
    Edit2.Text := DataModule1.Table46_1.fieldbyname('name').AsString;
    if DataModule1.Table46_1.fieldbyname('priz').AsString = '1' then
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

procedure Tspstrana_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  spstrana.Enabled := True;
end;

procedure Tspstrana_up.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tspstrana_up.BitBtn1Click(Sender: TObject);
var
  s: string;
  p: char;
begin
  if trim(Edit2.Text) = '' then
  begin
    showmessage('¬ведите название страны !');
    Edit2.SetFocus;
    exit;
  end;

  DataModule1.Query3.SQL.Clear;
  if act = 1 then
  begin
    s := 'insert into geography (name,tip,rod,priz) values (' + '''' +
      trim(Edit2.Text) + '''' + ',1,0,' + '''' + '1' + '''' + ')';
    DataModule1.Query3.SQL.Add(s);
  end
  else
  begin
    if RadioButton1.Checked = True then
      p := '1'
    else
      p := '0';
    s := 'update geography set name=' + '''' + Edit2.Text + '''' +
      ',tip=1,rod=0,priz=' + '''' + p + '''' + 'where pin=' + inttostr(pin);;
    DataModule1.Query3.SQL.Add(s);
  end;
  DataModule1.Query3.ExecSQL;
  DataModule1.Table46_1.Refresh;
  close;

end;

end.
