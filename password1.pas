unit password1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls,datamodule, ExtCtrls;

type
  Tpassword = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  password: Tpassword;

implementation
uses main1;
{$R *.dfm}

procedure Tpassword.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table1.Close;
  DataModule1.Table101.Filtered :=False;
  DataModule1.Table101.Close;
  main.Enabled:=True;
  if Button2.Focused then
  begin
    DataModule1.Database1.Connected:=false;
    DataModule1.Database2.Connected:=false;
    DataModule1.Database3.Connected:=false;
    main.Close;
  end;
  if priz_dost =0 then main.Close;
end;

procedure Tpassword.FormCreate(Sender: TObject);

begin
 main.enabled:=false;
 priz_dost:=0;
 try
 DataModule1.Database1.Connected:=true;
 except
 end;
 if not DataModule1.Database1.Connected then
 begin
  showmessage('Нет соединения с сервером!');
  exit;
 end;

 try
 DataModule1.Database2.Connected:=true;
 except
 end;
 if not DataModule1.Database2.Connected then
 begin
  showmessage('Нет соединения с сервером (студенты)!');
  exit;
 end;

try
 DataModule1.Database3.Connected:=true;
 except
 end;
 if not DataModule1.Database3.Connected then
 begin
  showmessage('Нет соединения с сервером !');
  exit;
 end;
 DataModule1.Table1.Open;
 DataModule1.Table101.Open;
 DataModule1.Table101.Filter :='cod=16 or cod=13';
 DataModule1.Table101.Filtered :=True;
end;

procedure Tpassword.Button1Click(Sender: TObject);
var pp:string;
begin
  if Edit1.Text=''  then
 begin
  showmessage('Введите пароль!');
  exit;
 end;
 if DbLookupComboBox1.Text='' then
 begin
  showmessage('Не выбрано подразделение!');
  exit;
 end;


{ if not DataModule1.Table101.FindKey([16,string(DataModule1.Table1.FieldByName('cod').Asstring)]) then
 begin
  showmessage('На данное подразделение отсутствует пароль!'+''#13''+'Обратитесь к администратору.');
  exit;
 end;  }
 //podrcod := trim(DataModule1.Table101.FieldByName('codk').AsString);
 spfak:=0; rukfak:='';
 //if cod_podr='06' then begin spfak:=33; fak_name:='технологический'; rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString)end;//ТФ
 //if cod_podr='07' then begin spfak:=36; fak_name:='аграрно-технический'; rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString)end;//АТФ
 //if cod_podr='08' then begin spfak:=37; fak_name:='электротехнический'; rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString)end;//ЭТФ
{
 if cod_podr='60' then begin spfak:=98; krfak:='ТФ'; fak_name:='технический'; rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString)end;//ТФ
 if cod_podr='09' then begin spfak:=57; krfak:='ГЭФ'; fak_name:='гуманитарно-экономический'; rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString)end;//ГЭФ
 if cod_podr='010' then begin spfak:=65;krfak:='ФЗФО'; fak_name:='заочной формы обучения'; rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString)end;//ФЗФО
 //if cod_podr='011' then begin spfak:=66; fak_name:='среднего специального образования'; rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString) end;//ФССО

 if cod_podr='61' then begin
  spkaf:= trim(DataModule1.Table101.FieldByName('codk').AsString); //запоминаем код кафедры
 end;
 if Edit1.Text=DataModule1.Table101.FieldByName('pasread').Asstring then
 begin
  priz_dost:=0;
 end;
 if Edit1.Text=DataModule1.Table101.FieldByName('paspol').Asstring then
 begin
  priz_dost:=1;
 end;
 if cod_podr='11' then         //отдел кадров
   begin
    pp:='';
    pp:=pp+'p';   pp:=pp+'a';   pp:=pp+'s';
    pp:=pp+'s';   pp:=pp+'w';   pp:=pp+'o';
    pp:=pp+'r';   pp:=pp+'d';   pp:=pp+'=';
    pp:=pp+'p';   pp:=pp+'l';   pp:=pp+'a';
    pp:=pp+'n';   pp:=pp+'a';   pp:=pp+'t';
    pp:=pp+'p';   pp:=pp+'l';   pp:=pp+'a';
    pp:=pp+'2';
    datamodule1.Database4.Params.Add(pp);
    DataModule1.Database4.Connected:=True;
    if not DataModule1.Database4.Connected then
    begin
     showmessage('Нет соединения с сервером platn!');
     exit;
    end;
  end;
  main.Show;
 Close;  }
end;

procedure Tpassword.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tpassword.DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 edit1.SetFocus;
end;

procedure Tpassword.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then button1.SetFocus;
end;

end.

