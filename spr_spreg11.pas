unit spr_spreg11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,datamodule;

type
  Tspregion = class(TForm)
    ControlBar1: TControlBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
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
  spregion: Tspregion;

implementation

uses spr_spreg12, main1;

{$R *.dfm}

procedure Tspregion.FormActivate(Sender: TObject);
begin
 DataModule1.Table46_1.Open;
 DataModule1.Table46_1.Filter:='tip=2 and priz='+'''1''';
 DataModule1.Table46_1.Filtered:=true;
 if priz_dost<>1 then
 begin DataModule1.Table46_1.ReadOnly:=True; ControlBar1.enabled :=False; end;

end;

procedure Tspregion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.Table46_1.Close;
 DataModule1.Table46_1.ReadOnly:=False;
 DataModule1.Table46_1.Filtered:=False;
 main.Enabled:=True;
end;

procedure Tspregion.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure Tspregion.SpeedButton5Click(Sender: TObject);
begin
 Enabled :=False;
 pin:= DataModule1.Table46_1pin.AsInteger;
 act:= 2;
 spregion_up.show;
end;

procedure Tspregion.SpeedButton2Click(Sender: TObject);
begin
 Enabled :=False;
 act:=1;
 spregion_up.show;
end;

procedure Tspregion.SpeedButton4Click(Sender: TObject);
begin
 DataModule1.Table46_1.Edit;
 if  messagebox(Handle,'Удалить ' +'запись '+'?','Подтверждение',mb_yesno)=7 then exit;
 DataModule1.Table46_1.fieldbyname('priz').AsString :='0';
 DataModule1.Table46_1.Refresh;
end;

end.
