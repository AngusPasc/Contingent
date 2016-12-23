unit acc_stat2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, OleServer, WordXP, ComObj, stud_moves4;

type
  Tstat_godpr = class(TForm)
    SpinEdit1: TSpinEdit;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    Button3: TButton;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    procedure SpinEdit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpinEdit2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stat_godpr: Tstat_godpr;
  filt: string;

implementation

uses main1, stud_moves1, acc_stat3;
{$R *.dfm}

procedure Tstat_godpr.SpinEdit1Change(Sender: TObject);
begin

  filt := 'spsost=1 and godpr=' + inttostr(SpinEdit1.Value) + ' and kurs<>' +
    inttostr(SpinEdit2.Value - SpinEdit1.Value + 1);
  datamodule1.Table_w1.Filter := filt;
  datamodule1.Table_w1.Filtered := True;
end;

procedure Tstat_godpr.FormActivate(Sender: TObject);
begin
  { if sys_priznak<>1 then  exit; }
  if priz_dost <> 1 then
  begin
    datamodule1.Table_w1.ReadOnly := True;
    datamodule1.Table_w2.ReadOnly := True;
    datamodule1.Table_w6.ReadOnly := True;
  end;
  datamodule1.Table_w1.Open;
end;

procedure Tstat_godpr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datamodule1.Table_w1.Filtered := False;
  datamodule1.Table_w1.Close;
  // DataModule1.Table_w2.Close;
  main.Enabled := True;
end;

procedure Tstat_godpr.SpinEdit2Change(Sender: TObject);
begin
  SpinEdit1.Value := SpinEdit2.Value - 6;
  SpinEdit1.SetFocus;
end;

procedure Tstat_godpr.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure Tstat_godpr.Button2Click(Sender: TObject);
begin
  pp := 2; // для возвращения назад
  stud_pin := datamodule1.Table_w1.FieldByName('pin').Asinteger;
  stud_fio := trim(datamodule1.Table_w1.FieldByName('fam').asstring);
  stud_fio := trim(stud_fio) + ' ' +
    trim(datamodule1.Table_w1.FieldByName('name').asstring) + ' ';
  stud_fio := trim(stud_fio) + ' ' +
    trim(datamodule1.Table_w1.FieldByName('vname').asstring);
  stud_gr := trim(datamodule1.Table_w1.FieldByName('gruppa').asstring);
  Enabled := False;
  Application.CreateForm(Tstud_moves, stud_moves);
  stud_moves.Show;
end;

procedure Tstat_godpr.Button1Click(Sender: TObject);
begin
  stud_pin := datamodule1.Table_w1.FieldByName('pin').Asinteger;
  stud_fio := trim(datamodule1.Table_w1.FieldByName('fam').asstring);
  stud_fio := trim(stud_fio) + ' ' +
    trim(datamodule1.Table_w1.FieldByName('name').asstring) + ' ';
  stud_fio := trim(stud_fio) + ' ' +
    trim(datamodule1.Table_w1.FieldByName('vname').asstring);
  stud_gr := trim(datamodule1.Table_w1.FieldByName('gruppa').asstring);
  Enabled := False;
  Application.CreateForm(Tstud_godpr1, stud_godpr1);
  stud_godpr1.Show;
end;

end.
