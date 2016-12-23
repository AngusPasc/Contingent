unit acc_stat3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, Spin;

type
  Tstud_godpr1 = class(TForm)
    Edit1: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpinEdit1: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_godpr1: Tstud_godpr1;

implementation

uses main1, acc_stat2;
{$R *.dfm}

procedure Tstud_godpr1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  stat_godpr.Enabled := true;
end;

procedure Tstud_godpr1.FormActivate(Sender: TObject);
begin
  SpinEdit1.Value := DataModule1.Table_w1.FieldByName('godpr').Asinteger;
  Edit1.Text := stud_fio;
  Edit2.Text := stud_gr;

end;

procedure Tstud_godpr1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_godpr1.BitBtn1Click(Sender: TObject);
var
  s: string;
begin
  DataModule1.Query1.SQL.Clear;
  s := 'update acc set godpr=' + inttostr(SpinEdit1.Value) + ' where pin=' +
    inttostr(stud_pin);
  DataModule1.Query1.SQL.Add(s);
  DataModule1.Query1.ExecSQL;
  DataModule1.Table_w1.Refresh;
  close;
end;

end.
