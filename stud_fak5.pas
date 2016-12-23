unit stud_fak5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, datamodule, DateUtils,
  ComCtrls;

type
  Tmovegr_fak = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox5: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  movegr_fak: Tmovegr_fak;
  gruppa: integer;

implementation

uses main1, stud_fak1;
{$R *.dfm}

procedure Tmovegr_fak.FormActivate(Sender: TObject);
begin
  Edit1.Text := stud_fio;
  Edit1.ReadOnly := True;
  Edit1.Enabled := False;
  Edit2.Text := stud_gr;
  Edit2.ReadOnly := True;
  Edit2.Enabled := False;
  datamodule1.Table_w1.Open;
  datamodule1.Table_w37.Open;
  datamodule1.Table_w37.Filter := 'spfak=' + inttostr(spfak);
  // +' and spspec='+;
  datamodule1.Table_w37.Filtered := True;
end;

procedure Tmovegr_fak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datamodule1.Table_w37.Filtered := False;
  stud_fak.Enabled := True;
end;

procedure Tmovegr_fak.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tmovegr_fak.BitBtn1Click(Sender: TObject);
var
  sql1: string;
begin
  datamodule1.Query1.SQL.Clear;
  sql1 := 'update acc set spgrup=' + inttostr(gruppa) + ' where pin=' +
    inttostr(stud_pin);
  datamodule1.Query1.SQL.Add(sql1);
  datamodule1.Query1.ExecSQL;
  datamodule1.Table_w1.Refresh;
  stud_gr := trim(datamodule1.Table_w1.FieldByname('gruppa').asstring);
  close;
end;

procedure Tmovegr_fak.DBLookupComboBox5Click(Sender: TObject);
begin
  gruppa := datamodule1.Table_w37.FieldByname('pin').asinteger;
end;

end.
