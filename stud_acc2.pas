unit stud_acc2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, StdCtrls, Mask, DBCtrls, ExtCtrls,Buttons,DB,DateUtils;

type
  Tfindfio_stud = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    fam: TEdit;
    name: TEdit;
    vname: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  findfio_stud: Tfindfio_stud;

implementation
  uses main1,stud_acc1;
{$R *.dfm}

procedure Tfindfio_stud.Button2Click(Sender: TObject);
begin
 close;
end;

procedure Tfindfio_stud.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 stud_acc.Enabled:=true;
end;

procedure Tfindfio_stud.Button1Click(Sender: TObject);
begin
 if trim(fam.Text)='' then
 begin
  showmessage('Введите фамилию'); exit;
 end;
  DataModule1.Table_w1.IndexName :='idxaccfam';
  if ((trim(name.Text)<>'') and (DataModule1.Table_w1.FindKey([trim(fam.Text),trim(name.Text)])=False)) or
     ((trim(name.Text)='') and (DataModule1.Table_w1.FindKey([trim(fam.Text)])=False))
  then //в основной базе не найден
   begin
    DataModule1.Table_w4.IndexName :='idxfamfio';
    if (not DataModule1.Table_w4.FindKey([trim(fam.Text),trim(name.Text),trim(vname.Text)])) and
       (not DataModule1.Table_w4.FindKey([trim(fam.Text),trim(name.Text)])) and
       (not DataModule1.Table_w4.FindKey([trim(fam.Text)]))
    then //в базе смены фамилии не найден
     begin  showmessage('Такого студента нет!'); close end
    else
     begin
      stud_pin:= DataModule1.Table_w4.FieldByName('acc').Asinteger;
      DataModule1.Table_w1.IndexName :='PRIMARY';
      if not DataModule1.Table_w1.FindKey([stud_pin]) then
       begin  showmessage('Такого студента в основной базе нет!'); close end
      else
       begin
        stud_fio:=trim(DataModule1.Table_w1.FieldByname('fam').asstring);
        stud_fio:=trim(stud_fio)+' '+trim(DataModule1.Table_w1.FieldByname('name').asstring)+' ';
        stud_fio:=trim(stud_fio)+' '+trim(DataModule1.Table_w1.FieldByname('vname').asstring);
        stud_gr :=trim(DataModule1.Table_w1.FieldByname('gruppa').asstring);
        stud_ls :=trim(DataModule1.Table_w1.FieldByname('ls').asstring);
        stud_zb :=trim(DataModule1.Table_w1.FieldByname('zachbook').asstring);
        showmessage('Сейчас Фио этого студента'+''#13''+stud_fio);
       end;
     end;
   end;
   close;
end;

end.
