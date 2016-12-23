unit spr_spotd1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DataModule;

type
  Tspr_spotd = class(TForm)
    DBGrid1: TDBGrid;
    ControlBar1: TControlBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spr_spotd: Tspr_spotd;

implementation

uses main1, spr_spotd2;
{$R *.dfm}

procedure Tspr_spotd.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w33.Open;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w33.ReadOnly := True;
    ControlBar1.enabled := False;
  end;

end;

procedure Tspr_spotd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w33.Close;
  DataModule1.Table_w33.ReadOnly := False;
  main.enabled := True;
end;

procedure Tspr_spotd.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure Tspr_spotd.SpeedButton5Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w33.Edit;
  spotd_up.show;
end;

procedure Tspr_spotd.SpeedButton2Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w33.Insert;
  spotd_up.show;
end;

procedure Tspr_spotd.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.Table_w33.Edit;
  if messagebox(Handle, 'Удалить ' + 'запись ' + '?', 'Подтверждение',
    mb_yesno) = 7 then
    exit;
  DataModule1.Table_w33.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w33.Refresh;

end;

end.
