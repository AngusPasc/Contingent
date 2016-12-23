unit spr_spcitiz1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, DataModule;

type
  Tspr_spcitiz = class(TForm)
    DBGrid1: TDBGrid;
    ControlBar1: TControlBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spr_spcitiz: Tspr_spcitiz;

implementation

uses main1, spr_spcitiz2;
{$R *.dfm}

procedure Tspr_spcitiz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w18.Close;
  DataModule1.Table_w18.ReadOnly := False;
  main.Enabled := True;
end;

procedure Tspr_spcitiz.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure Tspr_spcitiz.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w18.Open;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w18.ReadOnly := True;
    ControlBar1.Enabled := False;
  end;
end;

procedure Tspr_spcitiz.SpeedButton5Click(Sender: TObject);
begin
  Enabled := False;
  DataModule1.Table_w18.Edit;
  spcitiz_up.show;
end;

procedure Tspr_spcitiz.SpeedButton2Click(Sender: TObject);
begin
  Enabled := False;
  DataModule1.Table_w18.Insert;
  spcitiz_up.show;
end;

procedure Tspr_spcitiz.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.Table_w18.Edit;
  if messagebox(Handle, 'Удалить ' + 'запись ' + '?', 'Подтверждение',
    mb_yesno) = 7 then
    exit;
  DataModule1.Table_w18.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w18.Refresh;
end;

end.
