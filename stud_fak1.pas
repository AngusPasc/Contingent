unit stud_fak1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils, OleServer, WordXP, ComObj, DB, DBTables;

type
  Tstud_fak = class(TForm)
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    Label24: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    Edit37: TEdit;
    Edit1: TEdit;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label28: TLabel;
    Label46: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    DBLookupComboBox14: TDBLookupComboBox;
    Edit11: TEdit;
    Edit12: TEdit;
    Panel4: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit24: TEdit;
    Edit25: TEdit;
    DBLookupComboBox19: TDBLookupComboBox;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Panel6: TPanel;
    RadioGroup1: TRadioGroup;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    DBLookupComboBox18: TDBLookupComboBox;
    DBLookupComboBox17: TDBLookupComboBox;
    DBLookupComboBox16: TDBLookupComboBox;
    DBLookupComboBox15: TDBLookupComboBox;
    Edit38: TEdit;
    TabSheet3: TTabSheet;
    Label29: TLabel;
    Label30: TLabel;
    DBGrid2: TDBGrid;
    Edit7: TEdit;
    Edit16: TEdit;
    TabSheet4: TTabSheet;
    Label31: TLabel;
    Label32: TLabel;
    Edit17: TEdit;
    Edit19: TEdit;
    DBGrid3: TDBGrid;
    TabSheet5: TTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    Edit23: TEdit;
    Edit26: TEdit;
    DBGrid4: TDBGrid;
    Button1: TButton;
    DBLookupComboBox4: TDBLookupComboBox;
    Label36: TLabel;
    Label38: TLabel;
    Edit27: TEdit;
    TabSheet6: TTabSheet;
    Label1: TLabel;
    Edit28: TEdit;
    Label35: TLabel;
    Edit29: TEdit;
    DBGrid5: TDBGrid;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ButtonStudentReferencePrint: TButton;
    Button6: TButton;
    Button7: TButton;
    Button11: TButton;
    Label37: TLabel;
    Edit30: TEdit;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acc_filter;
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpinEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure Edit37Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ButtonStudentReferencePrintClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit37KeyPress(Sender: TObject; var Key: Char);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_fak: Tstud_fak;
  n, sost, status, gruppa, kurs: integer;
  str_d, filt1, filt2, s1, s2, s3, s4, fam, stud_name: string;
  num_page, act_war, kadr, med: integer; // номер закладки с которой работали
  kd1, kd2, kd3, kd4, kd5, kd6: string; // для кадров
  pin_w6: longint; // pin текущей записи в table_w6

implementation

uses main1, stud_fak2, prakt_progress1, acc_rep1, stud_fak3, stud_fak4,
  stud_fak5, acc_vipiska,
  uDeaneryTools;
{$R *.dfm}

procedure Tstud_fak.FormActivate(Sender: TObject);
begin
  Edit27.Text := fak_name;
  if spfak = 98 then
    Button15.visible := true
  else
    Button15.visible := false;
  { if spfak<>0 then
    begin
    end
    else
    begin
    Edit27.Hide; Button12.enabled:=false; Button12.Hide;   end; }
  case num_page of
    0, 1:
      PageControl3.ActivePage := TabSheet1;
    3:
      PageControl3.ActivePage := TabSheet3;
    4:
      PageControl3.ActivePage := TabSheet4;
    5:
      PageControl3.ActivePage := TabSheet5;
    6:
      PageControl3.ActivePage := TabSheet6;
  end;
  { if priz_dost<>1 then
    begin
    DataModule1.Table_w1.ReadOnly:=True;    //acc
    DataModule1.Table_w2.ReadOnly:=True;    //acckadr
    DataModule1.Table_w3.ReadOnly:=True;    //accwar
    DataModule1.Table_w4.ReadOnly:=True;    //accfam
    DataModule1.Table_w5.ReadOnly:=True;    //accgood
    DataModule1.Table_w6.ReadOnly:=True;    //moves
    DataModule1.Table_w8.ReadOnly:=True;    //callenge
    end; }

  // PageControl3.ActivePage :=TabSheet1;
  DataModule1.Table_w6.IndexName := 'idxmovacc';
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w37.IndexName := 'grup';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w3.Open;
  DataModule1.Table_w4.Open;
  DataModule1.Table_w5.Open;
  DataModule1.Table_w6.Open;
  DataModule1.Table_w8.Open;
  DataModule1.Table_w14.Open;
  DataModule1.Table_w15.Open;
  DataModule1.Table_w16.Open;
  DataModule1.Table_w17.Open;
  DataModule1.Table_w18.Open;
  DataModule1.spschool.Open;
  // DataModule1.Table_w19.Open;
  DataModule1.Table_w20.Open;
  DataModule1.Table_w21.Open;
  DataModule1.Table_w22.Open;
  DataModule1.Table_w23.Open;
  DataModule1.Table_w24.Open;
  DataModule1.Table_w25.Open;
  DataModule1.Table_w37.Open;
  DataModule1.Table_w34.Open;
  DataModule1.Table_w37.Filter := 'priz=' + '''' + '1' + '''';
  DataModule1.Table_w37.Filtered := true;
  sost := 1;
  // DBLookupComboBox2.Text:='обучается';
  acc_filter;
  // edit37.SetFocus;
end;

procedure Tstud_fak.FormCreate(Sender: TObject);
begin
  { if sys_priznak<>1 then  exit; }

  DataModule1.Table_w6.IndexName := 'idxmovacc';

  { datamodule1.Table_w1.Open;
    DataModule1.Table_w2.Open;
    DataModule1.Table_w3.Open;
    DataModule1.Table_w4.Open;
    DataModule1.Table_w5.Open;
    DataModule1.Table_w6.Open;
    DataModule1.Table_w19.Open;
    DataModule1.Table46_1.Open; }

end;

procedure Tstud_fak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.Table_w4.Close;
  DataModule1.Table_w8.Close;
  DataModule1.Table_w5.Close;
  DataModule1.Table_w6.Close;
  DataModule1.Table_w34.Close;
  DataModule1.Table_w1.Filtered := false;
  DataModule1.Table_w4.Filtered := false;
  DataModule1.Table_w5.Filtered := false;
  DataModule1.Table_w6.Filtered := false;
  DataModule1.Table_w8.Filtered := false;
  DataModule1.Table_w37.Filtered := false;
  main.Enabled := true;
end;

procedure Tstud_fak.DBLookupComboBox4Click(Sender: TObject);
begin
  fak := DBLookupComboBox4.Listsource.dataset.fieldbyname('pin').asinteger;
  spfak := fak;
  acc_filter;
end;

procedure Tstud_fak.SpinEdit1Change(Sender: TObject);
begin
  kurs := SpinEdit1.Value;
  acc_filter;
end;

procedure Tstud_fak.DBLookupComboBox1Click(Sender: TObject);
begin
  gruppa := DBLookupComboBox1.Listsource.dataset.fieldbyname('pin').asinteger;
  DataModule1.Table_w37.Filtered := false;
  acc_filter;
end;

procedure Tstud_fak.DBLookupComboBox2Click(Sender: TObject);
begin
  sost := DBLookupComboBox2.Listsource.dataset.fieldbyname('pin').asinteger;
  acc_filter;
end;

procedure Tstud_fak.DBLookupComboBox3Click(Sender: TObject);
begin
  status := DBLookupComboBox3.Listsource.dataset.fieldbyname('pin').asinteger;
  acc_filter;
end;

procedure Tstud_fak.BitBtn1Click(Sender: TObject);
begin
  DBLookupComboBox1.Font.Color := clWindow;
  gruppa := 0;
  DBLookupComboBox2.Font.Color := clWindow;
  { DBLookupComboBox2.Text:='обучается'; }
  sost := 1;
  DBLookupComboBox3.Font.Color := clWindow;
  status := 0;
  SpinEdit1.Value := 0;
  Edit37.Text := '';
  kurs := 0;
  acc_filter;
end;

procedure Tstud_fak.SpinEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 46) or (Key = 8) then
  begin
    SpinEdit1.Value := 0;
    SpinEdit1.Text := '0';
    kurs := 0;
  end;
end;

procedure Tstud_fak.DBLookupComboBox1DropDown(Sender: TObject);
begin
  if filt1 <> '' then
    DataModule1.Table_w37.Filter := 'priz=' + '''' + '1' + '''' +
      ' and ' + filt1
  else
    DataModule1.Table_w37.Filter := filt1;
  DataModule1.Table_w37.Filtered := true;
  DBLookupComboBox1.Font.Color := clBlack;
end;

procedure Tstud_fak.DBLookupComboBox1Enter(Sender: TObject);
begin
  if DBLookupComboBox3.Font.Color = clWindow then
    DBLookupComboBox3.Font.Color := clWindow;
end;

procedure Tstud_fak.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tstud_fak.DBLookupComboBox2DropDown(Sender: TObject);
begin
  DBLookupComboBox2.Font.Color := clBlack;
end;

procedure Tstud_fak.DBLookupComboBox2Enter(Sender: TObject);
begin
  if DBLookupComboBox1.Font.Color = clWindow then
    DBLookupComboBox1.Font.Color := clWindow;
end;

procedure Tstud_fak.DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
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

procedure Tstud_fak.DBLookupComboBox3DropDown(Sender: TObject);
begin
  DBLookupComboBox3.Font.Color := clBlack;
end;

procedure Tstud_fak.DBLookupComboBox3Enter(Sender: TObject);
begin
  if DBLookupComboBox2.Font.Color = clWindow then
    DBLookupComboBox2.Font.Color := clWindow;
end;

procedure Tstud_fak.DBLookupComboBox3KeyDown(Sender: TObject; var Key: Word;
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

procedure Tstud_fak.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tstud_fak.acc_filter;
begin
  filt1 := '';
  filt2 := '';
  if spfak <> 0 then
  begin
    filt1 := 'spfak=' + inttostr(spfak);
    // DataModule1.Table_w37.Filter:='priz='+''''+'1'+''''+' and spfak='+inttostr(spfak);
    DataModule1.Table_w37.Filter := 'spfak=' + inttostr(spfak);
    DataModule1.Table_w37.Filtered := true;
  end;

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
      DataModule1.Table_w1.Filtered := false
    else
    begin
      DataModule1.Table_w1.Filter := filt2;
      DataModule1.Table_w1.Filtered := true;
    end
  else if filt2 = '' then
  begin
    DataModule1.Table_w1.Filter := filt1;
    DataModule1.Table_w1.Filtered := true;
  end
  else
  begin
    DataModule1.Table_w1.Filter := trim(filt1) + ' and ' + trim(filt2);
    DataModule1.Table_w1.Filtered := true;
  end;
  Edit1.Text := inttostr(DataModule1.Table_w1.RecordCount);
  if not DataModule1.Table_w1.FindKey([fam, stud_name, stud_pin]) then
    DataModule1.Table_w1.First;
  fam := DataModule1.Table_w1.fieldbyname('fam').asstring;
  stud_name := DataModule1.Table_w1.fieldbyname('name').asstring;
  stud_pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
  stud_fio := trim(DataModule1.Table_w1.fieldbyname('fam').asstring);
  stud_fio := trim(stud_fio) + ' ' +
    trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ';
  stud_fio := trim(stud_fio) + ' ' +
    trim(DataModule1.Table_w1.fieldbyname('vname').asstring);
  stud_gr := trim(DataModule1.Table_w1.fieldbyname('gruppa').asstring);
  stud_ls := trim(DataModule1.Table_w1.fieldbyname('ls').asstring);
  stud_zb := trim(DataModule1.Table_w1.fieldbyname('zachbook').asstring);
  // edit37.SetFocus;
end;

procedure Tstud_fak.PageControl3Change(Sender: TObject);
begin
  fam := DataModule1.Table_w1.fieldbyname('fam').asstring;
  stud_name := DataModule1.Table_w1.fieldbyname('name').asstring;
  stud_pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
  stud_fio := trim(DataModule1.Table_w1.fieldbyname('fam').asstring);
  stud_fio := trim(stud_fio) + ' ' +
    trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ';
  stud_fio := trim(stud_fio) + ' ' +
    trim(DataModule1.Table_w1.fieldbyname('vname').asstring);
  stud_gr := trim(DataModule1.Table_w1.fieldbyname('gruppa').asstring);
  stud_ls := trim(DataModule1.Table_w1.fieldbyname('ls').asstring);
  stud_zb := trim(DataModule1.Table_w1.fieldbyname('zachbook').asstring);

  if PageControl3.ActivePage = TabSheet1 then // вкладка 1 - список студентов
  begin
    num_page := 1;
    acc_filter;
  end;

  if PageControl3.ActivePage = TabSheet2 then // вкладка 2 - сведения о студенте
  begin
    Edit2.Text := DataModule1.Table_w1.fieldbyname('ls').asstring;
    Edit3.Text := DataModule1.Table_w1.fieldbyname('zachBook').asstring;
    Edit4.Text := DataModule1.Table_w1.fieldbyname('fam').asstring;
    Edit5.Text := DataModule1.Table_w1.fieldbyname('name').asstring;
    Edit6.Text := DataModule1.Table_w1.fieldbyname('vname').asstring;
    Edit38.Text := DataModule1.Table_w1.fieldbyname('godpr').asstring;
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

    DataModule1.Table_w2.IndexName := 'idxkadacc'; // поиск pin студента
    if not DataModule1.Table_w2.FindKey([stud_pin]) then
    begin
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
      Edit30.Text := '';
      RadioButton1.Checked := true;
      RadioButton2.Checked := false;
      RadioButton5.Checked := true;
      RadioButton6.Checked := false;
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
    end
    else
    begin
      if DataModule1.Table_w2.fieldbyname('sex').asstring = '1' then
      begin
        RadioButton1.Checked := true;
        RadioButton2.Checked := false;
        Label20.Caption := 'Окончил';
      end
      else
      begin
        RadioButton2.Checked := true;
        RadioButton1.Checked := false;
        Label20.Caption := 'Окончила';
      end;

      if DataModule1.Table_w2.fieldbyname('hostel').asstring = '1' then
      begin
        RadioButton5.Checked := true;
        RadioButton6.Checked := false;
      end
      else
      begin
        RadioButton6.Checked := true;
        RadioButton5.Checked := false;
      end;

      Edit8.Text := DataModule1.Table_w2.fieldbyname('pasnum').asstring;
      Edit9.Text := DataModule1.Table_w2.fieldbyname('pasdate').asstring;
      Edit10.Text := DataModule1.Table_w2.fieldbyname('paswho').asstring;

      Edit11.Text := DataModule1.Table_w2.fieldbyname('dat_ro').asstring;
      Edit12.Text := DataModule1.Table_w2.fieldbyname('mes_ro').asstring;

      Edit13.Text := DataModule1.Table_w2.fieldbyname('address').asstring;
      Edit14.Text := DataModule1.Table_w2.fieldbyname('registr').asstring;
      Edit15.Text := DataModule1.Table_w2.fieldbyname('phone').asstring;
      Edit30.Text := DataModule1.Table_w2.fieldbyname('mobphone').asstring;

      Edit20.Text := DataModule1.Table_w2.fieldbyname('mesjob').asstring;
      Edit21.Text := DataModule1.Table_w2.fieldbyname('doljob').asstring;
      Edit22.Text := DataModule1.Table_w2.fieldbyname('teljob').asstring;

      Edit24.Text := DataModule1.Table_w2.fieldbyname('schoolpr').asstring;
      Edit25.Text := DataModule1.Table_w2.fieldbyname('schoolgod').asstring;

      if DataModule1.Table_w2.fieldbyname('spcitiz').asstring <> '' then
        kd1 := DataModule1.Table_w2.fieldbyname('spcitiz').asstring
      else
      begin
        kd1 := '';
        DBLookupComboBox18.DataSource := nil;
      end;
      if DataModule1.Table_w2.fieldbyname('spsoc').asstring <> '' then
        kd2 := DataModule1.Table_w2.fieldbyname('spsoc').asstring
      else
      begin
        kd2 := '';
        DBLookupComboBox17.DataSource := nil;
      end;
      if DataModule1.Table_w2.fieldbyname('spkat').asstring <> '' then
        kd3 := DataModule1.Table_w2.fieldbyname('spkat').asstring
      else
      begin
        kd3 := '';
        DBLookupComboBox16.DataSource := nil;
      end;
      if DataModule1.Table_w2.fieldbyname('splang').asstring <> '' then
        kd4 := DataModule1.Table_w2.fieldbyname('splang').asstring
      else
      begin
        kd4 := '';
        DBLookupComboBox15.DataSource := nil;
      end;
      if DataModule1.Table_w2.fieldbyname('spschool').asstring <> '' then
        kd5 := DataModule1.Table_w2.fieldbyname('spschool').asstring
      else
      begin
        kd5 := '';
        DBLookupComboBox19.DataSource := nil;
      end;
      if DataModule1.Table_w2.fieldbyname('spksiva').asstring <> '' then
        kd6 := DataModule1.Table_w2.fieldbyname('spksiva').asstring
      else
      begin
        kd6 := '';
        DBLookupComboBox14.DataSource := nil;
      end;
    end;
    num_page := 2;
  end;

  if PageControl3.ActivePage = TabSheet3 then // вкладка 3 - приказы по студенту
  begin
    Edit7.Text := stud_fio;
    Edit16.Text := stud_gr;
    DataModule1.Table_w6.Filter := 'acc=' + inttostr(stud_pin);
    DataModule1.Table_w6.Filtered := true;
    DataModule1.Table_w37.Filtered := false;
    num_page := 3;
  end;

  if PageControl3.ActivePage = TabSheet4 then
  // вкладка 4 - смена фамилии (паспорта)
  begin
    Edit17.Text := stud_fio;
    Edit19.Text := stud_gr;
    DataModule1.Table_w4.Filter := 'acc=' + inttostr(stud_pin);
    DataModule1.Table_w4.Filtered := true;
    num_page := 4;
  end;

  if PageControl3.ActivePage = TabSheet5 then // вкладка 5 - поощрения/взыскания
  begin
    Edit23.Text := stud_fio;
    Edit26.Text := stud_gr;
    DataModule1.Table_w5.Filter := 'acc=' + inttostr(stud_pin);
    DataModule1.Table_w5.Filtered := true;
    num_page := 5;
  end;

  if PageControl3.ActivePage = TabSheet6 then // вкладка 6 - справка-вызов
  begin
    Edit28.Text := stud_fio;
    Edit29.Text := stud_gr;
    DataModule1.Table_w8.Filter := 'spfak=' + inttostr(spfak) + ' and acc=' +
      inttostr(stud_pin);
    DataModule1.Table_w8.Filtered := true;
    num_page := 6;
  end;

end;

procedure Tstud_fak.Edit37Change(Sender: TObject);
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

procedure Tstud_fak.Button8Click(Sender: TObject);
begin
  Enabled := false;
  act := 1; // добавление новой справки-вызов
  Application.CreateForm(Tspr_call, spr_call);
  spr_call.Show;
end;

procedure Tstud_fak.Button9Click(Sender: TObject);
begin
  Enabled := false;
  act := 2; // редактирование справки-вызов
  Application.CreateForm(Tspr_call, spr_call);
  spr_call.Show;
end;

procedure Tstud_fak.Button10Click(Sender: TObject);
begin
  DataModule1.Table_w8.Delete;
  DataModule1.Table_w8.Refresh;
end;

procedure Tstud_fak.Button2Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  Name_file: PWideChar;
  fil: OLEVariant;
  d1, d2, d3, ss: string;
  sp: integer;
begin

  Name_file := PChar('c:\doc\справка-вызов.doc');
  prakt_progress := tprakt_progress.Create(Application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.Show;
  prakt_progress.Label1.Caption := 'Обработка 1 записи.';
  Application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\spravka.doc'),
    Name_file, false);

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

  sp := 0;

  DataModule1.Table_p4.Open;
  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));

  WordApp.Selection.End := 0;
  WordApp.Selection.Start := 0;
  WordApp.Selection.Find.ClearFormatting;
  WordApp.Selection.Find.Forward := true;
  WordApp.Selection.Find.Wrap := 1; { wdFindContinue }
  WordApp.Selection.Find.Format := false;
  WordApp.Selection.Find.MatchCase := false;
  WordApp.Selection.Find.MatchWholeWord := true;
  WordApp.Selection.Find.MatchWildcards := true;
  WordApp.Selection.Find.MatchSoundsLike := false;
  WordApp.Selection.Find.MatchAllWordForms := false;

  // T1:=NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  n := monthof(DataModule1.Table_w8.fieldbyname('dateout').asdatetime);
  if dayof(DataModule1.Table_w8.fieldbyname('dateout').asdatetime) < 10 then
    d1 := '0' + inttostr(dayof(DataModule1.Table_w8.fieldbyname('dateout')
      .asdatetime))
  else
    d1 := inttostr(dayof(DataModule1.Table_w8.fieldbyname('dateout')
      .asdatetime));

  WordApp.Selection.Find.Text := '#dsp';
  WordApp.Selection.Find.Replacement.Text := d1;
  WordApp.Selection.Find.Execute(Replace := 2);

  WordApp.Selection.Find.Text := '#msp';
  WordApp.Selection.Find.Replacement.Text := namemonth[n];
  WordApp.Selection.Find.Execute(Replace := 2);

  WordApp.Selection.Find.Text := '#gsp';
  WordApp.Selection.Find.Replacement.Text :=
    inttostr(yearof(DataModule1.Table_w8.fieldbyname('dateout').asdatetime));
  WordApp.Selection.Find.Execute(Replace := 2);

  WordApp.Selection.Find.Text := '#nsp';
  WordApp.Selection.Find.Replacement.Text := DataModule1.Table_w8.fieldbyname
    ('numout').asstring;
  WordApp.Selection.Find.Execute(Replace := 2);

  WordApp.Selection.Find.Text := '#rab';
  WordApp.Selection.Find.Replacement.Text := DataModule1.Table_w8.fieldbyname
    ('mesjob').asstring;
  WordApp.Selection.Find.Execute(Replace := 2);

  WordApp.Selection.Find.Text := '#fiod';
  WordApp.Selection.Find.Replacement.Text := DataModule1.Table_w8.fieldbyname
    ('namerod').asstring;
  WordApp.Selection.Find.Execute(Replace := 2);

  WordApp.Selection.Find.Text := '#kurs';
  WordApp.Selection.Find.Replacement.Text := DataModule1.Table_w1.fieldbyname
    ('kurs').asstring;
  WordApp.Selection.Find.Execute(Replace := 2);

  n := monthof(DataModule1.Table_w8.fieldbyname('datebegin').asdatetime);
  if dayof(DataModule1.Table_w8.fieldbyname('datebegin').asdatetime) < 10 then
    d2 := ' 0' + inttostr(dayof(DataModule1.Table_w8.fieldbyname('datebegin')
      .asdatetime)) + ' ' + namemonth[n] + ' ' +
      inttostr(yearof(DataModule1.Table_w8.fieldbyname('datebegin')
      .asdatetime)) + 'г.'
  else
    d2 := ' ' + inttostr(dayof(DataModule1.Table_w8.fieldbyname('datebegin')
      .asdatetime)) + ' ' + namemonth[n] + ' ' +
      inttostr(yearof(DataModule1.Table_w8.fieldbyname('datebegin')
      .asdatetime)) + 'г.';

  WordApp.Selection.Find.Text := '#sdat';
  WordApp.Selection.Find.Replacement.Text := d2;
  WordApp.Selection.Find.Execute(Replace := 2);

  n := monthof(DataModule1.Table_w8.fieldbyname('dateend').asdatetime);
  if dayof(DataModule1.Table_w8.fieldbyname('dateend').asdatetime) < 10 then
    d3 := '0' + inttostr(dayof(DataModule1.Table_w8.fieldbyname('dateend')
      .asdatetime)) + ' ' + namemonth[n] + ' ' +
      inttostr(yearof(DataModule1.Table_w8.fieldbyname('dateend')
      .asdatetime)) + 'г.'
  else
    d3 := inttostr(dayof(DataModule1.Table_w8.fieldbyname('dateend').asdatetime)
      ) + ' ' + namemonth[n] + ' ' +
      inttostr(yearof(DataModule1.Table_w8.fieldbyname('dateend')
      .asdatetime)) + 'г.';

  WordApp.Selection.Find.Text := '#podat';
  WordApp.Selection.Find.Replacement.Text := d3;
  WordApp.Selection.Find.Execute(Replace := 2);

  WordApp.Selection.Find.Text := '#itd';
  WordApp.Selection.Find.Replacement.Text :=
    inttostr(1 + DaysBetween(DataModule1.Table_w8.fieldbyname('datebegin')
    .asdatetime, DataModule1.Table_w8.fieldbyname('dateend').asdatetime));
  WordApp.Selection.Find.Execute(Replace := 2);

  WordApp.Selection.Find.Text := '#itd';
  WordApp.Selection.Find.Replacement.Text :=
    inttostr(1 + DaysBetween(DataModule1.Table_w8.fieldbyname('datebegin')
    .asdatetime, DataModule1.Table_w8.fieldbyname('dateend').asdatetime));
  WordApp.Selection.Find.Execute(Replace := 2);

  WordApp.Selection.Find.Text := '#fio';
  WordApp.Selection.Find.Replacement.Text := DataModule1.Table_w1.fieldbyname
    ('fam').asstring + ' ' + DataModule1.Table_w1.fieldbyname('name').asstring +
    ' ' + DataModule1.Table_w1.fieldbyname('vname').asstring;
  WordApp.Selection.Find.Execute(Replace := 2);

  DataModule1.query5.sql.clear;
  DataModule1.query5.sql.add
    ('select a.pin, c.name, c.normsrok, c.shifr from acc as a,spgrup as b, spspec as c where a.spgrup=b.pin and b.spspec=c.pin');
  DataModule1.query5.sql.add('and a.pin=' + DataModule1.Table_w1.fieldbyname
    ('pin').asstring);
  DataModule1.query5.Open;

  DataModule1.qry1.sql.clear;
  DataModule1.qry1.sql.add('select a.codnew as shifr from special as a where ');
  DataModule1.qry1.sql.add(' a.cod=' + #39 + DataModule1.query5.fieldbyname
    ('shifr').asstring + #39 + ';');
  DataModule1.qry1.Open;

  if DataModule1.Table_w8.fieldbyname('at').asinteger = 0 then
  begin
    WordApp.Selection.Find.Text := '#att';
    WordApp.Selection.Find.Replacement.Text := ' промежуточной';
    WordApp.Selection.Find.Execute(Replace := 2);
  end;
  if DataModule1.Table_w8.fieldbyname('at').asinteger = 1 then
  begin
    WordApp.Selection.Find.Text := '#att';
    WordApp.Selection.Find.Replacement.Text := ' государственной итоговой';
    WordApp.Selection.Find.Execute(Replace := 2);
  end;

  if DataModule1.query5.fieldbyname('normsrok').asstring = '1.1' then
    sp := 1;
  if DataModule1.query5.fieldbyname('normsrok').asstring = '5' then
    sp := 1;
  if DataModule1.query5.fieldbyname('normsrok').asstring = '4' then
    sp := 2;

  if sp = 2 then
  begin
    WordApp.Selection.Find.Text := '#npc';
    WordApp.Selection.Find.Replacement.Text := 'направлению подготовки';
    WordApp.Selection.Find.Execute(Replace := 2);
  end;
  if sp = 1 then
  begin
    WordApp.Selection.Find.Text := '#npc';
    WordApp.Selection.Find.Replacement.Text := 'специальности';
    WordApp.Selection.Find.Execute(Replace := 2);
  end;

  WordApp.Selection.Find.Text := '#spec';
  WordApp.Selection.Find.Replacement.Text := DataModule1.qry1.fieldbyname
    ('shifr').asstring + ' ' + DataModule1.query5.fieldbyname('name').asstring;;
  WordApp.Selection.Find.Execute(Replace := 2);
  DataModule1.qry1.Close;
  { t1.Cell(1,1).Range.Text:=d1;
    t1.Cell(2,1).Range.Text:='СПРАВКА - ВЫЗОВ № '+DataModule1.Table_w8.fieldbyname('numout').Asstring;
    t1.Cell(4,1).Range.Text:=DataModule1.Table_w8.fieldbyname('mesjob').Asstring;
    ss:='В соответствии со статьей 173 Трудового кодекса Российской Федерации, статьей 17 Федерального закона от 22.08.96г. №125-ФЗ "О высшем и послевузовском профессиональном образовании" успешно обучающемуся по заочной форме студенту';
    t1.Cell(6,1).Range.Text:= ss+' '+DataModule1.Table_w1.fieldbyname('kurs').Asstring+' курса';
    t1.Cell(7,1).Range.Text:=DataModule1.Table_w8.fieldbyname('namerod').Asstring;
    n:= monthof(DataModule1.Table_w8.fieldbyname('datebegin').asdatetime);
    if dayof(DataModule1.Table_w8.fieldbyname('datebegin').asdatetime)<10
    then
    d2:='с 0'+inttostr(dayof(DataModule1.Table_w8.fieldbyname('datebegin').asdatetime))+' '+ namemonth[n]+' '+inttostr(yearof(DataModule1.Table_w8.fieldbyname('datebegin').asdatetime))+'г.'
    else
    d2:='с '+inttostr(dayof(DataModule1.Table_w8.fieldbyname('datebegin').asdatetime))+' '+ namemonth[n]+' '+inttostr(yearof(DataModule1.Table_w8.fieldbyname('datebegin').asdatetime))+'г.';
    n:= monthof(DataModule1.Table_w8.fieldbyname('dateend').asdatetime);
    if  dayof(DataModule1.Table_w8.fieldbyname('dateend').asdatetime)<10
    then
    d3:='по 0'+inttostr(dayof(DataModule1.Table_w8.fieldbyname('dateend').asdatetime))+' '+ namemonth[n]+' '+inttostr(yearof(DataModule1.Table_w8.fieldbyname('dateend').asdatetime))+'г.'
    else
    d3:='по '+inttostr(dayof(DataModule1.Table_w8.fieldbyname('dateend').asdatetime))+' '+ namemonth[n]+' '+inttostr(yearof(DataModule1.Table_w8.fieldbyname('dateend').asdatetime))+'г.';
    t1.Cell(9,1).Range.Text:=d2+d3+'продолжительностью '+inttostr(1+DaysBetween(DataModule1.Table_w8.fieldbyname('datebegin').asdatetime,DataModule1.Table_w8.fieldbyname('dateend').asdatetime))+' дней.';
    t1.Cell(10,1).Range.Text:='имеет государственную аккредитацию МО РФ, св-во № '+DataModule1.Table_p4.fieldbyname('nomakkr').asstring+' от '+DateTimeTostr(DataModule1.Table_p4.fieldbyname('dateakkr').asdatetime);
    t1.Cell(12,1).Range.Text:='учебного заведения    ___________________  '+rukfak;

    t1.Cell(14,2).Range.Text:=stud_fio;
    t1.Cell(16,1).Range.Text:=d2+d3;
    t1.Cell(18,1).Range.Text:='учебного заведения    ___________________  '+rukfak; }
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;
  WordApp.visible := true;
  if WordApp.visible = true then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = false then
    WordApp.Quit;
  WordApp := unassigned;
  DBGrid3.DefaultDrawing := true;
  DBGrid3.DataSource := DataModule1.DataSource_w4;

end;

procedure Tstud_fak.Button3Click(Sender: TObject);
begin
  sp := 1; // список простой
  Enabled := false;
  Application.CreateForm(Tspis_gr, spis_gr);
  spis_gr.Show;
end;

procedure Tstud_fak.Button4Click(Sender: TObject);
begin
  sp := 2; // список с личными данными
  Enabled := false;
  Application.CreateForm(Tspis_gr, spis_gr);
  spis_gr.Show;
end;

function FindAndReplace(const FindText, ReplaceText: widestring;
  Word: OLEVariant): Boolean;
// поиск и замена текстового фрагмента в документе
const
  wdReplaceAll = 2;
begin
  Word.Selection.Find.MatchSoundsLike := false;
  Word.Selection.Find.MatchAllWordForms := false;
  Word.Selection.Find.MatchWholeWord := false;
  Word.Selection.Find.Format := false;
  Word.Selection.Find.Forward := true;
  Word.Selection.Find.ClearFormatting;
  Word.Selection.Find.Text := FindText;
  Word.Selection.Find.Replacement.Text := ReplaceText;
  FindAndReplace := Word.Selection.Find.Execute(Replace := wdReplaceAll);
end;

procedure GenerateDocument(qData: TQuery; TemplateName: string);
var
  i: integer;
  Word: OLEVariant;
begin
  // создаем объект Ворда
  Word := CreateOLEObject('Word.Application');
  Word.visible := false;
  Word.Documents.add(TemplateName);

  // выгрузка данных
  for i := 0 to qData.Fields.Count - 1 do
  begin
    FindAndReplace('#' + qData.Fields[i].FieldName + '#',
      qData.Fields[i].asstring, Word);
  end;

  // вывод документа на экран
  Word.visible := true;
end;

function GetStudentQueryDataFromFile(fileName: string;
  QueryDatabaseName: string; StudentId: integer): TQuery;
var
  qData: TQuery;
begin
  qData := TQuery.Create(Application);
  with qData do
  begin
    Active := false;
    DatabaseName := QueryDatabaseName;
    sql.clear;
    sql.LoadFromFile(fileName);
    ParamByName('StudentId').asinteger := StudentId;
    Active := true;
  end;
  Result := qData;
end;

procedure Tstud_fak.ButtonStudentReferencePrintClick(Sender: TObject);
begin

  // new procedure of generating document
  GenerateDocument(GetStudentQueryDataFromFile
    (ExtractFilePath(Application.ExeName) + '\Queries\StudentReference.sql',
    DataModule1.Table_w1.DatabaseName, DataModule1.Table_w1pin.asinteger),
    ExtractFilePath(Application.ExeName) + '\Templates\StudentReference.dot');

end;

function GetGraduationYear(StudentId: integer): integer;
var
  qData: TQuery;
  Query: string;
  GraduationYear: integer;
begin
  qData := TQuery.Create(Application);
  with qData do
  begin
    Active := false;
    DatabaseName := DataModule1.Database2.DatabaseName;
    sql.Append('SELECT GetGraduationYear(' + inttostr(StudentId) + ')');
    Active := true;
    GraduationYear := Fields[0].asinteger;
    Destroy;
  end;
  Result := GraduationYear;
end;

procedure Tstud_fak.Button6Click(Sender: TObject);
begin

  // new procedure of generating document

  GenerateDocument(GetStudentQueryDataFromFile
    (ExtractFilePath(Application.ExeName) + '\Queries\Reference_Grant.sql',
    DataModule1.Table_w1.DatabaseName, DataModule1.Table_w1pin.asinteger),
    ExtractFilePath(Application.ExeName) + '\Templates\Reference_Grant.dot');

end;

procedure Tstud_fak.Button7Click(Sender: TObject);
begin
  fam := DataModule1.Table_w1.fieldbyname('fam').asstring;
  stud_name := DataModule1.Table_w1.fieldbyname('name').asstring;
  stud_pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
  stud_fio := trim(DataModule1.Table_w1.fieldbyname('fam').asstring);
  stud_fio := trim(stud_fio) + ' ' +
    trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ';
  stud_fio := trim(stud_fio) + ' ' +
    trim(DataModule1.Table_w1.fieldbyname('vname').asstring);
  stud_gr := trim(DataModule1.Table_w1.fieldbyname('gruppa').asstring);
  stud_ls := trim(DataModule1.Table_w1.fieldbyname('ls').asstring);
  stud_zb := trim(DataModule1.Table_w1.fieldbyname('zachbook').asstring);
  Enabled := false;
  Application.CreateForm(Tmovegr_fak, movegr_fak);
  movegr_fak.Show;
end;

procedure Tstud_fak.Edit37KeyPress(Sender: TObject; var Key: Char);
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

procedure Tstud_fak.Button11Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  Name_file: PWideChar;
  fil: OLEVariant;
  s1, s2: string;
  godv: integer;
begin
  if DataModule1.Table_w1.fieldbyname('spotd').asinteger <> 65 then
    exit;
  Name_file := PChar('c:\doc\справка фзфо.doc');
  prakt_progress := tprakt_progress.Create(Application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.Show;
  prakt_progress.Label1.Caption := 'Обработка  записи.';
  Application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\spravka15.doc'),
    Name_file, false);
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
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4

  t1.Cell(2, 2).Range.Text := '№ ' + DataModule1.Table_p4.fieldbyname('nomlits')
    .asstring + ' от ' + DataModule1.Table_p4.fieldbyname('datelits')
    .asstring + 'г.';
  t1.Cell(3, 3).Range.Text := '№ ' + DataModule1.Table_p4.fieldbyname('nomakkr')
    .asstring + ' от ' + DataModule1.Table_p4.fieldbyname('dateakkr')
    .asstring + 'г.';
  n := monthof(Date);
  if dayof(Date) < 10 then
    t1.Cell(6, 2).Range.Text := '0' + inttostr(dayof(Date)) + ' ' + namemonth[n]
      + ' ' + inttostr(yearof(Date)) + 'г.'
  else
    t1.Cell(6, 2).Range.Text := inttostr(dayof(Date)) + ' ' + namemonth[n] + ' '
      + inttostr(yearof(Date)) + 'г.';

  t1.Cell(7, 3).Range.Text := DataModule1.Table_w1.fieldbyname('fam').asstring +
    ' ' + DataModule1.Table_w1.fieldbyname('name').asstring + ' ' +
    DataModule1.Table_w1.fieldbyname('vname').asstring;
  s1 := 'в том, что он(а) является студентом ' +
    DataModule1.Table_w1.fieldbyname('kurs').asstring + ' курса ';
  s2 := 'факультета заочной формы обучения со сроком обучения 3,5 года и датой выпуска январь ';
  case DataModule1.Table_w1.fieldbyname('kurs').asinteger of
    1:
      if (n >= 8) and (n <= 12) then // 1 полугодие
        godv := yearof(Date) + 4
      else
        godv := yearof(Date) + 3;
    2:
      if (n >= 8) and (n <= 12) then // 1 полугодие
        godv := yearof(Date) + 3
      else
        godv := yearof(Date) + 2;
    3:
      if (n >= 8) and (n <= 12) then // 1 полугодие
        godv := yearof(Date) + 2
      else
        godv := yearof(Date) + 1;
    4:
      if (n >= 8) and (n <= 12) then // 1 полугодие
        godv := yearof(Date) + 1
      else
        godv := yearof(Date);
  end;
  s3 := inttostr(godv) + 'г. (в случае успешного выполнения учебных графиков)';

  t1.Cell(8, 2).Range.Text := s1 + s2 + s3;

  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;
  WordApp.visible := true;
  if WordApp.visible = true then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = false then
    WordApp.Quit;
  WordApp := unassigned;
end;

procedure Tstud_fak.Button12Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  Name_file: PWideChar;
  fil: OLEVariant;
  s1, s2: string;
begin
  Name_file := PChar('c:\doc\личная карточка.doc');
  prakt_progress := tprakt_progress.Create(Application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.Show;
  prakt_progress.Label1.Caption := 'Обработка  записи.';
  Application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\studcard.doc'),
    Name_file, false);

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
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  stud_pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
  if not DataModule1.Table_w2.FindKey([stud_pin]) then
    showmessage('Сведение о студенте нет!!!!!!!')
  else
  begin

    t1.Cell(2, 3).Range.Text := DataModule1.Table_w1.fieldbyname('gruppa')
      .asstring;;
    t1.Cell(4, 3).Range.Text := DataModule1.Table_w1.fieldbyname('fam')
      .asstring;
    t1.Cell(4, 5).Range.Text := DataModule1.Table_w1.fieldbyname
      ('name').asstring;
    t1.Cell(4, 7).Range.Text := DataModule1.Table_w1.fieldbyname
      ('vname').asstring;
    t1.Cell(5, 3).Range.Text := fak_name;
    t1.Cell(6, 3).Range.Text :=
      trim(DataModule1.Table_w1.fieldbyname('NewSpecCode').asstring) + ' ';
    t1.Cell(6, 3).Range.Text := t1.Cell(6, 3).Range.Text +
      trim(DataModule1.Table_w1.fieldbyname('sp1').asstring);
    if DataModule1.Table_w2.fieldbyname('sex').asstring = '1' then
      t1.Cell(8, 2).Range.Text := 'м'
    else
      t1.Cell(8, 2).Range.Text := 'ж';
    if not DataModule1.Table_w18.FindKey
      ([DataModule1.Table_w2.fieldbyname('spcitiz').asinteger]) then
      t1.Cell(8, 4).Range.Text := ''
    else
      t1.Cell(8, 4).Range.Text := DataModule1.Table_w18.fieldbyname
        ('name').asstring;
    t1.Cell(9, 2).Range.Text := DataModule1.Table_w2.fieldbyname
      ('dat_ro').asstring;
    t1.Cell(10, 2).Range.Text := DataModule1.Table_w2.fieldbyname
      ('mes_ro').asstring;
    t1.Cell(10, 5).Range.Text := trim(DataModule1.Table_w2.fieldbyname('papa')
      .asstring);
    t1.Cell(11, 2).Range.Text := DataModule1.Table_w2.fieldbyname
      ('pasnum').asstring;
    t1.Cell(11, 4).Range.Text :=
      trim(DataModule1.Table_w2.fieldbyname('papajob').asstring);
    t1.Cell(12, 2).Range.Text := trim(DataModule1.Table_w2.fieldbyname('paswho')
      .asstring) + ', ' + trim(DataModule1.Table_w2.fieldbyname('pasdate')
      .asstring);
    t1.Cell(13, 4).Range.Text := trim(DataModule1.Table_w2.fieldbyname('mama')
      .asstring);
    t1.Cell(14, 1).Range.Text := trim(DataModule1.Table_w2.fieldbyname('school')
      .asstring) + ', ' + trim(DataModule1.Table_w2.fieldbyname('schoolgod')
      .asstring) + 'г';
    t1.Cell(14, 3).Range.Text :=
      trim(DataModule1.Table_w2.fieldbyname('mamajob').asstring);
    t1.Cell(22, 1).Range.Text :=
      trim(DataModule1.Table_w2.fieldbyname('address').asstring) + ', т.' +
      trim(DataModule1.Table_w2.fieldbyname('phone').asstring) + ', ' +
      trim(DataModule1.Table_w2.fieldbyname('mobphone').asstring);
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;
  WordApp.visible := true;
  if WordApp.visible = true then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = false then
    WordApp.Quit;
  WordApp := unassigned;

end;

procedure Tstud_fak.Button13Click(Sender: TObject);
begin
  Enabled := false;
  Application.CreateForm(Tvipiska, vipiska);
  vipiska.datetimepicker1.Date := Date;
  vipiska.Show;
end;

procedure Tstud_fak.Button14Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  Name_file: PWideChar;
  fil: OLEVariant;
  s1, s2: string;
  sr, strsr, sro1: string;
  sro, sron, srku, srkurs: integer;
begin
  if spfak = 66 then
  begin
    sp := 66;
    fam := DataModule1.Table_w1.fieldbyname('fam').asstring;
    stud_name := DataModule1.Table_w1.fieldbyname('name').asstring;
    stud_pin := DataModule1.Table_w1.fieldbyname('pin').asinteger;
    stud_fio := trim(DataModule1.Table_w1.fieldbyname('fam').asstring);
    stud_fio := trim(stud_fio) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('name').asstring) + ' ';
    stud_fio := trim(stud_fio) + ' ' +
      trim(DataModule1.Table_w1.fieldbyname('vname').asstring);
    stud_gr := trim(DataModule1.Table_w1.fieldbyname('gruppa').asstring);
    stud_ls := trim(DataModule1.Table_w1.fieldbyname('ls').asstring);
    stud_zb := trim(DataModule1.Table_w1.fieldbyname('zachbook').asstring);
    Enabled := false;
    Application.CreateForm(Tsprav_acc, sprav_acc);
    sprav_acc.Show;
  end
  else
  begin
    Name_file := PChar('c:\doc\справка.doc');
    prakt_progress := tprakt_progress.Create(Application);
    Repaint;
    fil := string(Name_file);
    prakt_progress.Show;
    prakt_progress.Label1.Caption := 'Обработка  записи.';
    Application.ProcessMessages;

    prakt_progress.ProgressBar1.Max := 70 + n * 10;

    prakt_progress.ProgressBar1.StepIt; // 1
    CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\spravka12.doc'),
      Name_file, false);

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
    NEWDOC := WordApp.Documents.Open(string(Name_file));
    t1 := NEWDOC.Tables.Item(1);
    prakt_progress.ProgressBar1.StepIt; // 4
    // DataModule1.Table_p41.open;
    // DataModule1.Table_p41.First;
    t1.Cell(2, 1).Range.Text := '№ ' + DataModule1.Table_p4.fieldbyname
      ('nomlits').asstring + ' от ' + DataModule1.Table_p4.fieldbyname
      ('datelits').asstring + 'г.';
    t1.Cell(3, 2).Range.Text := '№ ' + DataModule1.Table_p4.fieldbyname
      ('nomakkr').asstring + ' от ' + DataModule1.Table_p4.fieldbyname
      ('dateakkr').asstring + 'г.';
    n := monthof(Date);
    if dayof(Date) < 10 then
      t1.Cell(6, 1).Range.Text := '0' + inttostr(dayof(Date)) + ' ' +
        namemonth[n] + ' ' + inttostr(yearof(Date)) + 'г.'
    else
      t1.Cell(6, 1).Range.Text := inttostr(dayof(Date)) + ' ' + namemonth[n] +
        ' ' + inttostr(yearof(Date)) + 'г.';
    t1.Cell(7, 2).Range.Text := DataModule1.Table_w1.fieldbyname('fam').asstring
      + ' ' + DataModule1.Table_w1.fieldbyname('name').asstring + ' ' +
      DataModule1.Table_w1.fieldbyname('vname').asstring;

    case DataModule1.Table_w1.fieldbyname('spfak').asinteger of
      65:
        begin
          if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 7 then
            // заочники
            s2 := ' факультета заочной формы обучения и не получает стипендию.'
          else // ускоренник
            // s2:=' факультета заочной формы с сокращенным сроком обучения и не получает стипендию.';
            s2 := ' факультета заочной формы с сокращенным сроком обучения';

          If DataModule1.Table_w1.fieldbyname('sl').asinteger = 1 then
            s1 := 'в том, что он(а) является слушателем ' +
              DataModule1.Table_w1.fieldbyname('kurs').asstring + ' курса, гр.'
              + DataModule1.Table_w1.fieldbyname('gruppa').asstring
          else
            s1 := 'в том, что он(а) является студентом ' +
              DataModule1.Table_w1.fieldbyname('kurs').asstring + ' курса, гр.'
              + DataModule1.Table_w1.fieldbyname('gruppa').asstring;
        end;
      { 66:  if DataModule1.Table_w1.fieldbyname('spotd').asinteger=7   then    //заочники ФССО
        s2:=' факультета '+fak_name+' заочной формы обучения'
        else                                                       //дневники
        s2:=' факультета '+fak_name+' заочной формы обучения'; }
    else
      begin
        If DataModule1.Table_w1.fieldbyname('sl').asinteger = 1 then
          s1 := 'в том, что он(а) является слушателем ' +
            DataModule1.Table_w1.fieldbyname('kurs').asstring + ' курса '
        else
          s1 := 'в том, что он(а) является студентом ' +
            DataModule1.Table_w1.fieldbyname('kurs').asstring + ' курса ';
        s2 := copy(fak_name, 1, length(fak_name) - 2) + 'ого' +
          ' факультета очной формы обучения.';
      end;
    end;
    t1.Cell(8, 1).Range.Text := s1 + s2;
    DataModule1.query4.sql.clear;
    DataModule1.query4.sql.add
      ('Select pin,acc,spevent,mvnum,mvdate from moves where acc=' +
      DataModule1.Table_w1.fieldbyname('pin').asstring);
    DataModule1.query4.Open;
    t1.Cell(9, 1).Range.Text := '    Зачислен(а) приказом №' +
      DataModule1.query4.fieldbyname('mvnum').asstring + ' oт ' +
      DataModule1.query4.fieldbyname('mvdate').asstring + ' г.';

    DataModule1.query5.sql.clear;
    DataModule1.query5.sql.add
      ('select a.pin, c.name,a.kurs, c.normsrok,a.spotd from acc as a,spgrup as b, spspec as c where a.spgrup=b.pin and b.spspec=c.pin');
    DataModule1.query5.sql.add('and a.pin=' + DataModule1.Table_w1.fieldbyname
      ('pin').asstring);
    DataModule1.query5.Open;
    sron := yearof(DataModule1.query4.fieldbyname('mvdate').asdatetime);
    srkurs := DataModule1.query5.fieldbyname('kurs').asinteger;
    if monthof(Date) <= 8 then
      srku := 0
    else
      srku := 1;
    { if ((datamodule1.query5.fieldbyname('normsrok').asstring='4') and (datamodule1.query5.fieldbyname('spotd').asstring='8')) then
      begin
      strsr:='4 года';
      sro:=4;
      sro1:='28.06.'+inttostr(sro-srkurs+yearof(date)+srku);
      end;
      if ((datamodule1.query5.fieldbyname('normsrok').asstring='4') and (datamodule1.query5.fieldbyname('spotd').asstring<>'8')) then
      begin
      strsr:='4 года';
      sro:=4;
      sro1:='30.06.'+inttostr(sro-srkurs+yearof(date)+srku+1);
      end;
      if ((datamodule1.query5.fieldbyname('normsrok').asstring='5') and (datamodule1.query5.fieldbyname('spotd').asstring='8')) then
      begin
      strsr:='5 лет';
      sro:=5;
      sro1:='28.06.'+inttostr(sro-srkurs+yearof(date)+srku);
      end;
      if ((datamodule1.query5.fieldbyname('normsrok').asstring='5') and (datamodule1.query5.fieldbyname('spotd').asstring<>'8')) then
      begin
      strsr:='5 лет';
      sro:=5;
      sro1:='30.06.'+inttostr(sro-srkurs+yearof(date)+srku+1);
      end;
      if datamodule1.query5.fieldbyname('normsrok').asstring='1.1' then
      begin
      strsr:='1 год 10 месяцев';
      sro:=2;
      sro1:='30.06.'+inttostr(sro-srkurs+yearof(date)+srku);
      end; }
    if ((DataModule1.query5.fieldbyname('normsrok').asstring = '4') and
      (DataModule1.query5.fieldbyname('spotd').asstring = '8')) then
    begin
      strsr := '3.5 года';
      sro := 4;
      sro1 := '28.02.' + inttostr(sro - srkurs + yearof(Date) + srku);
    end;
    if ((DataModule1.query5.fieldbyname('normsrok').asstring = '4') and
      (DataModule1.query5.fieldbyname('spotd').asstring <> '8')) then
    begin
      strsr := '5 лет';
      sro := 4;
      sro1 := '31.08.' + inttostr(sro - srkurs + yearof(Date) + srku + 1);
    end;
    if ((DataModule1.query5.fieldbyname('normsrok').asstring = '5') and
      (DataModule1.query5.fieldbyname('spotd').asstring = '8')) then
    begin
      strsr := '3.5 года';
      sro := 5;
      sro1 := '28.02.' + inttostr(sro - srkurs + yearof(Date) + srku);
    end;
    if ((DataModule1.query5.fieldbyname('normsrok').asstring = '5') and
      (DataModule1.query5.fieldbyname('spotd').asstring <> '8')) then
    begin
      strsr := '6 лет';
      sro := 5;
      sro1 := '31.08.' + inttostr(sro - srkurs + yearof(Date) + srku + 1);
    end;
    if DataModule1.query5.fieldbyname('normsrok').asstring = '1.1' then
    begin
      strsr := '1 год 10 месяцев';
      sro := 2;
      sro1 := '30.06.' + inttostr(sro - srkurs + yearof(Date) + srku); // 2
    end;

    t1.Cell(10, 1).Range.Text := '    Нормативный период обучения ' + strsr +
      '. Предварительный срок окончания обучения ' + sro1 + ' г.';
    begin
      /// //+1
      t1.Cell(14, 2).Range.Text := rukfak;
      t1.Cell(25, 2).Range.Text := 'Н.В.Милосердова';
    end;
    prakt_progress.ProgressBar1.StepIt; // 7
    prakt_progress.free;
    WordApp.visible := true;
    if WordApp.visible = true then
      NEWDOC.SAVEas(fil);
    if WordApp.visible = false then
      WordApp.Quit;
    WordApp := unassigned;
  end;

end;

procedure Tstud_fak.Button15Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  Name_file: PWideChar;
  fil: OLEVariant;
  s1, s2: string;
  sr, strsr, sro1: string;
  sro, sron, srku, srkurs, nu, i: integer;
begin
  begin
    Name_file := PChar('c:\doc\Список.doc');
    prakt_progress := tprakt_progress.Create(Application);
    Repaint;
    fil := string(Name_file);
    prakt_progress.Show;
    prakt_progress.Label1.Caption := 'Обработка  записи.';
    Application.ProcessMessages;

    prakt_progress.ProgressBar1.Max := 70 + n * 10;

    prakt_progress.ProgressBar1.StepIt; // 1
    CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\doc\Spisok.doc'),
      Name_file, false);

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
    // DataModule1.Table_p4.Open;
    // prakt_progress.ProgressBar1.StepIt;//3
    NEWDOC := WordApp.Documents.Open(string(Name_file));
    t1 := NEWDOC.Tables.Item(1);
    prakt_progress.ProgressBar1.Max := DataModule1.Table_w1.RecordCount;
    prakt_progress.ProgressBar1.StepIt; // 4
    DataModule1.Table_w1.First;
    nu := 2;
    while not DataModule1.Table_w1.eof do
    begin
      t1.Cell(nu, 1).Range.Text := nu - 1;
      t1.Cell(nu, 2).Range.Text := DataModule1.Table_w1.fieldbyname
        ('fio').asstring;
      t1.Cell(nu, 3).Range.Text := DataModule1.Table_w1.fieldbyname
        ('godpr').asstring;
      DataModule1.query4.sql.clear;
      DataModule1.query4.sql.add('Select * from acckadr where acc=' +
        DataModule1.Table_w1.fieldbyname('pin').asstring);
      DataModule1.query4.Open;
      t1.Cell(nu, 4).Range.Text := DataModule1.query4.fieldbyname
        ('schoolgod').asstring;
      DataModule1.query7.sql.clear;
      DataModule1.query7.sql.add('Select * from spschool where pin=' +
        DataModule1.query4.fieldbyname('spschool').asstring);
      DataModule1.query7.Open;
      t1.Cell(nu, 5).Range.Text := DataModule1.query7.fieldbyname
        ('name').asstring;
      DataModule1.Table_w1.next;
      nu := nu + 1;
      prakt_progress.ProgressBar1.StepIt;
    end;
    DataModule1.query7.Close;
    DataModule1.query4.Close;
  end;
  // 7
  prakt_progress.free;
  for i := nu to 400 do
    t1.Rows.Item(nu).Delete;

  WordApp.visible := true;
  if WordApp.visible = true then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = false then
    WordApp.Quit;
  WordApp := unassigned;
end;

end.
