unit spr_spspec1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DataModule;

type
  Tspr_spspec = class(TForm)
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
  spr_spspec: Tspr_spspec;

implementation

uses main1, spr_spspec2;
{$R *.dfm}

procedure Tspr_spspec.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w35.Open;
  DataModule1.Table_w35.filter := 'pinrod<>0';
  DataModule1.Table_w35.filtered := True;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w35.ReadOnly := True;
    ControlBar1.enabled := False;
  end;

end;

procedure Tspr_spspec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w35.Close;
  DataModule1.Table_w35.ReadOnly := False;
  main.enabled := True;
end;

procedure Tspr_spspec.SpeedButton5Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w35.Edit;
  spspec_up.show;
end;

procedure Tspr_spspec.SpeedButton2Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w35.Insert;
  spspec_up.show;
end;

procedure Tspr_spspec.SpeedButton4Click(Sender: TObject);
begin
  DataModule1.Table_w35.Edit;
  if messagebox(Handle, 'Удалить ' + 'запись ' + '?', 'Подтверждение',
    mb_yesno) = 7 then
    exit;
  DataModule1.Table_w35.fieldbyname('priz').AsString := '0';
  DataModule1.Table_w35.Refresh;
end;

procedure Tspr_spspec.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
