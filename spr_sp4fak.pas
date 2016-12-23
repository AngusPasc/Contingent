unit spr_sp4fak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, DBGrids;

type
  Tstud_sp4fak = class(TForm)
    Label6: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ControlBar1: TControlBar;
    SpeedButton5: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_sp4fak: Tstud_sp4fak;
  filt: string;
  spfak, spotd: integer;

implementation

uses main1, spr_sp4fak1;
{$R *.dfm}

procedure Tstud_sp4fak.FormCreate(Sender: TObject);
begin
  DataModule1.Table_w34.IndexFieldNames := 'name';
  DataModule1.Table_w35.IndexFieldNames := 'name';
  DataModule1.Table_w33.Open;
  DataModule1.Table_w34.Open;
  DataModule1.Table_w35.Open;
  DataModule1.Table_w36.Open;
  DataModule1.Table_w33.filter := 'priz=' + '''' + '1' + '''';
  DataModule1.Table_w33.filtered := True;
  DataModule1.Table_w34.filter := 'priz=' + '''' + '1' + '''';
  DataModule1.Table_w34.filtered := True;
  DataModule1.Table_w35.filter := 'priz=' + '''' + '1' + '''';
  DataModule1.Table_w35.filtered := True;
  spotd := 6;
  filt := 'spotd=' + inttostr(spotd);
  DataModule1.Table_w36.filter := filt;
  DataModule1.Table_w36.filtered := True;
end;

procedure Tstud_sp4fak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w33.Close;
  DataModule1.Table_w34.Close;
  DataModule1.Table_w35.Close;
  DataModule1.Table_w36.Close;
  DataModule1.Table_w33.filtered := False;
  DataModule1.Table_w34.filtered := False;
  DataModule1.Table_w36.filtered := False;
  main.Enabled := True;
end;

procedure Tstud_sp4fak.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tstud_sp4fak.DBLookupComboBox1Click(Sender: TObject);
begin
  spfak := DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').asinteger;
  filt := 'spfak=' + inttostr(spfak);
  if spotd <> 0 then
    filt := filt + ' and spotd=' + inttostr(spotd);
  DataModule1.Table_w36.filter := filt;
  DataModule1.Table_w36.filtered := True;
end;

procedure Tstud_sp4fak.DBLookupComboBox2Click(Sender: TObject);
begin
  spotd := DBLookupComboBox2.Listsource.dataset.fieldbyname('pin').asinteger;
  filt := 'spotd=' + inttostr(spotd);
  if spfak <> 0 then
    filt := filt + ' and spfak=' + inttostr(spfak);
  DataModule1.Table_w36.filter := filt;
  DataModule1.Table_w36.filtered := True;
end;

procedure Tstud_sp4fak.FormActivate(Sender: TObject);
begin
  if spotd <> 0 then
  begin
    filt := 'spotd=' + inttostr(spotd);
    if spfak <> 0 then
      filt := filt + ' and spfak=' + inttostr(spfak);
    DataModule1.Table_w36.filter := filt;
    DataModule1.Table_w36.filtered := True;
  end;

end;

procedure Tstud_sp4fak.SpeedButton2Click(Sender: TObject);
begin
  act := 1;
  Enabled := False;
  Application.CreateForm(Tstud_sp4fak_up, stud_sp4fak_up);
  stud_sp4fak_up.Show;
end;

procedure Tstud_sp4fak.SpeedButton5Click(Sender: TObject);
begin
  act := 2;
  Enabled := False;
  Application.CreateForm(Tstud_sp4fak_up, stud_sp4fak_up);
  stud_sp4fak_up.Show;
end;

end.
