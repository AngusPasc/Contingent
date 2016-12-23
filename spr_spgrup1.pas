unit spr_spgrup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DataModule, DateUtils,
  ComCtrls, ImgList;

type
  Tspr_spgrup = class(TForm)
    ControlBar1: TControlBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    TreeView1: TTreeView;
    Edit1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure gr_filter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  filter = record
    fo: integer;
    fak: integer;
    spec: integer;
  end;

var
  spr_spgrup: Tspr_spgrup;
  mas: array [-1 .. 60] of filter;
  n: integer;
  pr_tree: boolean;

implementation

uses main1, spr_spgrup2;
{$R *.dfm}

procedure Tspr_spgrup.FormActivate(Sender: TObject);
var
  k, i: integer; // код факультета формы обучения
begin
  if pr_tree then
    exit;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.Indexname := 'idxgrfos';
  DataModule1.Table_w33.Open;
  DataModule1.Table_w34.Open;
  DataModule1.Table_w35.Open;
  DataModule1.Table_w36.Open;
  DataModule1.Table_w36.Indexname := 'keyS4Fall';
  DataModule1.Table_w36.First;
  DataModule1.Table_w36.filter := 'priz=''1''';
  DataModule1.Table_w36.Filtered := True;
  n := DataModule1.Table_w36.RecordCount;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w37.ReadOnly := True;
    ControlBar1.enabled := False;
  end;
  i := -1;
  k := 0;

  // setlength(mas,n*sizeof(filter));
  while not DataModule1.Table_w36.Eof do
  begin
    if (i = -1) and (k = 0) then // добавили 1 факультет  и его спец-ть
    begin
      codf := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      codfo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
      TreeView1.Items.Add(Nil, DataModule1.Table_w36.fieldbyname('fak')
        .AsString);
      i := i + 1;
      k := i;
      mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      mas[i].fo := 0;
      mas[i].spec := 0;

      TreeView1.Items.AddChild(TreeView1.Items[i],
        DataModule1.Table_w36.fieldbyname('otd').AsString);
      i := i + 1;
      mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      mas[i].fo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
      mas[i].spec := 0;

      TreeView1.Items.AddChild(TreeView1.Items[i],
        DataModule1.Table_w36.fieldbyname('spec').AsString);
      i := i + 1;
      mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      mas[i].fo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
      mas[i].spec := DataModule1.Table_w36.fieldbyname('spspec').AsInteger;
    end
    else if (codf = DataModule1.Table_w36.fieldbyname('spfak').AsInteger)
    // тот же факультет
    then // добавляем еще спец-ти того же факультета
    begin
      if codfo = DataModule1.Table_w36.fieldbyname('spotd').AsInteger then
      // та же форма обучения
      begin
        TreeView1.Items.Add(TreeView1.Items[i],
          DataModule1.Table_w36.fieldbyname('spec').AsString);
        i := i + 1;
        mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
        mas[i].fo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
        mas[i].spec := DataModule1.Table_w36.fieldbyname('spspec').AsInteger;
      end
      else // сменилась форма обучения
      begin
        // i:=k;
        codfo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
        TreeView1.Items.Add(TreeView1.Items[k],
          DataModule1.Table_w36.fieldbyname('otd').AsString);
        i := i + 1;
        mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
        mas[i].fo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
        mas[i].spec := 0;

        TreeView1.Items.AddChild(TreeView1.Items[i],
          DataModule1.Table_w36.fieldbyname('spec').AsString);
        i := i + 1;
        mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
        mas[i].fo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
        mas[i].spec := DataModule1.Table_w36.fieldbyname('spspec').AsInteger;

      end
    end
    else // сменился факультет
    begin
      codf := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      codfo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
      TreeView1.Items.Add(nil, DataModule1.Table_w36.fieldbyname('fak')
        .AsString);
      i := i + 1;
      mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      mas[i].fo := 0;
      mas[i].spec := 0;

      TreeView1.Items.AddChild(TreeView1.Items[i],
        DataModule1.Table_w36.fieldbyname('otd').AsString);
      i := i + 1;
      k := i;
      mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      mas[i].fo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
      mas[i].spec := 0;

      TreeView1.Items.AddChild(TreeView1.Items[i],
        DataModule1.Table_w36.fieldbyname('spec').AsString);
      i := i + 1;
      mas[i].fak := DataModule1.Table_w36.fieldbyname('spfak').AsInteger;
      mas[i].fo := DataModule1.Table_w36.fieldbyname('spotd').AsInteger;
      mas[i].spec := DataModule1.Table_w36.fieldbyname('spspec').AsInteger;

    end;
    DataModule1.Table_w36.Next;
  end;
  DataModule1.Table_w36.Close;
  pr_tree := True;
  TreeView1.SetFocus;
end;

procedure Tspr_spgrup.gr_filter;
var
  filt1: string;
begin
  filt1 := '';
  codf := 0;
  codfo := 0;
  codspec := 0;
  if mas[n].fak <> 0 then
  begin
    filt1 := 'spfak= ' + inttostr(mas[n].fak);
    codf := mas[n].fak;
  end;
  if mas[n].fo <> 0 then
    if trim(filt1) <> '' then
    begin
      filt1 := trim(filt1) + ' and spotd=' + inttostr(mas[n].fo);
      codfo := mas[n].fo;
    end;
  if mas[n].spec <> 0 then
    if trim(filt1) <> '' then
    begin
      filt1 := trim(filt1) + ' and spspec=' + inttostr(mas[n].spec);
      codf := mas[n].spec;
    end;

  if filt1 <> '' then
    DataModule1.Table_w37.filter := filt1;
  DataModule1.Table_w37.Filtered := True;
  Edit1.Text := inttostr(DataModule1.Table_w37.RecordCount);
end;

procedure Tspr_spgrup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w37.Close;
  DataModule1.Table_w37.ReadOnly := False;
  pr_tree := False;
  main.enabled := True;
end;

procedure Tspr_spgrup.SpeedButton5Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w37.Edit;
  spgrup1_up.show;
end;

procedure Tspr_spgrup.SpeedButton2Click(Sender: TObject);
begin
  enabled := False;
  DataModule1.Table_w37.Insert;
  spgrup1_up.show;
end;

procedure Tspr_spgrup.SpeedButton4Click(Sender: TObject);
var
  ngr, godpr, god, gr: integer;
  s1: string;
begin
  DataModule1.Table7.Open;
  DataModule1.Table7.Indexname := 'grup';
  DataModule1.Table_w37.Indexname := 'grup';
  DataModule1.Table_w37.filter := 'priz=''1''';
  DataModule1.Table_w37.Filtered := True;
  While not DataModule1.Table_w37.Eof do
  begin
    gr := DataModule1.Table_w37.fieldbyname('pin').AsInteger;
    ngr := strtoint(DataModule1.Table_w37.fieldbyname('ngrup').AsString) div 10;
    if (monthof(date) > 8) and (monthof(date) <= 12) // 1 полугодие
    then
      god := yearof(date)
    else
      god := yearof(date) - 1; // 2  полугодие
    if (god mod 10) < (ngr div 10) then
      god := god - 10;
    godpr := (god div 10) * 10 + ngr;
    if not DataModule1.Table7.FindKey
      ([godpr, DataModule1.Table_w37.fieldbyname('name').AsString]) then
      DataModule1.Table_w37.Next
    else
    begin
      DataModule1.Query1.SQL.Clear;
      s1 := 'update spgrup set grup=' +
        inttostr(DataModule1.Table7.fieldbyname('cod').AsInteger) +
        ' where pin=' + inttostr(gr);
      DataModule1.Query1.SQL.Add(s1);
      DataModule1.Query1.ExecSQL;
      DataModule1.Table_w37.Next;
    end;
  end;
  DataModule1.Table7.Close;
  DataModule1.Table_w37.Refresh;
  DataModule1.Table_w37.Indexname := 'idxgrfos';
end;

procedure Tspr_spgrup.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure Tspr_spgrup.TreeView1Click(Sender: TObject);
begin
  n := TreeView1.Selected.AbsoluteIndex;
  gr_filter;
end;

procedure Tspr_spgrup.FormCreate(Sender: TObject);
begin
  pr_tree := False;
end;

end.
