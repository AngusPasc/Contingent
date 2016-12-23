unit spr_spksiva1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, DataModule;

type
  Tspr_spksiva = class(TForm)
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
  spr_spksiva: Tspr_spksiva;

implementation

uses main1, spr_spksiva2;
{$R *.dfm}

procedure Tspr_spksiva.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w14.Close;
  DataModule1.Table_w14.ReadOnly := False;
  main.Enabled := True;
end;

procedure Tspr_spksiva.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure Tspr_spksiva.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w14.Open;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w14.ReadOnly := True;
    ControlBar1.Enabled := False;
  end;
end;

procedure Tspr_spksiva.SpeedButton5Click(Sender: TObject);
begin
  Enabled := False;
  DataModule1.Table_w14.Edit;
  spksiva_up.show;
end;

procedure Tspr_spksiva.SpeedButton2Click(Sender: TObject);
begin
  Enabled := False;
  DataModule1.Table_w14.Insert;
  spksiva_up.show;
end;

procedure Tspr_spksiva.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.Table_w14.Edit;
  if messagebox(Handle, 'Удалить ' + 'запись ' + '?', 'Подтверждение',
    mb_yesno) = 7 then
    exit;
  DataModule1.Table_w14.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w14.Refresh;
end;

end.
