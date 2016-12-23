unit spr_spmil31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,DataModule;

type
  Tspr_spmil3 = class(TForm)
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
  spr_spmil3: Tspr_spmil3;

implementation
 uses main1,spr_spmil32;
{$R *.dfm}

procedure Tspr_spmil3.FormActivate(Sender: TObject);
begin
 DataModule1.Table_w22.Open;
 if priz_dost<>1 then
 begin DataModule1.Table_w22.ReadOnly:=True; ControlBar1.enabled :=False; end;
end;

procedure Tspr_spmil3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.Table_w22.Close;
  DataModule1.Table_w22.ReadOnly:=False;
  main.Enabled:=True;
end;

procedure Tspr_spmil3.SpeedButton5Click(Sender: TObject);
begin
 Enabled :=False;
 DataModule1.Table_w22.Edit;
 spmil3_up.show;
end;

procedure Tspr_spmil3.SpeedButton2Click(Sender: TObject);
begin
 Enabled :=False;
 DataModule1.Table_w22.Insert;
 spmil3_up.show;
end;

procedure Tspr_spmil3.SpeedButton4Click(Sender: TObject);
begin
 DataModule1.Table_w22.Edit;
 if  messagebox(Handle,'Удалить ' +'запись '+'?','Подтверждение',mb_yesno)=7 then exit;
 DataModule1.Table_w22.fieldbyname('priz').AsString :='0';
 DataModule1.Table_w22.Refresh;
end;

procedure Tspr_spmil3.BitBtn1Click(Sender: TObject);
begin
 close;
end;

end.
