unit stud_sess4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, datamodule, StdCtrls, ComCtrls, Buttons, ExtCtrls, Spin,
  DateUtils,
  DBCtrls;

type
  Tstud_sess_up = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Edit1: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_sess_up: Tstud_sess_up;
  izm_prep, codkaf: integer;

implementation

uses main1, stud_sess1;
{$R *.dfm}

procedure Tstud_sess_up.FormActivate(Sender: TObject);
begin
  DataModule1.Table14.IndexName := 'PRIMARY';
  DataModule1.Table14.FindKey
    ([Stud_sessia.coddisc[Stud_sessia.StringGrid1.Row]]);
  codkaf := DataModule1.Table14.fieldbyname('codk').asinteger;
  Edit4.Text := '';
  Edit2.Text := Stud_sessia.StringGrid1.Cells[1, Stud_sessia.StringGrid1.Row];
  Edit1.Text := Stud_sessia.StringGrid1.Cells[2, Stud_sessia.StringGrid1.Row];
  Edit3.Text := Stud_sessia.StringGrid1.Cells[5, Stud_sessia.StringGrid1.Row];
  Edit5.Text := Stud_sessia.StringGrid1.Cells[4, Stud_sessia.StringGrid1.Row];
  if Stud_sessia.StringGrid1.Cells[3, Stud_sessia.StringGrid1.Row] <> '' then
  begin
    DataModule1.Table22.IndexName := 'PRIMARY';
    DataModule1.Table22.FindKey
      ([Stud_sessia.codprep[Stud_sessia.StringGrid1.Row]]);
    Edit4.Text := DataModule1.Table22.fieldbyname('fam').asstring + ' ' +
      copy(DataModule1.Table22.fieldbyname('name').asstring, 1, 1) + '.' +
      copy(DataModule1.Table22.fieldbyname('otch').asstring, 1, 1) + '.';
    Edit4.ReadOnly := True;
  end;
  DataModule1.Table22.IndexName := 'fio';
  DataModule1.Table22.filter := 'codnaim<>5 and codk=' + inttostr(codkaf);
  DataModule1.Table22.filtered := True;
end;

procedure Tstud_sess_up.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_sess_up.DBLookupComboBox3CloseUp(Sender: TObject);
begin
  izm_prep := DataModule1.Table22.fieldbyname('id').asinteger;
  Edit4.ReadOnly := False;
  Edit4.Text := DataModule1.Table22.fieldbyname('fio').asstring;
end;

procedure Tstud_sess_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table22.filtered := False;
  Stud_sessia.Enabled := True;
end;

procedure Tstud_sess_up.DBLookupComboBox3Click(Sender: TObject);
begin
  Edit4.Hide;
end;

procedure Tstud_sess_up.BitBtn1Click(Sender: TObject);
var
  s: string;
begin
  Stud_sessia.codprep[Stud_sessia.StringGrid1.Row] := izm_prep;
  Stud_sessia.StringGrid1.Cells[3, Stud_sessia.StringGrid1.Row] := Edit4.Text;
  Stud_sessia.StringGrid1.Cells[5, Stud_sessia.StringGrid1.Row] := Edit3.Text;
  Stud_sessia.StringGrid1.Cells[4, Stud_sessia.StringGrid1.Row] := Edit5.Text;
  close;
end;

procedure Tstud_sess_up.Edit5Exit(Sender: TObject);
begin
  If pos('.', Edit5.Text) = 0 then
  begin
    showmessage
      ('Значение Вес дисциплины вводить с дробной частью через точку!');
    Edit5.Text := '0.0';
    Edit5.SetFocus;
  end;
end;

end.
