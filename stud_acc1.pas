unit stud_acc1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, OleServer, ComObj, WordXP;

type
  Tstud_acc = class(TForm)
    Button1: TButton;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    TreeView1: TTreeView;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit9: TEdit;
    Label9: TLabel;
    Edit10: TEdit;
    Label10: TLabel;
    Edit11: TEdit;
    Label11: TLabel;
    Edit12: TEdit;
    Panel4: TPanel;
    Label12: TLabel;
    Edit13: TEdit;
    Label13: TLabel;
    Edit14: TEdit;
    Label14: TLabel;
    Edit15: TEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Panel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit20: TEdit;
    Label22: TLabel;
    Edit21: TEdit;
    Label23: TLabel;
    Edit22: TEdit;
    Panel6: TPanel;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    Label24: TLabel;
    Edit1: TEdit;
    Edit24: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Edit25: TEdit;
    Label27: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Label28: TLabel;
    DBLookupComboBox18: TDBLookupComboBox;
    DBLookupComboBox17: TDBLookupComboBox;
    DBLookupComboBox16: TDBLookupComboBox;
    DBLookupComboBox14: TDBLookupComboBox;
    DBLookupComboBox19: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Label29: TLabel;
    Edit7: TEdit;
    Label30: TLabel;
    Edit16: TEdit;
    BitBtn3: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    Label31: TLabel;
    Edit17: TEdit;
    Label32: TLabel;
    Edit19: TEdit;
    DBGrid3: TDBGrid;
    Button5: TButton;
    Button6: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Label33: TLabel;
    Edit23: TEdit;
    Label34: TLabel;
    Edit26: TEdit;
    DBGrid4: TDBGrid;
    Button7: TButton;
    Edit37: TEdit;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    DBLookupComboBox15: TDBLookupComboBox;
    Label46: TLabel;
    Edit38: TEdit;
    Button14: TButton;
    Button15: TButton;
    BitBtn4: TBitBtn;
    Button16: TButton;
    Button17: TButton;
    Label52: TLabel;
    Edit39: TEdit;
    BitBtn2: TBitBtn;
    Button18: TButton;
    BitBtn5: TBitBtn;
    newDoc: TWordDocument;
    WordApp: TWordApplication;
    DBLookupComboBox5: TDBLookupComboBox;
    CheckBox1: TCheckBox;

    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure acc_filter;
    procedure PageControl3Change(Sender: TObject);
    procedure SpinEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure TabSheet3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    // procedure DBLookupComboBox4Click(Sender: TObject);
    // procedure DBLookupComboBox5Click(Sender: TObject);
    // procedure DBLookupComboBox6Click(Sender: TObject);
    // procedure DBLookupComboBox7Click(Sender: TObject);
    // procedure DBLookupComboBox8Click(Sender: TObject);
    // procedure DBLookupComboBox9Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit37Change(Sender: TObject);
    procedure Edit37KeyPress(Sender: TObject; var Key: Char);
    procedure Button11Click(Sender: TObject);
    // procedure DBLookupComboBox7Enter(Sender: TObject);
    // procedure DBLookupComboBox8Enter(Sender: TObject);
    // procedure DBLookupComboBox9Enter(Sender: TObject);
    // procedure DBLookupComboBox7DropDown(Sender: TObject);
    // procedure DBLookupComboBox8DropDown(Sender: TObject);
    // procedure DBLookupComboBox9DropDown(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure DBLookupComboBox18Click(Sender: TObject);
    procedure DBLookupComboBox17Click(Sender: TObject);
    procedure DBLookupComboBox16Click(Sender: TObject);
    procedure DBLookupComboBox15Click(Sender: TObject);
    procedure DBLookupComboBox19Click(Sender: TObject);
    procedure DBLookupComboBox14Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox4DropDown(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button18Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  filter = record
    fo: Integer;
    fak: Integer;
    spec: Integer;
  end;

var
  stud_acc: Tstud_acc;
  mas: array [-1 .. 100] of filter;
  n, sost, status, gruppa, kurs, lgota: Integer;
  str_d, filt1, filt2, filt3, s1, s2, s3, s4, fam, vfam, stud_name: string;
  pr_tree: Boolean;
  num_page, act_war, kadr, med: Integer; // номер закладки с которой работали
  // w: char;   // для ВУС
  kd1, kd2, kd3, kd4, kd5, kd6, kd7: string; // для кадров
  pin_w6: longint; // pin текущей записи в table_w6
  ageog, areg1, areg2, areg3, areg4: Integer;

implementation

uses password, main1, stud_moves1, stud_fam1, stud_good1, stud_del1,
  // stud_del2,
  prakt_progress1, stud_moves2, stud_moves3, stud_acc2, stud_acc3, stud_fak4,
  stud_moves4, geog, uDeaneryTools;
{$R *.dfm}

procedure Tstud_acc.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_acc.FormCreate(Sender: TObject);
begin
  if podrcod = '09' then
  begin
    spfak := 57;
    krfak := 'ГЭФ';
    fak_name := 'Гуманитарно-экономический';
    rukfak := trim(DataModule1.Table101.FieldByName('fiorin').AsString)
  end; // ГЭФ
  if podrcod = '60' then
  begin
    spfak := 98;
    krfak := 'ТФ';
    fak_name := 'Технический';
    rukfak := 'А.В.Шашок'
  end; // ТФ
  // rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString)end;//ТФ
  if podrcod = '010' then
  begin
    spfak := 65;
    krfak := 'ФЗФО';
    fak_name := 'заочной формы обучения';
    rukfak := trim(DataModule1.Table101.FieldByName('fiorin').AsString)
  end; // ГЭФ

  if priz_dost <> 1 then
  begin
    DataModule1.Table_w1.ReadOnly := True;
    DataModule1.Table_w2.ReadOnly := True;
    DataModule1.Table_w3.ReadOnly := True;
    DataModule1.Table_w4.ReadOnly := True;
    DataModule1.Table_w5.ReadOnly := True;
    DataModule1.Table_w6.ReadOnly := True;
  end;
  DataModule1.Table_w6.IndexName := 'idxmovacc';

  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w3.Open;
  DataModule1.Table_w4.Open;
  DataModule1.Table_w5.Open;
  DataModule1.Table_w6.Open;
  DataModule1.snvnek.Open;
  DataModule1.spschool.IndexFieldNames := 'name';
  DataModule1.spschool.Open;
  DataModule1.spschool.filter := 'priz=' + '''' + '1' + '''';
  DataModule1.spschool.Filtered := True;
  // DataModule1.Table46_1.Open;
  pr_tree := False;
end;

procedure Tstud_acc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // FreeMem(mas,n*sizeof(filter));

  DataModule1.Table_w1.close;
  DataModule1.Table_w2.close;
  DataModule1.Table_w3.close;
  DataModule1.Table_w4.close;
  DataModule1.Table_w5.close;
  DataModule1.Table_w6.close;
  DataModule1.Table_w14.close;
  DataModule1.Table_w15.close;
  DataModule1.Table_w16.close;
  DataModule1.Table_w17.close;
  DataModule1.Table_w18.close;
  DataModule1.spschool.close;
  DataModule1.Table_w23.close; // DataModule1.Table46_1.Close;
  DataModule1.Table_w24.close;
  DataModule1.Table_w25.close;
  DataModule1.Table_w37.close;
  DataModule1.snvnek.close;
  DataModule1.Table_w1.filter := 'deperson<>1';
  DataModule1.Table_w1.Filtered := True;
  DataModule1.Table_w4.Filtered := False;
  DataModule1.Table_w5.Filtered := False;
  DataModule1.Table_w6.Filtered := False;
  pr_tree := False;
  main.Enabled := True;
end;

procedure Tstud_acc.FormActivate(Sender: TObject);
var
  k, i, codf, codfo: Integer; // код факультета формы обучения
begin

  if (podrcod = '41') or (podrcod = '02') then
  begin // ЦВР   и зам директора по УР
    BitBtn3.Hide;
    Button16.Enabled := False;
    Button17.Enabled := False;
    Button2.Enabled := False;
    Button3.Enabled := False;
    Button4.Enabled := False;
    Button11.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
    Button7.Enabled := False;
    Button15.Enabled := False;
    Button8.Enabled := False;
    Button9.Enabled := False;
    Button10.Enabled := False;
    // Bitbtn2.Hide;

  end;
  if pr_tree then
  begin
    case num_page of
      1:
        PageControl3.ActivePage := TabSheet1;
      3:
        PageControl3.ActivePage := TabSheet3;
      4:
        PageControl3.ActivePage := TabSheet4;
      5:
        PageControl3.ActivePage := TabSheet5;
    end;
    exit; // дерево уже создано
  end;
  if priz_dost <> 1 then
  begin
    DataModule1.Table_w1.ReadOnly := True; // acc
    DataModule1.Table_w2.ReadOnly := True; // acckadr
    DataModule1.Table_w3.ReadOnly := True; // accwar
    DataModule1.Table_w4.ReadOnly := True; // accfam
    DataModule1.Table_w5.ReadOnly := True; // accgood
    DataModule1.Table_w6.ReadOnly := True; // moves
  end;
  PageControl3.ActivePage := TabSheet1;
  DataModule1.Table_w6.IndexName := 'idxmovacc';
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w37.IndexFieldNames := 'name';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w3.Open;
  DataModule1.Table_w4.Open;
  DataModule1.Table_w5.Open;
  DataModule1.Table_w6.Open;
  DataModule1.Table_w14.Open;
  DataModule1.Table_w15.Open;
  DataModule1.Table_w16.Open;
  DataModule1.Table_w17.Open;
  DataModule1.Table_w18.Open; // DataModule1.Table_w19.Open;
  DataModule1.Table_w20.Open;
  DataModule1.Table_w21.Open;
  DataModule1.Table_w22.Open;
  DataModule1.Table_w23.Open;
  DataModule1.Table_w24.Open;
  DataModule1.Table_w25.Open;
  DataModule1.Table_w37.Open;
  DataModule1.spschool.Open;
  // DataModule1.snvnek.Open;
  // pr_tree := False;

  DataModule1.Table_w37.Filtered := False;
  i := -1;
  k := 0;
  DataModule1.Table_w33.Open;
  DataModule1.Table_w34.Open;
  DataModule1.Table_w36.Open;
  DataModule1.Table_w36.IndexName := 'keyS4Fall';
  DataModule1.Table_w36.First;
  DataModule1.Table_w36.filter := 'priz=''1''';
  DataModule1.Table_w36.Filtered := True;
  n := DataModule1.Table_w36.RecordCount;
  // setlength(mas,n*sizeof(filter));
  TreeView1.Items.Add(Nil, 'весь список');
  i := i + 1;
  k := i;
  mas[i].fak := 0;
  mas[i].fo := 0;
  mas[i].spec := 0;
  while not DataModule1.Table_w36.Eof do
  begin
    if (i = 0) and (k = 0) then // добавили 1 факультет  и его спец-ть
    begin
      codf := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
      codfo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
      TreeView1.Items.Add(Nil, DataModule1.Table_w36.FieldByName('fak')
        .AsString);
      i := i + 1;
      k := i;
      mas[i].fak := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
      mas[i].fo := 0;
      mas[i].spec := 0;

      TreeView1.Items.AddChild(TreeView1.Items[i],
        DataModule1.Table_w36.FieldByName('otd').AsString);
      i := i + 1;
      mas[i].fak := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
      mas[i].fo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
      mas[i].spec := 0;

      TreeView1.Items.AddChild(TreeView1.Items[i],
        DataModule1.Table_w36.FieldByName('spec').AsString);
      k := i;
      i := i + 1;
      mas[i].fak := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
      mas[i].fo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
      mas[i].spec := DataModule1.Table_w36.FieldByName('spspec').AsInteger;
    end
    else if (codf = DataModule1.Table_w36.FieldByName('spfak').AsInteger)
    // тот же факультет
    then // добавляем еще спец-ти того же факультета
    begin
      if codfo = DataModule1.Table_w36.FieldByName('spotd').AsInteger then
      // та же форма обучения
      begin
        TreeView1.Items.Add(TreeView1.Items[i],
          DataModule1.Table_w36.FieldByName('spec').AsString);
        i := i + 1;
        mas[i].fak := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
        mas[i].fo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
        mas[i].spec := DataModule1.Table_w36.FieldByName('spspec').AsInteger;
      end
      else // сменилась форма обучения
      begin
        // i:=k;
        codfo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
        TreeView1.Items.Add(TreeView1.Items[k],
          DataModule1.Table_w36.FieldByName('otd').AsString);
        i := i + 1;
        mas[i].fak := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
        mas[i].fo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
        mas[i].spec := 0;

        TreeView1.Items.AddChild(TreeView1.Items[i],
          DataModule1.Table_w36.FieldByName('spec').AsString);
        i := i + 1;
        mas[i].fak := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
        mas[i].fo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
        mas[i].spec := DataModule1.Table_w36.FieldByName('spspec').AsInteger;

      end
    end
    else // сменился факультет
    begin
      codf := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
      codfo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
      TreeView1.Items.Add(nil, DataModule1.Table_w36.FieldByName('fak')
        .AsString);
      i := i + 1;
      mas[i].fak := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
      mas[i].fo := 0;
      mas[i].spec := 0;

      TreeView1.Items.AddChild(TreeView1.Items[i],
        DataModule1.Table_w36.FieldByName('otd').AsString);
      i := i + 1;
      k := i;
      mas[i].fak := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
      mas[i].fo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
      mas[i].spec := 0;

      TreeView1.Items.AddChild(TreeView1.Items[i],
        DataModule1.Table_w36.FieldByName('spec').AsString);
      i := i + 1;
      mas[i].fak := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
      mas[i].fo := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
      mas[i].spec := DataModule1.Table_w36.FieldByName('spspec').AsInteger;

    end;
    DataModule1.Table_w36.Next;
  end;
  DataModule1.Table_w36.close;
  DataModule1.Table_w36.Filtered := False;
  pr_tree := True;
  n := 0;
  TreeView1.SetFocus;
  Edit1.SetFocus;
end;

procedure Tstud_acc.acc_filter;
begin
  if n = 0 then
    DataModule1.Table_w37.Filtered := False;
  filt3 := '';
  if lgota <> 0 then
    filt3 := ' and lgota=' + inttostr(lgota);
  filt1 := '';
  if mas[n].fak <> 0 then
    filt1 := 'spfak= ' + inttostr(mas[n].fak);
  if mas[n].fo <> 0 then
    if trim(filt1) <> '' then
      filt1 := trim(filt1) + ' and spotd=' + inttostr(mas[n].fo);
  if mas[n].spec <> 0 then
    if trim(filt1) <> '' then
      filt1 := trim(filt1) + ' and spspec=' + inttostr(mas[n].spec);
  filt2 := '';
  if gruppa <> 0 then
    filt2 := 'spgrup=' + inttostr(gruppa);
  if sost <> 0 then
    if trim(filt2) <> '' then
      filt2 := trim(filt2) + ' and spsost=' + inttostr(sost)
    else
      filt2 := 'spsost=' + inttostr(sost);
  if status <> 0 then
    if trim(filt2) <> '' then
      filt2 := trim(filt2) + ' and spstatus=' + inttostr(status)
    else
      filt2 := 'spstatus=' + inttostr(status);
  if kurs <> 0 then
    if trim(filt2) <> '' then
      filt2 := trim(filt2) + ' and kurs=' + inttostr(kurs)
    else
      filt2 := 'kurs=' + inttostr(kurs);

  if filt1 = '' then
    if filt2 = '' then
    begin
      DataModule1.Table_w1.filter := 'deperson<>1' + filt3;
      DataModule1.Table_w1.Filtered := True;
    end
    else
    begin
      DataModule1.Table_w1.filter := 'deperson<>1 and ' + filt2 + filt3;
      DataModule1.Table_w1.Filtered := True;
    end
  else if filt2 = '' then
  begin
    DataModule1.Table_w1.filter := 'deperson<>1 and ' + filt1 + filt3;
    DataModule1.Table_w1.Filtered := True;
  end
  else
  begin
    DataModule1.Table_w1.filter := 'deperson<>1 and ' + trim(filt1) + ' and ' +
      trim(filt2) + filt3;
    DataModule1.Table_w1.Filtered := True;
  end;
  Edit1.Text := inttostr(DataModule1.Table_w1.RecordCount);

  if not DataModule1.Table_w1.FindKey([fam, vfam, stud_pin]) then
    DataModule1.Table_w1.First;
end;

procedure Tstud_acc.TreeView1Click(Sender: TObject);
begin
  n := TreeView1.Selected.AbsoluteIndex;
  acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox3Click(Sender: TObject);
begin
  status := DBLookupComboBox3.Listsource.dataset.FieldByName('pin').AsInteger;
  acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox2Click(Sender: TObject);
begin
  sost := DBLookupComboBox2.Listsource.dataset.FieldByName('pin').AsInteger;
  acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox1Click(Sender: TObject);
begin
  gruppa := DBLookupComboBox1.Listsource.dataset.FieldByName('pin').AsInteger;
  DataModule1.Table_w37.Filtered := False;
  acc_filter;
end;

procedure Tstud_acc.BitBtn1Click(Sender: TObject);
begin
  DBLookupComboBox1.Font.Color := clWindow;
  gruppa := 0;
  DBLookupComboBox2.Font.Color := clWindow;
  sost := 0;
  DBLookupComboBox3.Font.Color := clWindow;
  status := 0;
  DBLookupComboBox4.Font.Color := clWindow;
  lgota := 0;
  SpinEdit1.Value := 0;
  Edit37.Text := '';
  kurs := 0;
  DataModule1.Table_w1.filter := 'deperson<>1';
  DataModule1.Table_w1.Filtered := True;
  // acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox1DropDown(Sender: TObject);
begin
  DataModule1.Table_w37.filter := filt1;
  DataModule1.Table_w37.Filtered := True;
  DBLookupComboBox1.Font.Color := clBlack;
  // DBLookupComboBox1.Font.Color :=clNone;
end;

procedure Tstud_acc.DBLookupComboBox2DropDown(Sender: TObject);
begin
  DBLookupComboBox2.Font.Color := clBlack;
end;

procedure Tstud_acc.DBLookupComboBox3DropDown(Sender: TObject);
begin
  DBLookupComboBox3.Font.Color := clBlack;
end;

procedure Tstud_acc.SpinEdit1Change(Sender: TObject);
begin
  kurs := SpinEdit1.Value;
  acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 46) or (Key = 8) then
  begin
    DBLookupComboBox1.Font.Color := clWindow;
    gruppa := 0;
    acc_filter;
    DBLookupComboBox2.SetFocus;
  end;
end;

procedure Tstud_acc.DBLookupComboBox2Enter(Sender: TObject);
begin
  if DBLookupComboBox1.Font.Color = clWindow then
    DBLookupComboBox1.Font.Color := clWindow;
end;

procedure Tstud_acc.DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 46) or (Key = 8) then
  begin
    DBLookupComboBox2.Font.Color := clWindow;
    sost := 0;
    acc_filter;
    DBLookupComboBox3.SetFocus;
  end;
end;

procedure Tstud_acc.DBLookupComboBox3Enter(Sender: TObject);
begin
  if DBLookupComboBox2.Font.Color = clWindow then
    DBLookupComboBox2.Font.Color := clWindow;
end;

procedure Tstud_acc.DBLookupComboBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 46) or (Key = 8) then
  begin
    DBLookupComboBox3.Font.Color := clWindow;
    status := 0;
    acc_filter;
    DBLookupComboBox1.SetFocus;
  end;
end;

procedure Tstud_acc.DBLookupComboBox1Enter(Sender: TObject);
begin
  if DBLookupComboBox3.Font.Color = clWindow then
    DBLookupComboBox3.Font.Color := clWindow;
end;

procedure Tstud_acc.PageControl3Change(Sender: TObject);
begin
  fam := DataModule1.Table_w1.FieldByName('fam').AsString;
  vfam := DataModule1.Table_w1.FieldByName('name').AsString;
  stud_pin := DataModule1.Table_w1.FieldByName('pin').AsInteger;
  stud_fio := trim(DataModule1.Table_w1.FieldByName('fam').AsString);
  stud_fio := trim(stud_fio) + ' ' +
    trim(DataModule1.Table_w1.FieldByName('name').AsString) + ' ';
  stud_fio := trim(stud_fio) + ' ' +
    trim(DataModule1.Table_w1.FieldByName('vname').AsString);
  stud_gr := trim(DataModule1.Table_w1.FieldByName('gruppa').AsString);
  stud_ls := trim(DataModule1.Table_w1.FieldByName('ls').AsString);
  stud_zb := trim(DataModule1.Table_w1.FieldByName('zachbook').AsString);

  if (DataModule1.Table_w1.FieldByName('lgota').AsInteger > 0) then
  begin
    CheckBox1.Checked := True;
    DBLookupComboBox5.Enabled := True;
    // dblookupCombobox5.ListFieldIndex:=DataModule1.Table_w1.FieldByname('lgota').asinteger+1;
  end
  else
  begin
    CheckBox1.Checked := False;
    DBLookupComboBox5.Enabled := False;
  end;

  if podrcod = '11_1' then // ВУС
  begin
    TabSheet2.Enabled := False;
    TabSheet3.Enabled := False;
    TabSheet4.Enabled := False;
    TabSheet5.Enabled := False;
  end;

  if podrcod = '23' then // отдел практики и трудоустройства
  begin
    TabSheet2.Enabled := False;
    TabSheet3.Enabled := False;
    TabSheet4.Enabled := False;
    TabSheet5.Enabled := False;
    // Tabsheet6.Enabled:=false;
  end;

  if PageControl3.ActivePage = TabSheet1 then // вкладка 1 - список студентов
  begin
    num_page := 1;
    DataModule1.Table_w1.IndexName := 'idxaccfam';
    acc_filter;
    // if not DataModule1.Table_w1.FindKey([stud_pin]) then
    // DataModule1.Table_w1.First;
  end;

  if PageControl3.ActivePage = TabSheet2 then // вкладка 2 - сведения о студенте
  begin
    Edit2.Text := DataModule1.Table_w1.FieldByName('ls').AsString;
    Edit3.Text := DataModule1.Table_w1.FieldByName('zachBook').AsString;
    Edit4.Text := DataModule1.Table_w1.FieldByName('fam').AsString;
    Edit5.Text := DataModule1.Table_w1.FieldByName('name').AsString;
    Edit6.Text := DataModule1.Table_w1.FieldByName('vname').AsString;
    Edit38.Text := DataModule1.Table_w1.FieldByName('godpr').AsString;
    DBLookupComboBox18.DataSource := DataModule1.DataSource_w2; // гражданство
    DBLookupComboBox18.DataField := 'spcitiz';
    DBLookupComboBox17.DataSource := DataModule1.DataSource_w2; // соц.положение
    DBLookupComboBox17.DataField := 'spsoc';
    DBLookupComboBox16.DataSource := DataModule1.DataSource_w2; // категория
    DBLookupComboBox16.DataField := 'spkat';
    DBLookupComboBox15.DataSource := DataModule1.DataSource_w2; // ин.яз
    DBLookupComboBox15.DataField := 'splang';
    DBLookupComboBox19.DataSource := DataModule1.DataSource_w2; // уч.заведение
    DBLookupComboBox19.DataField := 'spschool';
    DBLookupComboBox14.DataSource := DataModule1.DataSource_w2;
    // документ личности
    DBLookupComboBox14.DataField := 'spksiva';
    DBLookupComboBox5.DataSource := DataModule1.DataSource_w1; // гражданство
    DBLookupComboBox5.DataField := 'lgota';

    DataModule1.Table_w2.IndexName := 'idxkadacc'; // поиск pin студента
    if not DataModule1.Table_w2.FindKey([stud_pin]) then
    begin
      kadr := 1; // добавление
      Edit8.Text := '';
      Edit9.Text := '';
      Edit10.Text := '';
      Edit11.Text := '';
      Edit12.Text := '';
      Edit13.Text := '';
      Edit14.Text := '';
      Edit15.Text := '';
      Edit20.Text := '';
      Edit21.Text := '';
      Edit22.Text := '';
      Edit24.Text := '';
      Edit25.Text := '';
      Edit39.Text := '';
      RadioButton1.Checked := True;
      RadioButton2.Checked := False;
      RadioButton5.Checked := True;
      RadioButton6.Checked := False;
      kd1 := '';
      DBLookupComboBox18.DataSource := nil;
      kd2 := '';
      DBLookupComboBox17.DataSource := nil;
      kd3 := '';
      DBLookupComboBox16.DataSource := nil;
      kd4 := '';
      DBLookupComboBox15.DataSource := nil;
      kd5 := '';
      DBLookupComboBox19.DataSource := nil;
      kd6 := '';
      DBLookupComboBox14.DataSource := nil;
      kd7 := '';
      DBLookupComboBox5.DataSource := nil;

    end
    else
    begin
      kadr := 2; // редактирование
      if DataModule1.Table_w2.FieldByName('sex').AsString = '1' then
      begin
        RadioButton1.Checked := True;
        RadioButton2.Checked := False;
        Label20.Caption := 'Окончил';
      end
      else
      begin
        RadioButton2.Checked := True;
        RadioButton1.Checked := False;
        Label20.Caption := 'Окончила';
      end;

      if DataModule1.Table_w2.FieldByName('hostel').AsString = '1' then
      begin
        RadioButton5.Checked := True;
        RadioButton6.Checked := False;
      end
      else
      begin
        RadioButton6.Checked := True;
        RadioButton5.Checked := False;
      end;

      Edit8.Text := DataModule1.Table_w2.FieldByName('pasnum').AsString;
      Edit9.Text := DataModule1.Table_w2.FieldByName('pasdate').AsString;
      Edit10.Text := DataModule1.Table_w2.FieldByName('paswho').AsString;

      Edit11.Text := DataModule1.Table_w2.FieldByName('dat_ro').AsString;
      Edit12.Text := DataModule1.Table_w2.FieldByName('mes_ro').AsString;

      Edit13.Text := DataModule1.Table_w2.FieldByName('address').AsString;
      Edit14.Text := DataModule1.Table_w2.FieldByName('registr').AsString;
      Edit15.Text := DataModule1.Table_w2.FieldByName('phone').AsString;
      Edit39.Text := DataModule1.Table_w2.FieldByName('mobphone').AsString;

      Edit20.Text := DataModule1.Table_w2.FieldByName('mesjob').AsString;
      Edit21.Text := DataModule1.Table_w2.FieldByName('doljob').AsString;
      Edit22.Text := DataModule1.Table_w2.FieldByName('teljob').AsString;

      Edit24.Text := DataModule1.Table_w2.FieldByName('schoolpr').AsString;
      Edit25.Text := DataModule1.Table_w2.FieldByName('schoolgod').AsString;

      if DataModule1.Table_w2.FieldByName('spcitiz').AsString <> '' then
        kd1 := DataModule1.Table_w2.FieldByName('spcitiz').AsString
      else
      begin
        kd1 := '';
        DBLookupComboBox18.DataSource := nil;
      end;
      if DataModule1.Table_w2.FieldByName('spsoc').AsString <> '' then
        kd2 := DataModule1.Table_w2.FieldByName('spsoc').AsString
      else
      begin
        kd2 := '';
        DBLookupComboBox17.DataSource := nil;
      end;
      if DataModule1.Table_w2.FieldByName('spkat').AsString <> '' then
        kd3 := DataModule1.Table_w2.FieldByName('spkat').AsString
      else
      begin
        kd3 := '';
        DBLookupComboBox16.DataSource := nil;
      end;
      if DataModule1.Table_w2.FieldByName('splang').AsString <> '' then
        kd4 := DataModule1.Table_w2.FieldByName('splang').AsString
      else
      begin
        kd4 := '';
        DBLookupComboBox15.DataSource := nil;
      end;
      if DataModule1.Table_w2.FieldByName('spschool').AsString <> '' then
        kd5 := DataModule1.Table_w2.FieldByName('spschool').AsString
      else
      begin
        kd5 := '';
        DBLookupComboBox19.DataSource := nil;
      end;
      if DataModule1.Table_w2.FieldByName('spksiva').AsString <> '' then
        kd6 := DataModule1.Table_w2.FieldByName('spksiva').AsString
      else
      begin
        kd6 := '';
        DBLookupComboBox14.DataSource := nil;
      end;
      if DataModule1.Table_w1.FieldByName('lgota').AsString <> '' then
        kd7 := DataModule1.Table_w1.FieldByName('lgota').AsString
      else
      begin
        // kd1:='';
        DBLookupComboBox18.DataSource := nil;
      end;
    end;
    If priz_dost = 1 // доступ на редактирование
    then
    begin
      Edit2.ReadOnly := False;
      Edit3.ReadOnly := False;
      Edit8.ReadOnly := False;
      Edit9.ReadOnly := False;
      Edit10.ReadOnly := False;
      Edit11.ReadOnly := False;
      Edit12.ReadOnly := False;
      Edit13.ReadOnly := False;
      Edit14.ReadOnly := False;
      Edit15.ReadOnly := False;
      Edit20.ReadOnly := False;
      Edit21.ReadOnly := False;
      Edit22.ReadOnly := False;
      Edit24.ReadOnly := False;
      Edit25.ReadOnly := False;
      Edit39.ReadOnly := False;
      DBLookupComboBox18.ReadOnly := False;
      DBLookupComboBox14.ReadOnly := False;
      DBLookupComboBox17.ReadOnly := False;
      DBLookupComboBox15.ReadOnly := False;
      DBLookupComboBox16.ReadOnly := False;
      DBLookupComboBox19.ReadOnly := False;
      GroupBox1.Enabled := True;
      RadioGroup1.Enabled := True;
      RadioButton1.Enabled := True;
      RadioButton2.Enabled := True;
      BitBtn3.Enabled := True;
      DBLookupComboBox5.ReadOnly := False;
    end;
    num_page := 2;
  end;

  if PageControl3.ActivePage = TabSheet3 then // вкладка 3 - приказы по студенту
  begin
    if priz_dost <> 1 then
    begin
      Button2.Enabled := False;
      Button3.Enabled := False;
      Button4.Enabled := False;
    end;
    Edit7.Text := stud_fio;
    Edit16.Text := stud_gr;
    DataModule1.Table_w6.filter := 'acc=' + inttostr(stud_pin);
    DataModule1.Table_w6.Filtered := True;
    num_page := 3;
  end;

  if PageControl3.ActivePage = TabSheet4 then
  // вкладка 4 - смена фамилии (паспорта)
  begin
    if priz_dost <> 1 then
    begin
      Button5.Enabled := False;
      Button6.Enabled := False;
    end;
    Edit17.Text := stud_fio;
    Edit19.Text := stud_gr;
    DataModule1.Table_w4.filter := 'acc=' + inttostr(stud_pin);
    DataModule1.Table_w4.Filtered := True;
    num_page := 4;
  end;

  if PageControl3.ActivePage = TabSheet5 then // вкладка 5 - поощрения/взыскания
  begin
    if priz_dost <> 1 then
    begin
      Button8.Enabled := False;
      Button9.Enabled := False;
      Button10.Enabled := False;
    end;
    Edit23.Text := stud_fio;
    Edit26.Text := stud_gr;
    DataModule1.Table_w5.filter := 'acc=' + inttostr(stud_pin);
    DataModule1.Table_w5.Filtered := True;
    num_page := 5;
  end;

end;

procedure Tstud_acc.SpinEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 46) or (Key = 8) then
  begin
    SpinEdit1.Value := 0;
    SpinEdit1.Text := '0';
    kurs := 0;
  end;
end;

procedure Tstud_acc.Button2Click(Sender: TObject);
begin
  pp := 1; // для возвращения
  Enabled := False;
  act := 1; // добавление нового приказа
  Application.CreateForm(Tacc_moves, acc_moves);
  acc_moves.Show;
end;

procedure Tstud_acc.Button3Click(Sender: TObject);
begin
  pp := 1; // для возвращения
  Enabled := False;
  DataModule1.Table_w6.Next; // прочитали следующую запись

  if DataModule1.Table_w6.Eof = True then
    act := 2 // изменение последнего приказа
  else
  begin
    act := 3; // изменение не последнего приказа
    DataModule1.Table_w6.Prior;
  end;
  Application.CreateForm(Tacc_moves, acc_moves);
  acc_moves.Show;
end;

procedure Tstud_acc.Button4Click(Sender: TObject);
begin
  pp := 1; // для возвращения
  Enabled := False;
  Application.CreateForm(Tacc_del, acc_del);
  acc_del.Show;

end;

procedure Tstud_acc.BitBtn3Click(Sender: TObject);
var
  str_d1, s5, s6, s8, s9, pfr: string;
begin
  DataModule1.Query1.SQL.Clear;
  s1 := 'update acc set ls=' + '''' + Edit2.Text + '''' + ', zachbook=' + '''' +
    Edit3.Text + '''' + ',godpr=' + Edit38.Text;
  s2 := ',fam=' + '''' + Edit4.Text + '''' + ',name=' + '''' + Edit5.Text + ''''
    + ',vname=' + '''' + Edit6.Text + '''';
  if kd2 = '6' then // это ПФР
    pfr := ' ,priz=' + '''' + '6' + '''';
  if kd2 = '7' then // это ПФР г.Рубцовска
    pfr := ' ,priz=' + '''' + '7' + '''';
  if (kd2 <> '6') and (kd2 <> '7') then
    pfr := ' ,priz=' + '''' + '*' + '''';
  // if (kd7<>'') then
  // pfr:=' ,lgota='+''''+Datamodule1.snvnek.fieldbyname('pin').asstring+'''';
  s3 := ' where pin=' + inttostr(stud_pin);
  DataModule1.Query1.SQL.Add(s1 + s2 + pfr + s3);
  DataModule1.Query1.ExecSQL;

  if kd1 = '' then
    kd1 := 'Null';
  if kd2 = '' then
    kd2 := 'Null';
  if kd3 = '' then
    kd3 := 'Null';
  if kd4 = '' then
    kd4 := 'Null';
  if kd5 = '' then
    kd5 := 'Null';
  if kd6 = '' then
    kd6 := 'Null';
  if kd4 = '' then
    kd7 := 'Null';

  if kadr = 1 then // добавление
  begin
    DataModule1.Query1.SQL.Clear;
    { s1 :='insert  into acckadr (acc,pasnum,paswho,mes_ro,address,registr,phone,mobphone,mesjob,doljob,teljob,schoolpr,schoolgod,';
      s2 :='sex,hostel,pasdate,dat_ro,spcitiz,spsoc,spkat,splang,spschool,spksiva)';
      s3 :=' values ('+inttostr(stud_pin)+','+''''+Edit8.text+''''+','+''''+Edit10.text+''''+','+''''+Edit12.text+''''+',';
      s4 := ''''+ Edit13.text+''''+','+''''+ Edit14.text+''''+','+''''+ Edit15.text+''''+','+''''+ Edit39.text+''''+','+''''+ Edit20.text+''''+',';
      s5 := ''''+Edit21.text+''''+','+''''+ Edit22.text+''''+','+''''+ Edit24.text+''''+','+Edit25.text; }

    s1 := 'insert  into acckadr (acc,pasnum,paswho,mes_ro,address,registr,phone,mobphone,mesjob,doljob,teljob,aregion1,aregion2,aregion3,aregion4,aul,schoolpr,schoolgod,';
    s2 := 'sex,hostel,pasdate,dat_ro,spcitiz,spsoc,spkat,splang,spschool,spksiva)';
    s3 := ' values (' + inttostr(stud_pin) + ',' + '''' + Edit8.Text + '''' +
      ',' + '''' + Edit10.Text + '''' + ',' + '''' + Edit12.Text + '''' + ',';
    s4 := '''' + Edit13.Text + '''' + ',' + '''' + Edit14.Text + '''' + ',' +
      '''' + Edit15.Text + '''' + ',' + '''' + Edit39.Text + '''' + ',' + '''' +
      Edit20.Text + '''' + ',';
    s5 := '''' + Edit21.Text + '''' + ',' + '''' + Edit22.Text + '''' + ',' +
      '''' + inttostr(qreg) + '''' + ',' + '''' + inttostr(qrain) + '''' + ',' +
      '''' + inttostr(qgor) + '''' + ',' + '''' + inttostr(qnasp) + '''' + ',' +
      '''' + nameul + '''' + ',' + '''' + Edit24.Text + '''' + ',' + '''' +
      Edit25.Text + '''';

    if RadioButton1.Checked = True then
      s6 := ',' + '''' + '1' + ''''
    else
      s6 := ',' + '''' + '0' + '''';
    if RadioButton5.Checked = True then
      s8 := ',' + '''' + '1' + ''''
    else
      s8 := ',' + '''' + '0' + '''';

    if Edit9.Text <> '' then
      str_d := ',' + '''' + inttostr(yearof(strtodate(Edit9.Text))) + '-' +
        inttostr(monthof(strtodate(Edit9.Text))) + '-' +
        inttostr(dayof(strtodate(Edit9.Text))) + ''''
    else
      str_d := ',Null';

    if Edit11.Text <> '' then
      str_d1 := ',' + '''' + inttostr(yearof(strtodate(Edit11.Text))) + '-' +
        inttostr(monthof(strtodate(Edit11.Text))) + '-' +
        inttostr(dayof(strtodate(Edit11.Text))) + ''''
    else
      str_d1 := ',Null';
    s9 := ',' + kd1 + ',' + kd2 + ',' + kd3 + ',' + kd4 + ',' + kd5 + ',' +
      kd6 + ')';
    DataModule1.Query1.SQL.Add(s1 + s2 + s3 + s4 + s5 + s6 + s8 + str_d +
      str_d1 + s9);
    DataModule1.Query1.ExecSQL;
  end
  else // редактирование
  begin
    DataModule1.Query1.SQL.Clear;
    { DataModule1.Query1.SQL.Add('update acckadr set  pasnum='+''''+Edit8.text+''''+',paswho='+''''+Edit10.text+''''+',mes_ro='+''''+Edit12.text+'''');
      DataModule1.Query1.SQL.Add(',address='+''''+ Edit13.text+''''+ ',registr='+''''+ Edit14.text+''''+',phone='+''''+ Edit15.text+''''+',mobphone='+''''+ Edit39.text+'''');
      DataModule1.Query1.SQL.Add(',mesjob='+''''+ Edit20.text+''''+',doljob='+''''+Edit21.text+''''+',teljob='+''''+ Edit22.text+'''');
      DataModule1.Query1.SQL.Add(',schoolpr='+''''+ Edit24.text+'''');
      DataModule1.Query1.SQL.Add(',schoolgod='+Edit25.text); }

    DataModule1.Query1.SQL.Add('update acckadr set  pasnum=' + '''' + Edit8.Text
      + '''' + ',paswho=' + '''' + Edit10.Text + '''' + ',mes_ro=' + '''' +
      Edit12.Text + '''');
    DataModule1.Query1.SQL.Add(',address=' + '''' + Edit13.Text + '''' +
      ',registr=' + '''' + Edit14.Text + '''' + ',phone=' + '''' + Edit15.Text +
      '''' + ',mobphone=' + '''' + Edit39.Text + '''');
    DataModule1.Query1.SQL.Add(',mesjob=' + '''' + Edit20.Text + '''' +
      ',doljob=' + '''' + Edit21.Text + '''' + ',teljob=' + '''' +
      Edit22.Text + '''');
    DataModule1.Query1.SQL.Add(',schoolpr=' + '''' + Edit24.Text + '''');

    // добавлено для geog
    if ((areg1 <> qreg) or (areg2 <> qrain) or (areg3 <> qgor) or
      (areg4 <> qnasp)) then
    begin
      DataModule1.Query1.SQL.Add(',aregion1=' + '''' + inttostr(qreg) + '''');
      DataModule1.Query1.SQL.Add(',aregion2=' + '''' + inttostr(qrain) + '''');
      DataModule1.Query1.SQL.Add(',aregion3=' + '''' + inttostr(qgor) + '''');
      DataModule1.Query1.SQL.Add(',aregion4=' + '''' + inttostr(qnasp) + '''');
      DataModule1.Query1.SQL.Add(',aul=' + '''' + nameul + '''');
    end;

    if RadioButton1.Checked = True then
      DataModule1.Query1.SQL.Add(',sex=' + '''' + '1' + '''')
    else
      DataModule1.Query1.SQL.Add(',sex=' + '''' + '0' + '''');
    if RadioButton5.Checked = True then
      DataModule1.Query1.SQL.Add(',hostel=' + '''' + '1' + '''')
    else
      DataModule1.Query1.SQL.Add(',hostel=' + '''' + '0' + '''');

    if Edit9.Text <> '' then
    begin
      str_d := inttostr(yearof(strtodate(Edit9.Text))) + '-' +
        inttostr(monthof(strtodate(Edit9.Text))) + '-' +
        inttostr(dayof(strtodate(Edit9.Text)));
      DataModule1.Query1.SQL.Add(',pasdate=' + '''' + str_d + '''');
    end
    else
      DataModule1.Query1.SQL.Add(',pasdate=Null');

    if Edit11.Text <> '' then
    begin
      str_d := inttostr(yearof(strtodate(Edit11.Text))) + '-' +
        inttostr(monthof(strtodate(Edit11.Text))) + '-' +
        inttostr(dayof(strtodate(Edit11.Text)));
      DataModule1.Query1.SQL.Add(',dat_ro=' + '''' + str_d + '''');
    end
    else
      DataModule1.Query1.SQL.Add(',dat_ro=Null');
    s9 := ',spcitiz=' + kd1 + ',spsoc=' + kd2 + ',spkat=' + kd3 + ',splang=' +
      kd4 + ',spschool=' + kd5 + ',spksiva=' + kd6;
    DataModule1.Query1.SQL.Add(s9);
    // if checkbox1.Checked:=false then
    // DataModule1.Table_w1.

    DataModule1.Query1.SQL.Add(' where acc=' + inttostr(stud_pin));
    DataModule1.Query1.ExecSQL;

    DataModule1.Query1.SQL.Clear;
    if CheckBox1.Checked = True then
      DataModule1.Query1.SQL.Add('update acc set  lgota=' + '''' +
        DataModule1.snvnek.FieldByName('pin').AsString + '''')
    else
      DataModule1.Query1.SQL.Add('update acc set  lgota=null');
    DataModule1.Query1.SQL.Add(' where pin=' + inttostr(stud_pin));
    DataModule1.Query1.ExecSQL;
  end;

  DataModule1.Table_w1.Refresh;
  DataModule1.Table_w2.Refresh;
  PageControl3.ActivePage := TabSheet1;

end;

procedure Tstud_acc.Button5Click(Sender: TObject);
begin
  Enabled := False;
  act := 1; // добавление нового приказа  по смене фамилии
  Application.CreateForm(Tacc_fam, acc_fam);
  acc_fam.Show;
end;

procedure Tstud_acc.Button6Click(Sender: TObject);
begin
  Enabled := False;
  act := 2; // изменение приказа  по смене фамилии
  DataModule1.Table_w4.Last;
  Application.CreateForm(Tacc_fam, acc_fam);
  acc_fam.Show;
end;

procedure Tstud_acc.Button8Click(Sender: TObject);
begin
  Enabled := False;
  act := 1; // добавление нового приказа о поощрении/ взыскании
  Application.CreateForm(Tacc_good, acc_good);
  acc_good.Show;
end;

procedure Tstud_acc.Button9Click(Sender: TObject);
begin
  Enabled := False;
  act := 2; // редактирование приказа о поощрении /взыскании
  Application.CreateForm(Tacc_good, acc_good);
  acc_good.Show;
end;

procedure Tstud_acc.TabSheet3ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Edit16.Text := trim(stud_gr);
end;

procedure Tstud_acc.Button7Click(Sender: TObject);
var
  fam, nam, vname: string;
  pasnum, paswho, pasdate: string;
  str1, str2, str_dd: string;
begin
  act := 2; // удаление приказа по смене фамилии
  DataModule1.Table_w4.Last;
  // acc_delfam.Show;
  if messagebox(Handle,
    'Будут восстановлены предыдущие ФИО и паспортные данные.' + #13 +
    '      Вы действительно хотите удалить?', '', MB_OKCANCEL) = 1 then
  begin
    If DataModule1.Table_w4.RecordCount > 0 then // можно удалять приказ
    begin
      DataModule1.Table_w4.Last;
      fam := trim(DataModule1.Table_w4.FieldByName('fam').AsString);
      // взяли старые фамилия
      nam := trim(DataModule1.Table_w4.FieldByName('name').AsString);
      // взяли старые имя
      vname := trim(DataModule1.Table_w4.FieldByName('vname').AsString);
      // взяли старые отчество
      pasnum := trim(DataModule1.Table_w4.FieldByName('pasnum').AsString);
      // старый № паспорта
      paswho := trim(DataModule1.Table_w4.FieldByName('paswho').AsString);
      // старое Кто выдал
      pasdate := trim(DataModule1.Table_w4.FieldByName('pasdate').AsString);
      // старая дата выдачи
      if (fam <> '') and (nam <> '') and (vname <> '') then //
      begin
        DataModule1.Query1.SQL.Clear;
        stud_acc.Edit17.Text := trim(fam) + ' ' + trim(nam) + ' ' + trim(vname);
        str1 := 'update acc set fam=' + '''' + fam + '''' + ', name=' + '''' +
          nam + '''' + ', vname=' + '''' + vname + '''';
        str2 := ' where pin=' + inttostr(stud_pin);
        DataModule1.Query1.SQL.Add(str1 + str2);
        DataModule1.Query1.ExecSQL;
        DataModule1.Table_w1.Refresh;
      end;
      DataModule1.Query2.SQL.Clear;
      if pasdate <> '' then
        str_dd := '''' + inttostr(yearof(strtodate(pasdate))) + '-' +
          inttostr(monthof(strtodate(pasdate))) + '-' +
          inttostr(dayof(strtodate(pasdate))) + ''''
      else
        str_dd := 'Null';
      str1 := 'update acckadr set pasnum=' + '''' + pasnum + '''' + ', paswho='
        + '''' + paswho + '''' + ', pasdate=' + str_dd;
      str2 := ' where acc=' + inttostr(stud_pin);
      DataModule1.Query2.SQL.Add(str1 + str2);
      DataModule1.Query2.ExecSQL;
      DataModule1.Table_w2.Refresh;
      DataModule1.Table_w4.Delete;
      DataModule1.Table_w4.Refresh
    end
    else
      showmessage(' Удалить запись невозможно!!! ');
  end
  else
  begin
    DataModule1.Table_w1.Cancel;
    DataModule1.Table_w2.Cancel;
    DataModule1.Table_w4.Cancel;
  end;
end;

procedure Tstud_acc.Button10Click(Sender: TObject);
begin
  DataModule1.Table_w5.Delete;
  DataModule1.Table_w5.Refresh;
end;

procedure Tstud_acc.RadioButton8Click(Sender: TObject);
begin
  { if RadioButton8.Checked =True then // выключаем все если не служил
    begin
    w:='0';
    //  DBLookupComboBox4.Enabled:=False;
    DBLookupComboBox5.Enabled:=False;
    DBLookupComboBox6.Enabled:=False;
    //  DBLookupComboBox7.Enabled:=False;
    //  DBLookupComboBox8.Enabled:=False; DBLookupComboBox9.Enabled:=False;
    //  Edit29.Enabled :=False; Edit30.Enabled :=False; Edit31.Enabled :=False;
    Edit32.Enabled :=False; Edit33.Enabled :=False; Edit34.Enabled :=False;
    Edit35.Enabled :=False; Edit36.Enabled :=False;
    end; }
end;

procedure Tstud_acc.RadioButton7Click(Sender: TObject);
begin
  { if RadioButton7.Checked =True then // включаем все если  служил
    begin
    w :='1';
    DBLookupComboBox4.Enabled:=True; DBLookupComboBox5.Enabled:=True;
    DBLookupComboBox6.Enabled:=True; DBLookupComboBox7.Enabled:=True;
    DBLookupComboBox8.Enabled:=True; DBLookupComboBox9.Enabled:=True;
    Edit29.Enabled :=True; Edit30.Enabled :=True; Edit31.Enabled :=True;
    Edit32.Enabled :=True; Edit33.Enabled :=True; Edit34.Enabled :=True;
    Edit35.Enabled :=True; Edit36.Enabled :=True;
    end; }
end;

{ procedure Tstud_acc.DBLookupComboBox4Click(Sender: TObject);
  begin
  w4 :=''''+DataModule1.Table_w20.fieldbyname('pin').asstring+'''';
  DataModule1.Table_w3.Refresh;
  end;

  procedure Tstud_acc.DBLookupComboBox5Click(Sender: TObject);
  begin
  w5 :=''''+DataModule1.Table_w22.fieldbyname('pin').asstring+'''';
  DataModule1.Table_w3.Refresh;
  end;

  procedure Tstud_acc.DBLookupComboBox6Click(Sender: TObject);
  begin
  w6 :=''''+DataModule1.Table_w21.fieldbyname('pin').asstring+'''';
  DataModule1.Table_w3.Refresh;
  end;

  procedure Tstud_acc.DBLookupComboBox7Click(Sender: TObject);
  begin
  w7 :=''''+DataModule1.Table46_1.fieldbyname('pin').asstring+'''';
  r1:= DataModule1.Table46_1.fieldbyname('pin').AsInteger;
  DataModule1.Table_w3.Refresh;
  end;

  procedure Tstud_acc.DBLookupComboBox8Click(Sender: TObject);
  begin
  w8 :=''''+DataModule1.Table46_1.fieldbyname('pin').asstring+'''';
  r2:= DataModule1.Table46_1.fieldbyname('pin').AsInteger;
  DataModule1.Table_w3.Refresh;
  end;

  procedure Tstud_acc.DBLookupComboBox9Click(Sender: TObject);
  begin
  w9 :=''''+DataModule1.Table46_1.fieldbyname('pin').asstring+'''';
  DataModule1.Table_w3.Refresh;
  end; }

procedure Tstud_acc.BitBtn2Click(Sender: TObject);
begin
  ageog := 1;
  Application.CreateForm(Tfgeog, fgeog);
  fgeog.ShowModal;
end;

procedure Tstud_acc.Edit37Change(Sender: TObject);
var
  s_fam: string;
begin
  if trim(Edit37.Text) <> '' then
  begin
    s_fam := trim(Edit37.Text);
    DataModule1.Table_w1.IndexName := 'idxaccfam';
    DataModule1.Table_w1.FindNearest([s_fam]);
  end
  else
    DataModule1.Table_w1.First;
end;

procedure Tstud_acc.Edit37KeyPress(Sender: TObject; var Key: Char);
begin
  if (length(trim(Edit37.Text)) = 0) or (Edit37.SelLength = length(Edit37.Text))
  then
  begin
    if ((Key >= 'а') and (Key <= 'п')) then
      Key := chr(ord(Key) - 32)
    else if ((Key >= 'р') and (Key <= 'я')) then
      Key := chr(ord(Key) - 32)
    else if not(((Key >= 'А') and (Key <= 'П')) or
      ((Key >= 'Р') and (Key <= 'Я')) OR (Key = #8)) then
      Key := #0;
  end
  else if ((Key >= 'A') and (Key <= 'П')) then
    Key := chr(ord(Key) + 32)
  else if ((Key >= 'Р') and (Key <= 'Я')) then
    Key := chr(ord(Key) + 32)
  else if not(((Key >= 'а') and (Key <= 'п')) or ((Key >= 'р') and (Key <= 'я'))
    OR (Key = #8)) then
    Key := #0;

end;

procedure Tstud_acc.Button11Click(Sender: TObject);
var
  WordApp, newDoc: OLEVariant;
  t1: OLEVariant;
  i, j, n: Integer;
  Name_file, STR: PWideChar;
  NAME_FILE1: STRING;
  BIG, SMALL: Integer;
  f: Tprakt_progress;
  fil: OLEVariant;
begin
  prakt_progress := Tprakt_progress.Create(Application);
  BitBtn1.Enabled := False;
  BIG := wdLineWidth225pt;
  SMALL := wdLineWidth075pt;
  Name_file := PChar('c:\doc\приказы_по_' + trim(stud_fio) + '.doc');
  Repaint;
  fil := string(Name_file);
  n := DataModule1.Table_w6.RecordCount;
  prakt_progress.Show;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  Application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1

  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\report3.doc'),
    Name_file, False);
  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;

  prakt_progress.ProgressBar1.StepIt; // 3
  newDoc := WordApp.Documents.Open(string(Name_file));
  t1 := newDoc.Tables.Item(1);

  prakt_progress.ProgressBar1.StepIt; // 4
  t1.CELL(2, 1).RANGE.Text := trim(stud_fio);
  t1.CELL(2, 2).RANGE.Text := 'группа ' + trim(stud_gr);

  prakt_progress.ProgressBar1.StepIt; // 5

  for i := 1 to n do
  begin
    prakt_progress.ProgressBar1.StepIt;
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    Application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    t1.CELL(i + 3, 1).RANGE.Text := inttostr(i);
    t1.CELL(i + 3, 2).RANGE.Text :=
      trim(DataModule1.Table_w6.FieldByName('mvnum').AsString);
    t1.CELL(i + 3, 3).RANGE.Text :=
      trim(DataModule1.Table_w6.FieldByName('mvdate').AsString);
    t1.CELL(i + 3, 4).RANGE.Text :=
      trim(DataModule1.Table_w6.FieldByName('event').AsString);
    t1.CELL(i + 3, 5).RANGE.Text :=
      trim(DataModule1.Table_w6.FieldByName('gruppa').AsString);
    t1.CELL(i + 3, 6).RANGE.Text :=
      trim(DataModule1.Table_w6.FieldByName('mvosn').AsString);
    DataModule1.Table_w6.Next;
    if i < n then
      t1.Rows.Add(); // чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    newDoc.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
  BitBtn1.Enabled := True;
end;

{ procedure Tstud_acc.DBLookupComboBox7Enter(Sender: TObject);
  begin
  // DataModule1.Table46_1.Filter:='tip=2 ';
  // DataModule1.Table46_1.Filtered :=True;
  end;

  procedure Tstud_acc.DBLookupComboBox8Enter(Sender: TObject);
  begin
  // DataModule1.Table46_1.Filter:='tip=3';
  // DataModule1.Table46_1.Filtered :=True;
  end;

  procedure Tstud_acc.DBLookupComboBox9Enter(Sender: TObject);
  begin
  // DataModule1.Table46_1.Filter:='tip=4 and rod='+ inttostr(r1);
  // DataModule1.Table46_1.Filtered :=True;
  end; }

{ procedure Tstud_acc.DBLookupComboBox7DropDown(Sender: TObject);
  begin
  DataModule1.Table46_1.Filter:='tip=2 ';
  DataModule1.Table46_1.Filtered :=True;
  end;

  procedure Tstud_acc.DBLookupComboBox8DropDown(Sender: TObject);
  begin
  DataModule1.Table46_1.Filter:='tip=3 and rod='+ inttostr(r1);
  DataModule1.Table46_1.Filtered :=True;
  //DBLookupComboBox.Font.Color :=clNone;
  end;

  procedure Tstud_acc.DBLookupComboBox9DropDown(Sender: TObject);
  begin
  DataModule1.Table46_1.Filter:='tip=4 and rod='+ inttostr(r1);
  DataModule1.Table46_1.Filtered :=True;
  end; }

procedure Tstud_acc.Button12Click(Sender: TObject);
begin
  Enabled := False;
  act := 1; // добавление нового студента
  Application.CreateForm(Tnew_stud, new_stud);
  new_stud.Show;
  acc_filter;
end;

procedure Tstud_acc.Button13Click(Sender: TObject);
begin
  Enabled := False; // удаление студента
  Application.CreateForm(Tdel_stud, del_stud);
  del_stud.Show;
end;

procedure Tstud_acc.DBLookupComboBox18Click(Sender: TObject);
begin
  kd1 := DataModule1.Table_w18.FieldByName('pin').AsString;
  DataModule1.Table_w2.Refresh;

end;

procedure Tstud_acc.DBLookupComboBox17Click(Sender: TObject);
begin
  kd2 := DataModule1.Table_w17.FieldByName('pin').AsString;
  DataModule1.Table_w2.Refresh;
end;

procedure Tstud_acc.DBLookupComboBox16Click(Sender: TObject);
begin
  kd3 := DataModule1.Table_w16.FieldByName('pin').AsString;
  DataModule1.Table_w2.Refresh;
end;

procedure Tstud_acc.DBLookupComboBox15Click(Sender: TObject);
begin
  kd4 := DataModule1.Table_w15.FieldByName('pin').AsString;
  DataModule1.Table_w2.Refresh;
end;

procedure Tstud_acc.DBLookupComboBox19Click(Sender: TObject);
begin
  kd5 := DataModule1.spschool.FieldByName('pin').AsString;
  DataModule1.Table_w2.Refresh;
end;

procedure Tstud_acc.DBLookupComboBox14Click(Sender: TObject);
begin
  kd6 := DataModule1.Table_w14.FieldByName('pin').AsString;
  DataModule1.Table_w2.Refresh;
end;

procedure Tstud_acc.Button14Click(Sender: TObject);
begin
  showmessage('Перед поиском по фамилии очистите фильтр.');
  Enabled := False; // поиск студента по фио
  Application.CreateForm(Tfindfio_stud, findfio_stud);
  findfio_stud.Show;
end;

procedure Tstud_acc.Button15Click(Sender: TObject);
var
  WordApp, newDoc: OLEVariant;
  t1: OLEVariant;
  nn, n, p, i: Integer;
  Name_file: PWideChar;
  fil: OLEVariant;
begin
  DBGrid3.DefaultDrawing := False;
  DataModule1.Table_w4.Filtered := False;
  DataModule1.Table_w1.filter := 'deperson<>1';
  DataModule1.Table_w1.Filtered := True;
  DataModule1.Table_w4.IndexName := 'idxfamacc';
  DataModule1.Table_w1.IndexName := 'PRIMARY';
  Name_file := PChar('c:\doc\список студентов со старыми фамилиями.doc');
  prakt_progress := Tprakt_progress.Create(Application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.Show;
  DataModule1.Table_w4.First;
  n := DataModule1.Table_w4.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  Application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\report10.doc'),
    Name_file, False);

  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;

  prakt_progress.ProgressBar1.StepIt; // 3
  newDoc := WordApp.Documents.Open(string(Name_file));
  t1 := newDoc.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  i := 1;
  while not DataModule1.Table_w4.Eof do
  begin
    p := DataModule1.Table_w4.FieldByName('acc').AsInteger;
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n - i) +
      ' записей.';
    Application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    if not DataModule1.Table_w1.FindKey
      ([DataModule1.Table_w4.FieldByName('acc').AsInteger]) then
    begin
      showmessage('Нет сведений! Pin=' +
        inttostr(DataModule1.Table_w4.FieldByName('pin').AsInteger));
      DataModule1.Table_w4.Next
    end
    else
    begin
      t1.CELL(i + 4, 1).RANGE.Text := i;
      t1.CELL(i + 4, 2).RANGE.Text :=
        trim(DataModule1.Table_w1.FieldByName('fam').AsString) + ' ' +
        trim(DataModule1.Table_w1.FieldByName('name').AsString) + ' ' +
        trim(DataModule1.Table_w1.FieldByName('vname').AsString);
      t1.CELL(i + 4, 4).RANGE.Text :=
        trim(DataModule1.Table_w1.FieldByName('gruppa').AsString);
      t1.CELL(i + 4, 5).RANGE.Text :=
        trim(DataModule1.Table_w1.FieldByName('sost').AsString);
      while (DataModule1.Table_w4.FieldByName('acc').AsInteger = p) and
        (i <= n) do
      begin
        t1.CELL(i + 4, 3).RANGE.Text :=
          trim(DataModule1.Table_w4.FieldByName('fam').AsString) + ' ' +
          trim(DataModule1.Table_w4.FieldByName('name').AsString) + ' ' +
          trim(DataModule1.Table_w4.FieldByName('vname').AsString) + ''#13'';
        t1.Rows.Add();
        i := i + 1;
        DataModule1.Table_w4.Next;
      end;
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;
  WordApp.visible := True;
  if WordApp.visible = True then
    newDoc.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
  DataModule1.Table_w4.Filtered := True;
  DataModule1.Table_w1.Filtered := True;
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DBGrid3.DefaultDrawing := True;
end;

procedure Tstud_acc.BitBtn4Click(Sender: TObject);
begin
  ageog := 4;
  Application.CreateForm(Tfgeog, fgeog);
  fgeog.Label6.visible := False;
  fgeog.Label6.Enabled := False;
  fgeog.Label7.visible := False;
  fgeog.Label8.visible := False;
  fgeog.Label9.visible := False;
  fgeog.DBEdit1.visible := False;
  fgeog.Edit2.visible := False;
  fgeog.Edit3.visible := False;
  fgeog.Edit4.visible := False;
  fgeog.CheckBox1.visible := False;
  fgeog.DBLookupComboBox6.visible := False;
  fgeog.DBLookupComboBox6.Enabled := False;
  fgeog.Combobox1.visible := False;
  fgeog.ShowModal;
end;

procedure Tstud_acc.Button16Click(Sender: TObject);
begin
  if DataModule1.Table_w1.FieldByName('spsost').AsInteger <> 1 then
    showmessage('Этот студент на данный момент не обучается!')
  else
  begin
    sp := 10; // простая справка из отдела кадров
    fam := DataModule1.Table_w1.FieldByName('fam').AsString;
    spfak := DataModule1.Table_w1.FieldByName('spfak').AsInteger;
    stud_name := DataModule1.Table_w1.FieldByName('name').AsString;
    stud_pin := DataModule1.Table_w1.FieldByName('pin').AsInteger;
    stud_fio := trim(DataModule1.Table_w1.FieldByName('fam').AsString);
    stud_fio := trim(stud_fio) + ' ' +
      trim(DataModule1.Table_w1.FieldByName('name').AsString) + ' ';
    stud_fio := trim(stud_fio) + ' ' +
      trim(DataModule1.Table_w1.FieldByName('vname').AsString);
    stud_gr := trim(DataModule1.Table_w1.FieldByName('gruppa').AsString);
    stud_ls := trim(DataModule1.Table_w1.FieldByName('ls').AsString);
    stud_zb := trim(DataModule1.Table_w1.FieldByName('zachbook').AsString);
    case spfak of
      // 33 : fak_name:='Технологический';
      // 36 : fak_name:='Аграрно-технический';
      // 37 : fak_name:='Электротехнический';
      57:
        fak_name := 'Гуманитарно-экономический';
      65:
        fak_name := 'Заочной формы обучения';
      98:
        fak_name := 'Технический';
      // 66 : fak_name:='Среднего специального образования';
    end;
    Enabled := False;
    Application.CreateForm(Tsprav_acc, sprav_acc);
    sprav_acc.Show;
  end;
end;

procedure Tstud_acc.Button17Click(Sender: TObject);
begin
  if DataModule1.Table_w1.FieldByName('spsost').AsInteger = 1 then
    showmessage('Этот студент на данный момент не отчислен!')
  else
  begin
    sp := 11; // справка на отчисленного студента из отдела кадров
    fam := DataModule1.Table_w1.FieldByName('fam').AsString;
    stud_name := DataModule1.Table_w1.FieldByName('name').AsString;
    stud_pin := DataModule1.Table_w1.FieldByName('pin').AsInteger;
    stud_fio := trim(DataModule1.Table_w1.FieldByName('fam').AsString);
    stud_fio := trim(stud_fio) + ' ' +
      trim(DataModule1.Table_w1.FieldByName('name').AsString) + ' ';
    stud_fio := trim(stud_fio) + ' ' +
      trim(DataModule1.Table_w1.FieldByName('vname').AsString);
    stud_gr := trim(DataModule1.Table_w1.FieldByName('gruppa').AsString);
    stud_ls := trim(DataModule1.Table_w1.FieldByName('ls').AsString);
    stud_zb := trim(DataModule1.Table_w1.FieldByName('zachbook').AsString);
    Enabled := False;
    Application.CreateForm(Tsprav_acc, sprav_acc);
    sprav_acc.Show;
  end;
end;

procedure Tstud_acc.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (DataModule1.Table_w1.FieldByName('priz').AsString = '6') and
    (DataModule1.Table_w1.FieldByName('spsost').AsInteger <> 2) and
    (DataModule1.Table_w1.FieldByName('spsost').AsInteger <> 4) then
  begin
    DBGrid1.Canvas.Brush.Color := rgb(175, 222, 105);
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if (DataModule1.Table_w1.FieldByName('spcitiz').AsString = '2') and
    (DataModule1.Table_w1.FieldByName('spsost').AsInteger <> 2) and
    (DataModule1.Table_w1.FieldByName('spsost').AsInteger <> 4) then
  begin
    DBGrid1.Canvas.Brush.Color := ClYellow;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if (DataModule1.Table_w1.FieldByName('priz').AsString = '7') and
    (DataModule1.Table_w1.FieldByName('spsost').AsInteger <> 2) and
    (DataModule1.Table_w1.FieldByName('spsost').AsInteger <> 4) then
  begin
    DBGrid1.Canvas.Brush.Color := rgb(255, 147, 201);
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure Tstud_acc.BitBtn5Click(Sender: TObject);
var
  // WordApp,NEWDOC: OLEVariant;
  Name_file: PWideChar;
  fil: OLEVariant;
  names1, names2, names3, datastr, datastr1, s, spec, s1, spe1, spe2,
    sum1: string;
  zstr1, zstr2, zstr3, zstr4: widestring;
  i, j, kol: byte;
  da: Boolean;
  t: OLEVariant;
  tnom: Integer;
  dat: tdate;
  Templ, d, dd, ddd, what, which: OLEVariant;
  name: OLEVariant;
  l1, l2: byte;
  tipek: byte;
  priz, suma1, k, t6, priz1: Integer;
  spr: string;
  props: string;
  dataroj: tdate;
  pust: Boolean;
  special, special1: string;
  specspis, summ1, summ2, summ3: Integer;
  schol, mes: string;
  Shape, Find: OLEVariant;
  pr1: OLEVariant;
  pr: Integer;
  gn, gk: string;
  pr18: OLEVariant;
  pr181: Integer;
  ms, den, ms1, den1, god, god1: string;
  sob: Integer;
begin
  // name_file:=PChar(folder+'\.doc');

  Name_file := PChar('c:\doc\справка.doc');
  fil := string(Name_file);
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\Doc\spravka16_1.doc'),
    Name_file, False);
  newDoc.ConnectTo(WordApp.Documents.Open2000(fil, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam));
  // NEWDOC:=WordApp.Documents.Open(string(Name_file));
  WordApp.Selection.Find.ClearFormatting;
  WordApp.Selection.Find.Forward := True;
  WordApp.Selection.Find.Wrap := 1; { wdFindContinue }
  WordApp.Selection.Find.Format := False;
  WordApp.Selection.Find.MatchCase := False;
  WordApp.Selection.Find.MatchWholeWord := True;
  WordApp.Selection.Find.MatchWildcards := True;
  WordApp.Selection.Find.MatchSoundsLike := False;
  WordApp.Selection.Find.MatchAllWordForms := False;

  d := wdFindStop; // найти один раз
  dd := wdReplaceall; // замена один раз
  { Templ:='#fam'; // текст который меняем
    DDD:=datamodule1.Table_w1fio.AsString; // фамилия
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,EmptyParam, EmptyParam, EmptyParam, D, EmptyParam,DDD, DD, EmptyParam, EmptyParam, EmptyParam, EmptyParam); }

  Templ := '#fm'; // текст который меняем
  ddd := DataModule1.Table_w1.FieldByName('fam').AsString + ' ' +
    DataModule1.Table_w1.FieldByName('name').AsString + ' ' +
    DataModule1.Table_w1.FieldByName('vname').AsString; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  case (monthof(date)) of
    1:
      ms1 := 'января';
    2:
      ms1 := 'февраля';
    3:
      ms1 := 'марта';
    4:
      ms1 := 'апреля';
    5:
      ms1 := 'мая';
    6:
      ms1 := 'июня';
    7:
      ms1 := 'июля';
    8:
      ms1 := 'августа';
    9:
      ms1 := 'сентября';
    10:
      ms1 := 'октября';
    11:
      ms1 := 'ноября';
    12:
      ms1 := 'декабря';
  end;

  Templ := '#date'; // текст который меняем
  ddd := inttostr(dayof(date)) + ' ' + ms1 + ' ' + inttostr(yearof(date)) +
    'г.'; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('select *  from acckadr where acc=' +
    DataModule1.Table_w1.FieldByName('pin').AsString);
  DataModule1.Query1.Open;

  Templ := '#datr'; // текст который меняем
  ddd := DataModule1.Query1.FieldByName('dat_ro').AsString; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#form'; // текст который меняем
  if DataModule1.Table_w1.FieldByName('spotd').AsString = '6' then
    ddd := 'очной форме';
  if DataModule1.Table_w1.FieldByName('spotd').AsString = '7' then
    ddd := 'заочной форме'; // фамилия
  if DataModule1.Table_w1.FieldByName('spotd').AsString = '8' then
    ddd := 'сокращеннрй программе заочной формы'; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#fak'; // текст который меняем
  if DataModule1.Table_w1.FieldByName('spfak').AsString = '98' then
    ddd := ' техническом факультете'; // фамилия
  if DataModule1.Table_w1.FieldByName('spfak').AsString = '57' then
    ddd := ' гуманитарно-экономическом факультете'; // фамилия
  if DataModule1.Table_w1.FieldByName('spfak').AsString = '65' then
    ddd := ' факультете заочной формы обучения'; // фамилия
  if DataModule1.Table_w1.FieldByName('spfak').AsString = '33' then
    ddd := ' технологическом факультете'; // фамилия
  if DataModule1.Table_w1.FieldByName('spfak').AsString = '36' then
    ddd := ' аграрно-техническом факультете'; // фамилия
  if DataModule1.Table_w1.FieldByName('spfak').AsString = '37' then
    ddd := ' электротехническом факультете'; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#spec'; // текст который меняем
  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('select *  from spspec where pin=' +
    DataModule1.Table_w1.FieldByName('spspec').AsString);
  DataModule1.Query1.Open;
  if DataModule1.Query1.RecordCount > 0 then
  begin
    if DataModule1.Query1.FieldByName('normsrok').AsFloat = 4 then
      ddd := ' по направлению бакалавриата'; // фамилия
    if DataModule1.Query1.FieldByName('normsrok').AsFloat <> 4 then
      ddd := ' по специальности'; // фамилия
  end;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#vid'; // текст который меняем
  if DataModule1.Table_w1.FieldByName('spotd').AsString = '10' then
    ddd := 'СПО'; // фамилия
  if DataModule1.Table_w1.FieldByName('spotd').AsString <> '10' then
    ddd := 'ВПО'; // фамилия
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#nam'; // текст который меняем
  ddd := DataModule1.Query1.FieldByName('shifr').AsString + '  ' + '"' +
    DataModule1.Query1.FieldByName('name').AsString + '"';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  DataModule1.Query2.SQL.Clear;
  DataModule1.Query2.SQL.Add('select *  from moves where acc=' +
    DataModule1.Table_w1.FieldByName('pin').AsString + ' order by mvdate');
  DataModule1.Query2.Open;

  DataModule1.Query2.First;
  gn := inttostr(yearof(DataModule1.Query2.FieldByName('mvdate').AsDateTime));
  DataModule1.Query2.Last;
  gk := inttostr(yearof(DataModule1.Query2.FieldByName('mvdate').AsDateTime));

  Templ := '#gn'; // текст который меняем
  ddd := gn;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);
  Templ := '#gk'; // текст который меняем
  ddd := gk;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  { for pr:=1 to WordApp.ActiveDocument.Shapes.Count do begin
    pr1:=pr;
    Shape:=WordApp.ActiveDocument.Shapes.Item(pr1); }

  Templ := '#xz'; // текст который меняем
  if DataModule1.Table_w1spstatus.AsString <> '4' then
    ddd := 'не'
  else
    ddd := '';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);
  DataModule1.Query2.First;

  // while not datamodule1.Table_w6.Eof do
  begin
    den := inttostr(dayof(DataModule1.Query2.FieldByName('mvdate').AsDateTime));
    case (monthof(DataModule1.Query2.FieldByName('mvdate').AsDateTime)) of
      1:
        ms := 'января';
      2:
        ms := 'февраля';
      3:
        ms := 'марта';
      4:
        ms := 'апреля';
      5:
        ms := 'мая';
      6:
        ms := 'июня';
      7:
        ms := 'июля';
      8:
        ms := 'августа';
      9:
        ms := 'сентября';
      10:
        ms := 'октября';
      11:
        ms := 'ноября';
      12:
        ms := 'декабря';
    end;
    god := inttostr(yearof(DataModule1.Query2.FieldByName('mvdate')
      .AsDateTime));

    den1 := inttostr(dayof(DataModule1.Query2.FieldByName('mvfakt')
      .AsDateTime));
    case (monthof(DataModule1.Query2.FieldByName('mvfakt').AsDateTime)) of
      1:
        ms1 := 'января';
      2:
        ms1 := 'февраля';
      3:
        ms1 := 'марта';
      4:
        ms1 := 'апреля';
      5:
        ms1 := 'мая';
      6:
        ms1 := 'июня';
      7:
        ms1 := 'июля';
      8:
        ms1 := 'августа';
      9:
        ms1 := 'сентября';
      10:
        ms1 := 'октября';
      11:
        ms1 := 'ноября';
      12:
        ms1 := 'декабря';
    end;
    god1 := inttostr(yearof(DataModule1.Query2.FieldByName('mvdate')
      .AsDateTime));

    if ((DataModule1.Query2.FieldByName('spevent').AsInteger = 1) or
      (DataModule1.Query2.FieldByName('spevent').AsInteger = 2) or
      (DataModule1.Query2.FieldByName('spevent').AsInteger = 3)) then
    begin
      Templ := '#osn'; // текст который меняем
      ddd := 'Приказ директора  о зачислении в число студентов 1-го курса с 01 сентября '
        + god + 'г. - от ' + den + ' ' + ms + ' ' + god + 'г. № ' +
        DataModule1.Query2.FieldByName('mvnum').AsString + '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    DataModule1.Query2.Last;
    den := inttostr(dayof(DataModule1.Query2.FieldByName('mvdate').AsDateTime));
    case (monthof(DataModule1.Query2.FieldByName('mvdate').AsDateTime)) of
      1:
        ms := 'января';
      2:
        ms := 'февраля';
      3:
        ms := 'марта';
      4:
        ms := 'апреля';
      5:
        ms := 'мая';
      6:
        ms := 'июня';
      7:
        ms := 'июля';
      8:
        ms := 'августа';
      9:
        ms := 'сентября';
      10:
        ms := 'октября';
      11:
        ms := 'ноября';
      12:
        ms := 'декабря';
    end;
    god := inttostr(yearof(DataModule1.Query2.FieldByName('mvdate')
      .AsDateTime));

    den1 := inttostr(dayof(DataModule1.Query2.FieldByName('mvfakt')
      .AsDateTime));
    case (monthof(DataModule1.Query2.FieldByName('mvfakt').AsDateTime)) of
      1:
        ms1 := 'января';
      2:
        ms1 := 'февраля';
      3:
        ms1 := 'марта';
      4:
        ms1 := 'апреля';
      5:
        ms1 := 'мая';
      6:
        ms1 := 'июня';
      7:
        ms1 := 'июля';
      8:
        ms1 := 'августа';
      9:
        ms1 := 'сентября';
      10:
        ms1 := 'октября';
      11:
        ms1 := 'ноября';
      12:
        ms1 := 'декабря';
    end;
    god1 := inttostr(yearof(DataModule1.Query2.FieldByName('mvdate')
      .AsDateTime));
    if ((DataModule1.Query2.FieldByName('spevent').AsInteger = 5)) then
    begin
      Templ := '#osn'; // текст который меняем
      ddd := 'Приказ директора  об отчислении из института в связи с его окончанием '
        + den1 + ' ' + ms1 + ' ' + god1 + 'г. - от ' + den + ' ' + ms + ' ' +
        god + 'г. № ' + DataModule1.Query2.FieldByName('mvnum').AsString + '.' +
        #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Query2.FieldByName('spevent').AsInteger = 67)) then
    begin
      Templ := '#osn'; // текст который меняем
      ddd := 'Приказ директора  об отчислении из института в связи с получением образования '
        + den1 + ' ' + ms1 + ' ' + god1 + 'г. - от ' + den + ' ' + ms + ' ' +
        god + 'г. № ' + DataModule1.Query2.FieldByName('mvnum').AsString + '.' +
        #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Query2.FieldByName('spevent').AsInteger = 7)) then
    begin
      Templ := '#osn'; // текст который меняем
      ddd := 'Приказ директора  об отчислении из института за академическую неуспеваемость '
        + den1 + ' ' + ms1 + ' ' + god1 + 'г. - от ' + den + ' ' + ms + ' ' +
        god + 'г. № ' + DataModule1.Query2.FieldByName('mvnum').AsString + '.' +
        #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Query2.FieldByName('spevent').AsInteger = 8)) then
    begin
      Templ := '#osn'; // текст который меняем
      ddd := 'Приказ директора  об отчислении из института за нарушение условий договора '
        + den1 + ' ' + ms1 + ' ' + god1 + 'г. - от ' + den + ' ' + ms + ' ' +
        god + 'г. № ' + DataModule1.Query2.FieldByName('mvnum').AsString + '.' +
        #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    { if ((datamodule1.Table_w6.fieldbyname('spevent').AsInteger=8)) then
      begin
      Templ:='#osn'; // текст который меняем
      DDD:='Приказ директора  об отчислении из института по собственному желанию '+den1+' '+ms1+' '+god1+'г. - от '+den+' '+ms+' '+god+'г. № '+datamodule1.Table_w6.fieldbyname('mvnum').AsString+#13+'#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,EmptyParam, EmptyParam, EmptyParam, D, EmptyParam,DDD, DD, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end; }

    if ((DataModule1.Query2.FieldByName('spevent').AsInteger = 9)) then
    begin
      Templ := '#osn'; // текст который меняем
      ddd := 'Приказ директора  об отчислении из института по собственному желанию '
        + den1 + ' ' + ms1 + ' ' + god1 + 'г. - от ' + den + ' ' + ms + ' ' +
        god + 'г. № ' + DataModule1.Query2.FieldByName('mvnum').AsString + '.' +
        #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;
    sob := DataModule1.Table_w6.FieldByName('spevent').AsInteger;

    if ((sob <> 1) and (sob <> 2) and (sob <> 3) and (sob <> 5) and (sob <> 7)
      and (sob <> 8) and (sob <> 9) and (sob <> 26)) then
    begin
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add('select *  from spevent where pin=' +
        DataModule1.Query2.FieldByName('spevent').AsString);
      DataModule1.Query1.Open;
      Templ := '#osn'; // текст который меняем
      if DataModule1.Query1.RecordCount > 0 then
        ddd := 'Приказ директора  о ' + DataModule1.Query1.FieldByName('name')
          .AsString + ' ' + den1 + ' ' + ms1 + ' ' + god1 + 'г. - от ' + den +
          ' ' + ms + ' ' + god + 'г. № ' + DataModule1.Query2.FieldByName
          ('mvnum').AsString + '.' + #13 + '#osn'
      else
        ddd := '';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    // datamodule1.Table_w6.next;
  end;

  Templ := '#osn'; // текст который меняем
  ddd := ' ';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  for pr181 := 1 to WordApp.ActiveDocument.Shapes.Count do
  begin
    pr18 := pr181;
    Shape := WordApp.ActiveDocument.Shapes.Item(pr18);

    if Shape.Type = 1 then
    begin
      Find := Shape.TextFrame.TextRange.Find;
      Find.Text := '#fam';
      Find.Replacement.Text := DataModule1.Table_w1fio.AsString;
      Find.Forward := True;
      Find.Execute(Replace := wdReplaceall);
    end;
  end;

  Application.Minimize;
  WordApp.visible := True;
  WordApp.Activate;
  newDoc.SaveAs2000(fil);

  { WordApp.visible:=true;
    if WordApp.visible=true then NEWDOC.SAVEas(fil); }
  if WordApp.visible = False then
    WordApp.Quit;
  // WordApp:=unassigned;
  // WordApp:=unassigned;
  // печать личной карточки студента
  newDoc.Disconnect;
  WordApp.Disconnect;
end;

procedure Tstud_acc.DBLookupComboBox4Click(Sender: TObject);
begin
  lgota := DBLookupComboBox4.Listsource.dataset.FieldByName('pin').AsInteger;
  acc_filter;
end;

procedure Tstud_acc.DBLookupComboBox4DropDown(Sender: TObject);
begin
  DBLookupComboBox4.Font.Color := clBlack;
end;

procedure Tstud_acc.DBLookupComboBox4Enter(Sender: TObject);
begin
  if DBLookupComboBox4.Font.Color = clWindow then
    DBLookupComboBox4.Font.Color := clWindow;
end;

procedure Tstud_acc.DBLookupComboBox4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 46) or (Key = 8) then
  begin
    DBLookupComboBox4.Font.Color := clWindow;
    lgota := 0;
    acc_filter;
    DBLookupComboBox1.SetFocus;
  end;
end;

procedure Tstud_acc.Button18Click(Sender: TObject);
{ var
  WordApp,NEWDOC: OLEVariant;
  t1: OLEVariant;
  Name_file:PWideChar;
  fil:olevariant;
  s1,s2 :string;
  begin
  if DataModule1.Table_w1.fieldbyname('spfak').asinteger = 66 then
  begin
  sp:=66;
  fam:= DataModule1.Table_w1.FieldByname('fam').asstring;
  stud_name:= DataModule1.Table_w1.FieldByname('name').asstring;
  stud_pin:= DataModule1.Table_w1.FieldByName('pin').Asinteger;
  stud_fio:=trim(DataModule1.Table_w1.FieldByname('fam').asstring);
  stud_fio:=trim(stud_fio)+' '+trim(DataModule1.Table_w1.FieldByname('name').asstring)+' ';
  stud_fio:=trim(stud_fio)+' '+trim(DataModule1.Table_w1.FieldByname('vname').asstring);
  stud_gr :=trim(DataModule1.Table_w1.FieldByname('gruppa').asstring);
  stud_ls :=trim(DataModule1.Table_w1.FieldByname('ls').asstring);
  stud_zb :=trim(DataModule1.Table_w1.FieldByname('zachbook').asstring);
  Enabled:=False;
  Application.CreateForm(Tsprav_acc,sprav_acc);
  sprav_acc.Show;
  end
  else   begin
  name_file:=PChar('c:\doc\справка.doc');
  prakt_progress:=tprakt_progress.Create(application);
  Repaint;
  fil:=string(name_file);
  prakt_progress.show;
  prakt_progress.Label1.Caption:='Обработка  записи.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max:=70+n*10;

  prakt_progress.ProgressBar1.StepIt;//1
  case spfak of
  65  : // ФЗФО
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\doc\spravka13.doc'),Name_file,false);
  //{ 66  : //ФССО
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\doc\spravka14.doc'),Name_file,false); }
{ else
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\doc\spravka12.doc'),Name_file,false);
  end;
  prakt_progress.ProgressBar1.StepIt;//2
  try
  WordApp := CreateOLEObject('Word.Application');
  except
  on E: Exception do
  begin
  E.Message := 'Word не доступен.';
  raise;
  end;
  end;
  DataModule1.Table_p4.Open;
  prakt_progress.ProgressBar1.StepIt;//3
  NEWDOC:=WordApp.Documents.Open(string(Name_file));
  T1:=NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt;//4

  t1.Cell(2,1).Range.Text:='№ '+DataModule1.Table_p4.fieldbyname('nomlits').asstring+' от '+DataModule1.Table_p4.fieldbyname('datelits').asstring+'г.';
  t1.Cell(3,2).Range.Text:='№ '+DataModule1.Table_p4.fieldbyname('nomakkr').asstring+' от '+DataModule1.Table_p4.fieldbyname('dateakkr').asstring+'г.';
  n:= monthof(Date);
  if  dayof(date)<10 then
  t1.Cell(6,1).Range.Text:='0'+inttostr(dayof(date))+' '+namemonth[n]+' '+inttostr(yearof(date))+'г.'
  else
  t1.Cell(6,1).Range.Text:=inttostr(dayof(date))+' '+namemonth[n]+' '+inttostr(yearof(date))+'г.';
  t1.Cell(7,2).Range.Text:=DataModule1.Table_w1.fieldbyname('fam').asstring+' '+DataModule1.Table_w1.fieldbyname('name').asstring+' '+DataModule1.Table_w1.fieldbyname('vname').asstring;
  If DataModule1.Table_w1.fieldbyname('sl').asinteger = 1 then
  s1:='в том, что он(а) является слушателем '+ DataModule1.Table_w1.fieldbyname('kurs').asstring+' курса '
  else
  s1:='в том, что он(а) является студентом '+ DataModule1.Table_w1.fieldbyname('kurs').asstring+' курса ';

  case  DataModule1.Table_w1.fieldbyname('spfak').asinteger of
  57:  s2:='гуманитарно-экономического факультета очной формы обучения';
  65:  begin
  if DataModule1.Table_w1.fieldbyname('spotd').asinteger=7  then     //заочники
  s2:=' факультета заочной формы обучения и не получает стипендию.'
  else                                                       //ускоренник
  s2:=' факультета заочной формы с сокращенным сроком обучения и не получает стипендию.';
  If DataModule1.Table_w1.fieldbyname('sl').asinteger = 1 then
  s1:='в том, что он(а) является слушателем '+ DataModule1.Table_w1.fieldbyname('kurs').asstring+' курса, гр.'+DataModule1.Table_w1.fieldbyname('gruppa').asstring
  else
  s1:='в том, что он(а) является студентом '+ DataModule1.Table_w1.fieldbyname('kurs').asstring+' курса, гр.'+DataModule1.Table_w1.fieldbyname('gruppa').asstring;
  end;

  98: s2:='технического факультета очной формы обучения';
  end;
  t1.Cell(8,1).Range.Text:=s1+s2;
  t1.Cell(13,1).Range.Text:='Начальник ОК';
  t1.Cell(13,2).Range.Text:='Н.Н.Новоселова';
  if (spfak<>65)  then
  begin
  if   DataModule1.Table_w1.fieldbyname('spstatus').asinteger = 1 then
  t1.Cell(22,2).Range.Text:='Н.А.Веселкова'
  else
  t1.Cell(22,2).Range.Text:='Н.В.Милосердова';
  end;
  prakt_progress.ProgressBar1.StepIt;//7
  prakt_progress.free;
  WordApp.visible:=true;
  if WordApp.visible=true then NEWDOC.SAVEas(fil);
  if WordApp.visible=false then WordApp.Quit;
  WordApp:=unassigned;
  end;
}

var
  WordApp, newDoc: OLEVariant;
  t1: OLEVariant;
  Name_file: PWideChar;
  fil: OLEVariant;
  s1, s2, sr, strsr, sro1: string;
  sro, sron, srku, srkurs, dopz: Integer;
  Faculty, FacultyName, FacultyBossName, Query: string;
begin
  if DataModule1.Table_w1.FieldByName('spfak').AsInteger = 66 then
  begin
    sp := 66;
    fam := DataModule1.Table_w1.FieldByName('fam').AsString;
    stud_name := DataModule1.Table_w1.FieldByName('name').AsString;
    stud_pin := DataModule1.Table_w1.FieldByName('pin').AsInteger;
    stud_fio := trim(DataModule1.Table_w1.FieldByName('fam').AsString);
    stud_fio := trim(stud_fio) + ' ' +
      trim(DataModule1.Table_w1.FieldByName('name').AsString) + ' ';
    stud_fio := trim(stud_fio) + ' ' +
      trim(DataModule1.Table_w1.FieldByName('vname').AsString);
    stud_gr := trim(DataModule1.Table_w1.FieldByName('gruppa').AsString);
    stud_ls := trim(DataModule1.Table_w1.FieldByName('ls').AsString);
    stud_zb := trim(DataModule1.Table_w1.FieldByName('zachbook').AsString);
    Enabled := False;
    Application.CreateForm(Tsprav_acc, sprav_acc);
    sprav_acc.Show;
  end
  else
  begin
    Name_file := PChar('c:\doc\справка.doc');
    prakt_progress := Tprakt_progress.Create(Application);
    Repaint;
    fil := string(Name_file);
    prakt_progress.Show;
    prakt_progress.Label1.Caption := 'Обработка  записи.';
    Application.ProcessMessages;

    prakt_progress.ProgressBar1.Max := 70 + n * 10;

    prakt_progress.ProgressBar1.StepIt; // 1
    case DataModule1.Table_w1.FieldByName('spfak').AsInteger of
      65: // ФЗФО
        CopyFile(PChar(ExtractFilePath(Application.ExeName) +
          '\doc\spravka13.doc'), Name_file, False);
      { 66  : //ФССО
        CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\doc\spravka14.doc'),Name_file,false); }
    else
      if DataModule1.Table_w1.FieldByName('spfak').AsString = '98' then
        CopyFile(PChar(ExtractFilePath(Application.ExeName) +
          '\doc\spravka98.doc'), Name_file, False)
      else
        CopyFile(PChar(ExtractFilePath(Application.ExeName) +
          '\doc\spravka12.doc'), Name_file, False);
    end;
    prakt_progress.ProgressBar1.StepIt; // 2
    try
      WordApp := CreateOLEObject('Word.Application');
    except
      on E: Exception do
      begin
        E.Message := 'Word не доступен.';
        raise;
      end;
    end;
    DataModule1.Table_p4.Open;
    prakt_progress.ProgressBar1.StepIt; // 3
    newDoc := WordApp.Documents.Open(string(Name_file));
    t1 := newDoc.Tables.Item(1);
    prakt_progress.ProgressBar1.StepIt; // 4
    // DataModule1.Table_p41.open;
    // DataModule1.Table_p41.First;

    t1.CELL(14, 1).RANGE.Text := 'Начальник ОКиД';
    t1.CELL(14, 2).RANGE.Text := 'Н.Н.Новоселова';
    t1.CELL(2, 1).RANGE.Text := '№ ' + DataModule1.Table_p4.FieldByName
      ('nomlits').AsString + ' от ' + DataModule1.Table_p4.FieldByName
      ('datelits').AsString + 'г.';
    t1.CELL(3, 2).RANGE.Text := '№ ' + DataModule1.Table_p4.FieldByName
      ('nomakkr').AsString + ' от ' + DataModule1.Table_p4.FieldByName
      ('dateakkr').AsString + 'г.';
    n := monthof(date);
    if dayof(date) < 10 then
      t1.CELL(6, 1).RANGE.Text := '0' + inttostr(dayof(date)) + ' ' +
        namemonth[n] + ' ' + inttostr(yearof(date)) + 'г.'
    else
      t1.CELL(6, 1).RANGE.Text := inttostr(dayof(date)) + ' ' + namemonth[n] +
        ' ' + inttostr(yearof(date)) + 'г.';
    t1.CELL(7, 2).RANGE.Text := DataModule1.Table_w1.FieldByName('fam').AsString
      + ' ' + DataModule1.Table_w1.FieldByName('name').AsString + ' ' +
      DataModule1.Table_w1.FieldByName('vname').AsString;

    case DataModule1.Table_w1.FieldByName('spfak').AsInteger of
      65:
        begin
          if DataModule1.Table_w1.FieldByName('spotd').AsInteger = 7 then
            // заочники
            s2 := ' факультета заочной формы обучения и не получает стипендию.'
          else // ускоренник
            s2 := ' факультета заочной формы с сокращенным сроком обучения и не получает стипендию.';
          If DataModule1.Table_w1.FieldByName('sl').AsInteger = 1 then
            s1 := 'в том, что он(а) является слушателем ' +
              DataModule1.Table_w1.FieldByName('kurs').AsString + ' курса, гр.'
              + DataModule1.Table_w1.FieldByName('gruppa').AsString
          else
            s1 := 'в том, что он(а) является студентом ' +
              DataModule1.Table_w1.FieldByName('kurs').AsString + ' курса, гр.'
              + DataModule1.Table_w1.FieldByName('gruppa').AsString;
        end;
      { 66:  if DataModule1.Table_w1.fieldbyname('spotd').asinteger=7   then    //заочники ФССО
        s2:=' факультета '+fak_name+' заочной формы обучения'
        else                                                       //дневники
        s2:=' факультета '+fak_name+' заочной формы обучения'; }
    else
      begin
        If DataModule1.Table_w1.FieldByName('sl').AsInteger = 1 then
          s1 := 'в том, что он(а) является слушателем ' +
            DataModule1.Table_w1.FieldByName('kurs').AsString + ' курса '
        else
          s1 := 'в том, что он(а) является студентом ' +
            DataModule1.Table_w1.FieldByName('kurs').AsString + ' курса ';
        case DataModule1.Table_w1spfak.AsInteger of
          98:
            FacultyName := 'Техническ';
          57:
            FacultyName := 'Гуманитарно-экономическ';
        end;
        s2 := FacultyName + 'ого' + ' факультета очной формы обучения.';
      end;
    end;
    t1.CELL(8, 1).RANGE.Text := s1 + s2;
    DataModule1.query4.SQL.Clear;
    DataModule1.query4.SQL.Add
      ('Select pin,acc,spevent,mvnum,mvdate from moves where acc=' +
      DataModule1.Table_w1.FieldByName('pin').AsString);
    DataModule1.query4.Open;
    t1.CELL(9, 1).RANGE.Text := '    Зачислен(а) приказом № ' +
      DataModule1.query4.FieldByName('mvnum').AsString + ' oт ' +
      DataModule1.query4.FieldByName('mvdate').AsString + ' г.';

    DataModule1.query5.SQL.Clear;
    DataModule1.query5.SQL.Add
      ('select a.pin, c.name, c.normsrok,a.spfak,a.spotd, a.kurs from acc as a,spgrup as b, spspec as c where a.spgrup=b.pin and b.spspec=c.pin');
    DataModule1.query5.SQL.Add('and a.pin=' + DataModule1.Table_w1.FieldByName
      ('pin').AsString);
    DataModule1.query5.Open;
    sron := yearof(DataModule1.query4.FieldByName('mvdate').AsDateTime);
    srkurs := DataModule1.query5.FieldByName('kurs').AsInteger;
    if monthof(date) <= 8 then
      srku := 0
    else
      srku := 1;
    if DataModule1.query5.FieldByName('spfak').AsString = '65' then
      dopz := 1
    else
      dopz := 0;
    if ((DataModule1.query5.FieldByName('normsrok').AsString = '4') and
      (DataModule1.query5.FieldByName('spotd').AsString = '8')) then
    begin
      strsr := '4 года';
      sro := 4;
      // sro1:='30.06.'+inttostr(sro+sron);
      sro1 := '28.06.' + inttostr(sro - srkurs + yearof(date) + srku);
    end;
    if ((DataModule1.query5.FieldByName('normsrok').AsString = '4') and
      (DataModule1.query5.FieldByName('spotd').AsString <> '8')) then
    begin
      strsr := '4 года';
      sro := 4;
      // sro1:='30.06.'+inttostr(sro+sron);
      sro1 := '30.06.' + inttostr(sro - srkurs + yearof(date) + srku + dopz);
    end;
    if ((DataModule1.query5.FieldByName('normsrok').AsString = '5') and
      (DataModule1.query5.FieldByName('spotd').AsString = '8')) then
    begin
      strsr := '5 лет';
      sro := 5;
      // sro1:='30.06.'+inttostr(sro+sron);
      sro1 := '28.06.' + inttostr(sro - srkurs + yearof(date) + srku);
    end;
    if ((DataModule1.query5.FieldByName('normsrok').AsString = '5') and
      (DataModule1.query5.FieldByName('spotd').AsString <> '8')) then
    begin
      strsr := '5 лет';
      sro := 5;
      // sro1:='30.06.'+inttostr(sro+sron);
      sro1 := '30.06.' + inttostr(sro - srkurs + yearof(date) + srku + dopz);
    end;
    if ((DataModule1.query5.FieldByName('normsrok').AsString = '1.1') or
      (DataModule1.query5.FieldByName('normsrok').AsString = '1,1')) then
    begin
      strsr := '1 год 10 месяцев';
      sro := 2;
      // sro1:='30.06.'+inttostr(sro+sron);
      sro1 := '30.06.' + inttostr(sro - srkurs + yearof(date) + srku);
    end;

    t1.CELL(10, 1).RANGE.Text := '    Нормативный период обучения ' + strsr +
      '. Предварительный срок окончания обучения ' + sro1 + ' г.';
    if (DataModule1.Table_w1.FieldByName('spfak').AsInteger <> 65) then
    begin
      /// //+1
      t1.CELL(14, 2).RANGE.Text := rukfak;
      { if   DataModule1.Table_w1.fieldbyname('spstatus').asinteger = 1 then
        t1.Cell(22,2).Range.Text:='Н.А.Веселкова'
        else
        t1.Cell(22,2).Range.Text:='Н.В.Милосердова';
        end; }
      if (DataModule1.Table_w1.FieldByName('spfak').AsInteger <> 57) then
      begin
        if DataModule1.Table_w1.FieldByName('spstatus').AsInteger = 1 then
          t1.CELL(23, 2).RANGE.Text := 'О.В.Сорокина'
        else
          // t1.Cell(23,2).Range.Text:='Н.В.Милосердова';
          t1.CELL(23, 2).RANGE.Text := 'О.В.Сорокина'
      end
      else
      begin
        if DataModule1.Table_w1.FieldByName('spstatus').AsInteger = 1 then
          t1.CELL(25, 2).RANGE.Text := 'О.В.Сорокина';
        // t1.Cell(22,2).Range.Text:='О.В.Сорокина'
        // else
        // t1.Cell(22,2).Range.Text:='Н.В.Милосердова';
        // t1.Cell(25,2).Range.Text:='Н.В.Милосердова';

        t1.CELL(22, 1).Delete;
        t1.CELL(21, 1).Delete;

      end
    end;

    prakt_progress.ProgressBar1.StepIt; // 7
    prakt_progress.free;
    WordApp.visible := True;
    if WordApp.visible = True then
      newDoc.SAVEas(fil);
    if WordApp.visible = False then
      WordApp.Quit;
    WordApp := unassigned;
  end;
end;

procedure Tstud_acc.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
    DBLookupComboBox5.Enabled := True
  else
    DBLookupComboBox5.Enabled := False;
end;

procedure Tstud_acc.DBLookupComboBox5Click(Sender: TObject);
begin
  { showmessage(Datamodule1.snvnek.fieldbyname('pin').asstring);
    showmessage(inttostr(DBLookupComboBox5.ListFieldIndex)); }
  kd7 := DataModule1.snvnek.FieldByName('pin').AsString;
  DataModule1.Table_w1.Refresh;
end;

end.
