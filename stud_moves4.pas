unit stud_moves4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils;

type
  Tstud_moves = class(TForm)
    Label29: TLabel;
    Edit7: TEdit;
    Label30: TLabel;
    Edit16: TEdit;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_moves: Tstud_moves;

implementation

uses main1, acc_stat2, stud_moves1, stud_moves2, stud_moves3, stud_del1;
{$R *.dfm}

procedure Tstud_moves.Button2Click(Sender: TObject);
begin
  Enabled := False;
  act := 1; // добавление нового приказа
  Application.CreateForm(Tacc_moves, acc_moves);
  acc_moves.Show;
end;

procedure Tstud_moves.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_moves.Button3Click(Sender: TObject);
begin
  pp := 2; // для возврата сюда
  Enabled := False;
  DataModule1.Table_w6.Next; // прочитали следующую запись

  if DataModule1.Table_w6.Eof = true then
    act := 2 // изменение последнего приказа
  else
  begin
    act := 3; // изменение не последнего приказа
    DataModule1.Table_w6.Prior;
  end;
  Application.CreateForm(Tacc_moves, acc_moves);
  acc_moves.Show;
end;

procedure Tstud_moves.Button4Click(Sender: TObject);
begin
  pp := 2; // для возврата сюда
  Enabled := False;
  Application.CreateForm(Tacc_del, acc_del);
  acc_del.Show;
end;

procedure Tstud_moves.FormActivate(Sender: TObject);
begin
  if priz_dost <> 1 then
  begin
    Button2.Enabled := False;
    Button3.Enabled := False;
    Button4.Enabled := False;
  end;
  DataModule1.Table_w6.IndexName := 'idxmovacc';
  DataModule1.Table_w6.Open;
  DataModule1.Table_w6.Filter := 'acc=' + inttostr(stud_pin);
  DataModule1.Table_w6.Filtered := true;
  Edit7.Text := stud_fio;
  Edit16.Text := stud_gr;
end;

procedure Tstud_moves.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w6.Filtered := False;
  DataModule1.Table_w6.close;
  stat_godpr.Enabled := true;
end;

end.
