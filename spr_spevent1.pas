unit spr_spevent1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, DataModule;

type
  Tspr_spevent = class(TForm)
    ControlBar1: TControlBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
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
  spr_spevent: Tspr_spevent;

implementation

uses main1, spr_spevent2;
{$R *.dfm}

procedure Tspr_spevent.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w26.Open;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w26.ReadOnly := True;
    ControlBar1.enabled := False;
  end;

end;

procedure Tspr_spevent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w26.Close;
  DataModule1.Table_w26.ReadOnly := False;
  main.enabled := True;
end;

procedure Tspr_spevent.SpeedButton5Click(Sender: TObject);
begin
  enabled := False;
  act := 2;
  DataModule1.Table_w26.Edit;
  spevent_up.show;
end;

procedure Tspr_spevent.SpeedButton2Click(Sender: TObject);
begin
  enabled := False;
  act := 1;
  DataModule1.Table_w26.Insert;
  spevent_up.show;
end;

procedure Tspr_spevent.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.Table_w26.Edit;
  if messagebox(Handle, 'Удалить ' + 'запись ' + '?', 'Подтверждение',
    mb_yesno) = 7 then
    exit;
  DataModule1.Table_w26.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w26.Refresh;

end;

procedure Tspr_spevent.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
