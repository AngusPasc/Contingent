unit acc_stat4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls, DateUtils;

type
  Tstat_reiting = class(TForm)
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpinEdit1: TSpinEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stat_reiting: Tstat_reiting;
  kodspectf: array [1 .. 7] of integer = (
    4,
    6,
    10,
    5,
    1,
    11,
    8
  ); // коды спец-тей ТФ
  kodspecgf: array [1 .. 4] of integer = (
    7,
    3,
    2,
    12
  ); // коды спец-тей ГЭФ

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tstat_reiting.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'PRIMARY';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w37.IndexName := 'idxgrfos';
  DataModule1.Table_w37.Open;
  DataModule1.Table_w10.IndexName := 'PRIMARY';
  DataModule1.Table_w10.Open;
  // DataModule1.Table_w11.Indexfields:='goduch;spfak;spotd;spspec;kurs';
  DataModule1.Table_w11.Open;
  DataModule1.Table_w12.IndexName := 'sessia';
  DataModule1.Table_w12.Open;
end;

procedure Tstat_reiting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  DataModule1.Table_w37.Close;
  DataModule1.Table_w10.Close;
  DataModule1.Table_w11.Close;
  DataModule1.Table_w12.Close;
  DataModule1.Table_w37.Filtered := False;
  DataModule1.Table_w10.Filtered := False;
  DataModule1.Table_w12.Filtered := False;
  main.Enabled := True;
end;

procedure Tstat_reiting.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tstat_reiting.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  s1: string;
  i, j, k, f, fo, god, sp, ses: integer;
  sum_k, sum_all: array [1 .. 7] of integer;
  // массив суммарное кол-во по курсам и итого
  Name_file: PWideChar;
  fil: OLEVariant;
begin
  { //сначало ТФ
    f:=98; fo:=6; god:=spinedit1.value;
    for i:=1 to 7 do begin //цикл по специальностям

    for k:=1 to 4 do begin  //цикл по курсам
    sp:=kodspectf[i];
    if not DataModule1.Table_w11.FindKey([god,f,fo,sp,k]) then
    showmessage('Не введены данные!')
    else begin
    ses:= DataModule1.Table_w11.fieldbyname('pin').asinteger; //код сессии
    s1:='spfak='+inttostr(f)+' and spotd='+inttostr(fo)+' and spspec='+inttostr(sp);
    case k of
    1 : s1:=s1+' and ngrup>'inttostr((god mod 10)*10)+' and ngrup<'inttostr((god mod 10)*10+10)
    2 : s1:=s1+' and ngrup>'inttostr((god mod 10)*10-10)+' and ngrup<'inttostr((god mod 10)*10)
    3 : s1:=s1+' and ngrup>'inttostr((god mod 10)*10-20)+' and ngrup<'inttostr((god mod 10)*10-10)
    4 : s1:=s1+' and ngrup>'inttostr((god mod 10)*10-30)+' and ngrup<'inttostr((god mod 10)*10-20)
    end;
    DataModule1.Table_w37.filter:= s1;
    DataModule1.Table_w37.filtred:=true;
    while DataModule1.Table_w37.eof do   //цикл по группам


    //затем ГЭФ }
end;

end.
