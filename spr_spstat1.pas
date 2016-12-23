unit spr_spstat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, DataModule;

type
  Tspr_spstat = class(TForm)
    ControlBar1: TControlBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spr_spstat: Tspr_spstat;

implementation

uses main1, spr_spstat2;
{$R *.dfm}

procedure Tspr_spstat.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tspr_spstat.SpeedButton5Click(Sender: TObject);
begin
  Enabled := False;
  DataModule1.Table_w24.Edit;
  spstat_up.show;
end;

procedure Tspr_spstat.SpeedButton2Click(Sender: TObject);
begin
  Enabled := False;
  DataModule1.Table_w24.Insert;
  spstat_up.show;
end;

procedure Tspr_spstat.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.Table_w24.Edit;
  if messagebox(Handle, 'Удалить ' + 'запись ' + '?', 'Подтверждение',
    mb_yesno) = 7 then
    exit;
  DataModule1.Table_w24.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w24.Refresh;

end;

procedure Tspr_spstat.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w24.Open;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w24.ReadOnly := True;
    ControlBar1.Enabled := False;
  end;

end;

procedure Tspr_spstat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w24.close;
  DataModule1.Table_w24.ReadOnly := False;
  main.Enabled := True;
end;

end.
