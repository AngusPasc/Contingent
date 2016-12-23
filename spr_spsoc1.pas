unit spr_spsoc1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, DataModule;

type
  Tspr_spsoc = class(TForm)
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
  spr_spsoc: Tspr_spsoc;

implementation

uses main1, spr_spsoc2;
{$R *.dfm}

procedure Tspr_spsoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w17.Close;
  DataModule1.Table_w17.ReadOnly := False;
  main.Enabled := True;
end;

procedure Tspr_spsoc.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure Tspr_spsoc.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w17.Open;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w17.ReadOnly := True;
    ControlBar1.Enabled := False;
  end;
end;

procedure Tspr_spsoc.SpeedButton5Click(Sender: TObject);
begin
  Enabled := False;
  DataModule1.Table_w17.Edit;
  spsoc_up.show;
end;

procedure Tspr_spsoc.SpeedButton2Click(Sender: TObject);
begin
  Enabled := False;
  DataModule1.Table_w17.Insert;
  spsoc_up.show;
end;

procedure Tspr_spsoc.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.Table_w17.Edit;
  if messagebox(Handle, 'Удалить ' + 'запись ' + '?', 'Подтверждение',
    mb_yesno) = 7 then
    exit;
  DataModule1.Table_w17.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w17.Refresh;
end;

end.
