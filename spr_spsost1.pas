unit spr_spsost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, DataModule;

type
  Tspr_spsost = class(TForm)
    DBGrid1: TDBGrid;
    ControlBar1: TControlBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spr_spsost: Tspr_spsost;

implementation

uses main1, spr_spsost2;
{$R *.dfm}

procedure Tspr_spsost.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w25.Open;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w25.ReadOnly := True;
    ControlBar1.enabled := False;
  end;

end;

procedure Tspr_spsost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w25.Close;
  DataModule1.Table_w25.ReadOnly := False;
  main.enabled := True;
end;

procedure Tspr_spsost.SpeedButton5Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w25.Edit;
  spsost_up.show;
end;

procedure Tspr_spsost.SpeedButton2Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w25.Insert;
  spsost_up.show;
end;

procedure Tspr_spsost.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.Table_w25.Edit;
  if messagebox(Handle, 'Удалить ' + 'запись ' + '?', 'Подтверждение',
    mb_yesno) = 7 then
    exit;
  DataModule1.Table_w25.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w25.Refresh;

end;

procedure Tspr_spsost.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
