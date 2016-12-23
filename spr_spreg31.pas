unit spr_spreg31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,datamodule;

type
  Tspgorod = class(TForm)
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
  spgorod: Tspgorod;

implementation
uses main1,spr_spreg32;
{$R *.dfm}

procedure Tspgorod.FormActivate(Sender: TObject);
begin
 DataModule1.Table46_1.Open;
 DataModule1.Table46_1.Filter:='tip=4 and priz='+'''1''';
 DataModule1.Table46_1.Filtered:=true;
 if priz_dost<>1 then
 begin DataModule1.Table46_1.ReadOnly:=True; ControlBar1.enabled :=False; end;

end;

procedure Tspgorod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.Table46_1.Close;
  DataModule1.Table46_1.ReadOnly:=False;
  DataModule1.Table46_1.Filtered:=False;
  main.Enabled:=True;
end;

procedure Tspgorod.SpeedButton5Click(Sender: TObject);
begin
 Enabled :=False;
 //DataModule1.Table46_1.Edit;
// mark:= DataModule1.Table46_1.GetBookmark;
   pin:= DataModule1.Table46_1pin.AsInteger;
 act:= 2;
 spgorod_up.show;
end;

procedure Tspgorod.SpeedButton2Click(Sender: TObject);
begin
 Enabled :=False;
// DataModule1.Table46_1.Insert;
  act:=1;
 spgorod_up.show;
end;

procedure Tspgorod.SpeedButton4Click(Sender: TObject);
begin
 DataModule1.Table46_1.Edit;
 if  messagebox(Handle,'Удалить ' +'запись '+'?','Подтверждение',mb_yesno)=7 then exit;
 DataModule1.Table46_1.fieldbyname('priz').AsString :='0';
 DataModule1.Table46_1.Refresh;
end;

procedure Tspgorod.BitBtn1Click(Sender: TObject);
begin
 close;
end;

end.
