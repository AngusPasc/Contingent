unit acc_rep4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Spin, Buttons,datamodule, OleServer, WordXP,ComObj,
  ExtCtrls, DateUtils;

type
  Tacc_war2 = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure DBLookupComboBox2DropDown(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_war2: Tacc_war2;
  filt,voenkom :string;
  ch : integer;
implementation
 uses main1,prakt_progress1;
{$R *.dfm}

procedure Tacc_war2.FormActivate(Sender: TObject);
begin
 DataModule1.Table_w1.IndexName :='idxaccfam';
 DataModule1.Table_w1.Open;
 DataModule1.Table_w1.Filter := 'spsost=1';
 DataModule1.Table_w1.Filtered :=True;
 DataModule1.Table_w2.Open;
 DataModule1.Table_w3.Open;
 RadioButton1.Checked :=True;   RadioButton2.Checked :=False;
 filt := 'tip=3';  voenkom:='';     ch:=2;
 DataModule1.Table46_1.Open;
 DataModule1.Table46_1.Filter := filt;
 DataModule1.Table46_1.Filtered :=True;
end;

procedure Tacc_war2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.Table_w1.Close;
 DataModule1.Table_w2.Close;
  DataModule1.Table_w3.Close;
 DataModule1.Table_w1.Filtered :=False;
 DataModule1.Table46_1.Close;
 DataModule1.Table46_1.Filtered :=False;
 main.Enabled:=True;
end;

procedure Tacc_war2.BitBtn2Click(Sender: TObject);
begin
 close;
end;

procedure Tacc_war2.RadioButton1Click(Sender: TObject);
begin
  RadioButton2.Checked :=False; filt := 'tip=3'; ch:=2;
  DbLookupComboBox2.Enabled:= False; DbLookupComboBox1.Enabled:= True;
end;

procedure Tacc_war2.RadioButton2Click(Sender: TObject);
begin
  RadioButton1.Checked :=False; filt := 'tip=4'; ch:=1;
  DbLookupComboBox1.Enabled:= False; DbLookupComboBox2.Enabled:= True;
end;

procedure Tacc_war2.DBLookupComboBox1DropDown(Sender: TObject);
begin
 DataModule1.Table46_1.Filter:='tip=3';
 DataModule1.Table46_1.Filtered :=True;
end;

procedure Tacc_war2.DBLookupComboBox2DropDown(Sender: TObject);
begin
 DataModule1.Table46_1.Filter:='tip=4';
 DataModule1.Table46_1.Filtered :=True;
end;

procedure Tacc_war2.BitBtn1Click(Sender: TObject);
var
 WordApp,NEWDOC: OLEVariant;
  t1: OLEVariant;
  nn,god,i,n :integer;
  Name_file:PWideChar;
//  f:Tprakt_progress;
  fil:olevariant;
  filt,str :string;
begin
  if (SpinEdit2.value<SpinEdit1.value) or  (SpinEdit2.value=0) or  (SpinEdit1.value=0) then
  begin
   showmessage('Неправильно задан диапазон');
   exit;
  end;
  name_file:=PChar('c:\doc\список_студентов призывников.doc');
  DataModule1.Table_w1.Filtered :=True;
  prakt_progress:=tprakt_progress.Create(application);
  bitbtn1.Enabled:=false;
  Repaint;
  fil:=string(name_file);
  if ch =1 then // город
    DataModule1.Table46_1.Filter := 'spreg3='+inttostr(DataModule1.table46_1.fieldbyname('pin').asinteger)
  else
    DataModule1.Table_w3.Filter := 'spreg2='+inttostr(DataModule1.table46_1.fieldbyname('pin').asinteger);

  DataModule1.Table_w3.Filtered :=True;
  prakt_progress.show;

  n:= DataModule1.Table_w3.RecordCount;
  prakt_progress.Label1.Caption:='Обработка '+inttostr(n)+' записей.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max:=70+n*10;

  prakt_progress.ProgressBar1.StepIt;//1
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\doc\report6.doc'),Name_file,false);

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

  prakt_progress.ProgressBar1.StepIt;//3
  NEWDOC:=WordApp.Documents.Open(string(Name_file));
  T1:=NEWDOC.Tables.Item(1);

  prakt_progress.ProgressBar1.StepIt;//4
  if ch=1 then //город
   T1.CELL(2,1).RANGE.TEXT:='г.'+voenkom
  else   // район
   T1.CELL(2,1).RANGE.TEXT:=voenkom ;
   nn:=0;
  prakt_progress.ProgressBar1.StepIt;//5
   DataModule1.Table_w2.IndexName :='idxkadacc';    // поиск по pin студента
   DataModule1.Table_w1.IndexName :='PRIMARY';
  for i:=1 to n do
  begin
   prakt_progress.Label1.Caption:='Обработка '+inttostr(n-i)+' записей.';
   application.ProcessMessages;
   prakt_progress.ProgressBar1.StepIt;

   if (not DataModule1.Table_w2.FindKey([DataModule1.Table_w3.FieldByName('acc').AsInteger])) or
       ( not DataModule1.Table_w1.FindKey([DataModule1.Table_w3.FieldByName('acc').AsInteger]))
    then
    begin
       prakt_progress.ProgressBar1.StepIt;
       DataModule1.Table_w3.Next
    end
   else
    begin
     god := yearof(DataModule1.Table_w2.FieldByName('dat_ro').AsDateTime);
     if ( god < spinedit1.Value ) or ( god > spinedit2.Value )  then // не призывник
      begin
       prakt_progress.ProgressBar1.StepIt;
       DataModule1.Table_w3.Next
      end
     else
      begin
       nn:=nn+1;
       t1.Cell(i+5,1).Range.Text:=inttostr(nn);
       t1.Cell(i+5,2).Range.Text:=trim(datamodule1.Table_w1.fieldbyname('fio').AsString);
       t1.Cell(i+5,3).Range.Text:=inttostr(god);
       t1.Cell(i+5,4).Range.Text:=trim(datamodule1.Table_w1.fieldbyname('gruppa').AsString);
       DataModule1.Table_w3.Next
      end;
    end;
   if i<n then  t1.Rows.Add();     //чтобы не печатать пустую строку в конце
  end;
  prakt_progress.ProgressBar1.StepIt;//7
  prakt_progress.free;

  WordApp.visible:=true;
  if WordApp.visible=true then NEWDOC.SAVEas(fil);
  if WordApp.visible=false then WordApp.Quit;
  WordApp:=unassigned;
  bitbtn1.Enabled:=True;

end;

procedure Tacc_war2.DBLookupComboBox1Click(Sender: TObject);
begin
 voenkom := DataModule1.table46_1.fieldbyname('name').asstring;
end;

procedure Tacc_war2.DBLookupComboBox2Click(Sender: TObject);
begin
 voenkom := DataModule1.table46_1.fieldbyname('name').asstring;
end;

end.
