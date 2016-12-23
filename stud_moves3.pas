unit stud_moves3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB,
  DateUtils;

type
  Tdel_stud = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  del_stud: Tdel_stud;
  pinacc: longint;

implementation

uses main1, stud_acc1;
{$R *.dfm}

procedure Tdel_stud.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tdel_stud.FormActivate(Sender: TObject);
begin
  Label3.Caption := trim(Datamodule1.Table_w1.fieldbyname('fam').AsString) + ' '
    + trim(Datamodule1.Table_w1.fieldbyname('name').AsString) + ' ' +
    trim(Datamodule1.Table_w1.fieldbyname('vname').AsString);
  pinacc := Datamodule1.Table_w1.fieldbyname('pin').AsInteger;

end;

procedure Tdel_stud.Button1Click(Sender: TObject);
var
  s1: string;
begin
  Datamodule1.Query1.SQL.Clear; // удаление из acc
  s1 := ' delete from acc where pin=' + inttostr(pinacc);
  Datamodule1.Query1.SQL.Add(s1);
  Datamodule1.Query1.ExecSQL;
  Datamodule1.Table_w1.Refresh;

  Datamodule1.Query1.SQL.Clear; // удаление из moves
  s1 := ' delete from moves where acc=' + inttostr(pinacc);
  Datamodule1.Query1.SQL.Add(s1);
  Datamodule1.Query1.ExecSQL;
  Datamodule1.Table_w6.Refresh;

  Datamodule1.Query1.SQL.Clear; // удаление из acckadr
  s1 := ' delete from acckadr where acc=' + inttostr(pinacc);
  Datamodule1.Query1.SQL.Add(s1);
  Datamodule1.Query1.ExecSQL;
  Datamodule1.Table_w2.Refresh;

  Datamodule1.Query1.SQL.Clear; // удаление из accfam
  s1 := ' delete from accfam where acc=' + inttostr(pinacc);
  Datamodule1.Query1.SQL.Add(s1);
  Datamodule1.Query1.ExecSQL;
  Datamodule1.Table_w4.Refresh;

  Datamodule1.Query1.SQL.Clear; // удаление из accwar
  s1 := ' delete from accwar where acc=' + inttostr(pinacc);
  Datamodule1.Query1.SQL.Add(s1);
  Datamodule1.Query1.ExecSQL;
  Datamodule1.Table_w3.Refresh;

  Datamodule1.Query1.SQL.Clear; // удаление из accgood
  s1 := ' delete from accgood where acc=' + inttostr(pinacc);
  Datamodule1.Query1.SQL.Add(s1);
  Datamodule1.Query1.ExecSQL;
  Datamodule1.Table_w5.Refresh;
  close;
end;

procedure Tdel_stud.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  stud_acc.Enabled := true;
end;

end.
