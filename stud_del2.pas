unit stud_del2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule,DateUtils;

type
  Tacc_delfam = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_delfam: Tacc_delfam;
  fam,nam,vname : string;
  pasnum,paswho,pasdate : string;
  str1,str2,str_dd : string;
implementation
 uses main1,stud_acc1;
{$R *.dfm}

procedure Tacc_delfam.FormCreate(Sender: TObject);
begin
  //подтвердить удаление
 // DataModule1.Table_w26.Open;
end;

procedure Tacc_delfam.BitBtn2Click(Sender: TObject);
begin
 DataModule1.Table_w1.Cancel;
 DataModule1.Table_w2.Cancel;
 DataModule1.Table_w4.Cancel;
 close;
end;

procedure Tacc_delfam.BitBtn1Click(Sender: TObject);
begin
 If Datamodule1.Table_w4.RecordCount >0 then // можно удалять приказ
  begin
   DataModule1.Table_w4.Last;
   fam := trim(Datamodule1.Table_w4.fieldbyname('fam').AsString);   // взяли старые фамилия
   nam := trim(Datamodule1.Table_w4.fieldbyname('name').AsString);   // взяли старые имя
   vname := trim(Datamodule1.Table_w4.fieldbyname('vname').AsString);   // взяли старые отчество
   pasnum := trim(Datamodule1.Table_w4.fieldbyname('pasnum').AsString);  // старый № паспорта
   paswho := trim(Datamodule1.Table_w4.fieldbyname('paswho').AsString);  // старое Кто выдал
   pasdate := trim(Datamodule1.Table_w4.fieldbyname('pasdate').AsString); // старая дата выдачи

   if (fam<>'') and (nam<>'') and (vname<>'')  then  //
     begin
      DataModule1.Query1.SQL.Clear;
      stud_acc.Edit17.Text :=trim(fam)+' '+ trim(nam)+' '+trim(vname);
      str1 := 'update acc set fam='+''''+fam+''''+', name='+''''+nam+''''+', vname='+''''+vname+'''';
      str2 := ' where pin='+inttostr(stud_pin);
      DataModule1.Query1.SQL.Add(str1+str2);
      DataModule1.Query1.ExecSQL;
      datamodule1.Table_w1.Refresh;
     end;

   DataModule1.Query2.SQL.Clear;
   if pasdate <>'' then
    str_dd :=''''+inttostr(yearof(strtodate(pasdate)))+'-'+ inttostr(monthof(strtodate(pasdate)))+'-'+inttostr(dayof(strtodate(pasdate)))+''''
   else
    str_dd :='Null';
   str1 := 'update acckadr set pasnum='+''''+pasnum+''''+', paswho='+''''+paswho+''''+', pasdate='+str_dd;
   str2 := ' where acc='+inttostr(stud_pin);
   DataModule1.Query2.SQL.Add(str1+str2);
   DataModule1.Query2.ExecSQL;
   datamodule1.Table_w2.Refresh;

   datamodule1.Table_w4.Delete;
   datamodule1.Table_w4.Refresh
  end
 else
   showmessage(' Удалить запись невозможно!!! ');
 close;
end;

procedure Tacc_delfam.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 stud_acc.Enabled:=true;
end;

end.
