unit spr_spfak1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DataModule;

type
  Tspr_spfak = class(TForm)
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
  spr_spfak: Tspr_spfak;

implementation

uses main1, spr_spfak2;
{$R *.dfm}

procedure Tspr_spfak.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w34.Open;
  DataModule1.Table_w34.filter := 'pinrod=0';
  DataModule1.Table_w34.filtered := True;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w34.ReadOnly := True;
    ControlBar1.enabled := False;
  end;

end;

procedure Tspr_spfak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w34.Close;
  DataModule1.Table_w34.ReadOnly := False;
  main.enabled := True;
end;

procedure Tspr_spfak.SpeedButton5Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w34.Edit;
  spfak_up.show;
end;

procedure Tspr_spfak.SpeedButton2Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w34.Insert;
  spfak_up.show;
end;

procedure Tspr_spfak.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.Table_w34.Edit;
  if messagebox(Handle, 'Удалить ' + 'запись ' + '?', 'Подтверждение',
    mb_yesno) = 7 then
    exit;
  DataModule1.Table_w34.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w34.Refresh;
end;

procedure Tspr_spfak.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
