unit spr_spmil21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,DataModule;

type
  Tspr_spmil2 = class(TForm)
    ControlBar1: TControlBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  spr_spmil2: Tspr_spmil2;

implementation
 uses main1,spr_spmil22;
{$R *.dfm}

procedure Tspr_spmil2.SpeedButton5Click(Sender: TObject);
begin
 Enabled :=False;
 DataModule1.Table_w21.Edit;
 spmil2_up.show;
end;

procedure Tspr_spmil2.SpeedButton2Click(Sender: TObject);
begin
 Enabled :=False;
 DataModule1.Table_w21.Insert;
 spmil2_up.show;
end;

procedure Tspr_spmil2.SpeedButton4Click(Sender: TObject);
begin
 DataModule1.Table_w21.Edit;
 if  messagebox(Handle,'Удалить ' +'запись '+'?','Подтверждение',mb_yesno)=7 then exit;
 DataModule1.Table_w21.fieldbyname('priz').AsString :='0';
 DataModule1.Table_w21.Refresh;
end;

procedure Tspr_spmil2.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure Tspr_spmil2.FormActivate(Sender: TObject);
begin
 DataModule1.Table_w21.Open;
 if priz_dost<>1 then
 begin DataModule1.Table_w21.ReadOnly:=True; ControlBar1.enabled :=False; end;
end;

procedure Tspr_spmil2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.Table_w21.Close;
 DataModule1.Table_w21.ReadOnly:=False;
 main.Enabled:=True;
end;

end.
