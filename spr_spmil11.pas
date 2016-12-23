unit spr_spmil11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,DataModule;

type
  Tspr_spmil1 = class(TForm)
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
  spr_spmil1: Tspr_spmil1;

implementation
 uses main1,spr_spmil12;
{$R *.dfm}

procedure Tspr_spmil1.FormActivate(Sender: TObject);
begin
 DataModule1.Table_w20.Open;
 if priz_dost<>1 then
 begin DataModule1.Table_w20.ReadOnly:=True; ControlBar1.enabled :=False; end;

end;

procedure Tspr_spmil1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w20.Close;
  DataModule1.Table_w20.ReadOnly:=False;
  main.Enabled:=True;

end;

procedure Tspr_spmil1.SpeedButton5Click(Sender: TObject);
begin
 Enabled :=False;
 DataModule1.Table_w20.Edit;
 spmil1_up.show;
end;

procedure Tspr_spmil1.SpeedButton2Click(Sender: TObject);
begin
 Enabled :=False;
 DataModule1.Table_w20.Insert;
 spmil1_up.show;
end;

procedure Tspr_spmil1.SpeedButton4Click(Sender: TObject);
begin
 DataModule1.Table_w20.Edit;
 if  messagebox(Handle,'Удалить ' +'запись '+'?','Подтверждение',mb_yesno)=7 then exit;
 DataModule1.Table_w20.fieldbyname('priz').AsString :='0';
 DataModule1.Table_w20.Refresh;

end;

procedure Tspr_spmil1.BitBtn1Click(Sender: TObject);
begin
 close;
end;

end.
