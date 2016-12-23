unit abitu3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls,DataModule,DB,
  DBCtrls,DateUtils;

type
  Tabituzu = class(TForm)
    Label5: TLabel;
    Label1: TLabel;
    nompr: TEdit;
    Label2: TLabel;
    datpr: TEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  abituzu: Tabituzu;
  zach,fak,otd,spec : integer;
  filtr : string;
implementation
  uses main1;

{$R *.dfm}

procedure Tabituzu.DBLookupComboBox1Click(Sender: TObject);
begin
  zach:= datamodule1.snspec.FieldByName('kod').AsInteger;
  otd := datamodule1.snspec.FieldByName('sprotd').AsInteger;
  fak := datamodule1.snspec.FieldByName('sprfak').AsInteger;
  if datamodule1.snspec.FieldByName('sprspec').AsInteger = 16 //����   � �������
   then
    spec := 13                                               //� ��������
   else
    spec := datamodule1.snspec.FieldByName('sprspec').AsInteger;

 Datamodule1.baza_h.Filtered := False;
 filtr := '(otd=4) and ((zach='+inttostr(zach)+') or (zach1='+inttostr(zach)+'))';
 Datamodule1.baza_h.Filter:= filtr;
 Datamodule1.baza_h.Filtered := True;
 Edit1.Text:=inttostr(Datamodule1.baza_h.RecordCount);
end;

procedure Tabituzu.DBGrid1CellClick(Column: TColumn);
begin
 if datamodule1.baza_h.FieldByName('zapis').AsInteger>1 then
   showmessage('"���� ���������� ��� ������� � �������!')
 else
 begin
  datamodule1.baza_h.edit;
  if datamodule1.baza_h.FieldByName('zapis').AsInteger=0 then
   begin
    datamodule1.baza_h.FieldByName('pr').AsString:='*';
    datamodule1.baza_h.FieldByName('zapis').AsInteger:=1;
   end
  else
   begin
    datamodule1.baza_h.FieldByName('pr').AsString :='';
    datamodule1.baza_h.FieldByName('zapis').AsInteger:=0;
   end;
   DataModule1.baza_h.Refresh;
  end;
end;

procedure Tabituzu.BitBtn2Click(Sender: TObject);
var
 fam,name,vname,s1,s2,datr,pnum,pwho,pdate,adr,phone,schpr,mesr,str_d,mesj,dolj,telj,s3 : string;
 miln,mildate,milwho,s4,s5,s6,pr :string;
 gr,sost,stat,n,i,pinacc,event,citiz,sch,schgod,hostel,sex,marry : integer;
 soc,lang,kat,ksiva,cod,mil :integer;
 key: char;
begin

 if zach=0 then
 begin
  showmessage('�������� �������������');
 // DBLookupComboBox1.SetFocus;
  exit;
 end;
 if nompr.Text='' then
  begin
   showmessage('������� � �������');
   nompr.SetFocus;
   exit;
  end;
  if datpr.Text='' then
  begin
   showmessage('������� ���� �������');
   datpr.SetFocus;
   exit;
  end;
  filtr := '(otd=4) and (zapis>0) and ((zach='+inttostr(zach)+') or (zach1='+inttostr(zach)+'))';
  DataModule1.baza_h.Filter := filtr;
  DataModule1.baza_h.Filtered :=True;
  Edit2.Text:=inttostr(Datamodule1.baza_h.RecordCount);
  while not Datamodule1.baza_h.Eof do
   begin
   if  datamodule1.baza_h.FieldByName('zapis').Asinteger = 1  // ������������
   then begin
    cod := datamodule1.baza_h.FieldByName('cod1').Asinteger;   //��������� ��� �����������
    // ���������� � acc
    fam :=trim(datamodule1.baza_h.FieldByName('fam').AsString);      //�������
    n:=length(fam);
    for i:=2 to n do
     begin
      key:=fam[i];
      if ((key>='A') and (key<='�')) then key:=chr(ord(key)+32) else
      if ((key>='�') and (key<='�')) then key:=chr(ord(key)+32);
      fam[i]:=key;
     end;
    name :=trim(datamodule1.baza_h.FieldByName('name').AsString);     //���
    n:=length(name);
    for i:=2 to n do
     begin
      key:=name[i];
      if ((key>='A') and (key<='�')) then key:=chr(ord(key)+32) else
      if ((key>='�') and (key<='�')) then key:=chr(ord(key)+32);
      name[i]:=key;
     end;
    vname :=trim(datamodule1.baza_h.FieldByName('vorname').AsString);    //��������
    n:=length(vname);
    for i:=2 to n do
     begin
      key:=vname[i];
      if ((key>='A') and (key<='�')) then key:=chr(ord(key)+32) else
      if ((key>='�') and (key<='�')) then key:=chr(ord(key)+32);
      vname[i]:=key;
     end;

    case spec of                //������
     3 : gr :=502; //���
     5 : gr :=503; //���
     7 : gr :=505; //���
     8 : gr :=506; //��
     9 : gr :=507; //����
     10 : gr :=504; //���
     12 : gr :=508; //��
     13 : gr :=509; //����
    end;

    sost :=1;     //������
    if datamodule1.baza_h.FieldByName('kat').AsInteger = 6 //�� ���������   �������
    then begin
     stat:= 2;   //��������    �������
     event :=3   //������� �� ��������
    end
    else begin
     stat:=1;   // ������     �������
     event :=2;   //������� �� ������
    end;

    // ���������� �������
    DataModule1.Query1.SQL.Clear;
    s1 :='insert  into acc (fam,name,vname,spgrup,spotd,spfak,spspec,kurs,spsost,spstatus,godpr,priz) values ('+''''+fam+''''+','+''''+name+'''';
    s2 :=','+''''+vname+''''+','+inttostr(gr)+','+inttostr(otd)+','+inttostr(fak)+','+inttostr(spec)+',1,'+inttostr(sost)+','+inttostr(stat)+',2007,'+''''+'*'+''''+')';
    DataModule1.Query1.SQL.Add(s1+s2);
    DataModule1.Query1.ExecSQL;        //��������� � acc
    DataModule1.table_w1.Refresh;
    DataModule1.table_w1.Last;
    pinacc :=  datamodule1.table_w1.FieldByName('pin').AsInteger;

    //���������� � move
    DataModule1.Query1.SQL.Clear;
    if datpr.text <> '' then
     str_d:=inttostr(yearof(strtodate(datpr.text)))+'-'+ inttostr(monthof(strtodate(datpr.text)))+'-'+inttostr(dayof(strtodate(datpr.text)));

    s1 :='insert  into moves (acc,spevent,mvnum,mvdate,spgrup,spotd,spfak,spspec,usrwrite,priz) values (';
    s2 :=inttostr(pinacc)+','+inttostr(event)+','+''''+nompr.text+''''+','+''''+str_d+''''+','+inttostr(gr)+','+inttostr(otd)+','+inttostr(fak)+','+inttostr(spec)+',12,'+''''+'*'+''''+')';
    DataModule1.Query1.SQL.Add(s1+s2);
    DataModule1.Query1.ExecSQL;        //��������� � moves
    DataModule1.table_w6.Refresh;

    //���������� � acckadr
    DataModule1.Query1.SQL.Clear;
    case datamodule1.baza_h.FieldByName('graj').AsInteger of //�����������
     1 : citiz:=2; //���������
     2 : citiz:=3; //��������
     3 : citiz:=4; //�������
     4 : citiz:=1  //������
    else
     citiz:= datamodule1.baza_h.FieldByName('graj').AsInteger;
    end;

    datr:=trim(datamodule1.baza_h.FieldByName('dat_ro').AsString); //���� ��������
    if datr <> '' then
     datr:=inttostr(yearof(strtodate(datr)))+'-'+ inttostr(monthof(strtodate(datr)))+'-'+inttostr(dayof(strtodate(datr)));

    mesr:=trim(datamodule1.baza_h.FieldByName('mes_ro').AsString); //����� ��������
    pnum :=trim(datamodule1.baza_h.FieldByName('p_ser').AsString)+' '+trim(datamodule1.baza_h.FieldByName('p_num').AsString); //������� �����,�
    pwho :=trim(copy(trim(datamodule1.baza_h.FieldByName('p_vd').AsString),1,30)); //������� �����
    pdate :=copy(trim(datamodule1.baza_h.FieldByName('p_vd').AsString),31,8); //������� �����
    if pdate <> '' then
     pdate:=inttostr(yearof(strtodate(pdate)))+'-'+ inttostr(monthof(strtodate(pdate)))+'-'+inttostr(dayof(strtodate(pdate)));

    adr :=trim(copy(trim(datamodule1.baza_h.FieldByName('adress').AsString),1,46)); //�����
    phone :=copy(trim(datamodule1.baza_h.FieldByName('adress').AsString),47,12); //�������

    sch :=datamodule1.baza_h.FieldByName('uchz').asinteger; //��� ��.���������
    schpr :=trim(datamodule1.baza_h.FieldByName('sch').AsString); // � ��.���������
    schgod :=datamodule1.baza_h.FieldByName('dat_uh1').Asinteger; //��� ��������� ��.���������

    hostel:= datamodule1.baza_h.FieldByName('obsh').Asinteger; //���������
    if  datamodule1.baza_h.FieldByName('pol').Asinteger =2  then //��� ���
     sex:=0
    else
     sex:=1;
    if  (datamodule1.baza_h.FieldByName('sem_pol').Asinteger =2) or
        (datamodule1.baza_h.FieldByName('sem_pol').Asinteger =4) then //���.��������� 2-����� 4-�������
     marry:=1
    else
     marry:=0;

    soc:=datamodule1.baza_h.FieldByName('soc_pol').Asinteger;  //���.���������
    lang :=datamodule1.baza_h.FieldByName('in_jaz').Asinteger; //��.��
    kat:=datamodule1.baza_h.FieldByName('kat').Asinteger;      //���������

    mesj:=trim(datamodule1.baza_h.FieldByName('mesjob').Asstring); //����� ������
    dolj:=trim(datamodule1.baza_h.FieldByName('doljob').Asstring); //��������� ������
    telj:=trim(datamodule1.baza_h.FieldByName('teljob').Asstring); //������� ������

    DataModule1.Query1.SQL.Clear;
    s1 :='insert  into acckadr (acc,spcitiz,dat_ro,mes_ro,spksiva,pasnum,paswho,pasdate,address,phone,spschool,' ;
    s2 := 'schoolgod,hostel,sex,marry,spsoc,splang,spkat,mesjob,doljob,teljob,priz,schoolpr) values ('+inttostr(pinacc)+',';
    s3 :=inttostr(citiz)+','+''''+datr+''''+','+''''+mesr+''''+',1,'+''''+pnum+''''+','+''''+pwho+''''+','+''''+pdate+''''+',';
    s4 :=''''+adr+''''+','+''''+phone+''''+','+inttostr(sch)+','+inttostr(schgod)+','+''''+inttostr(hostel)+''''+','+'''';
    s5 :=inttostr(sex)+''''+','+''''+inttostr(marry)+''''+','+inttostr(soc)+','+inttostr(lang)+','+inttostr(kat)+','+''''+mesj+''''+','+''''+dolj+''''+',';
    s6 :=''''+telj+''''+','+''''+'1'+''''+','+''''+schpr+''''+')';

    DataModule1.Query1.SQL.Add(s1+s2+s3+s4+s5+s6);
    DataModule1.Query1.ExecSQL;        //��������� � acckadr
    DataModule1.table_w2.Refresh;

    //���������� � accwar
    DataModule1.Query1.SQL.Clear;
    mil := datamodule1.baza_h.FieldByName('otn_sl').Asinteger;

    if mil = 3 then // ������
     pr := '1'
    else
     pr :='0';
    s1 := copy(datamodule1.baza_h.FieldByName('mil_num').Asstring,35,1);
    if s1<>'3' then
     begin
      miln :=copy(trim(datamodule1.baza_h.FieldByName('mil_num').Asstring),25,10);
      mildate :=copy(trim(datamodule1.baza_h.FieldByName('mil_num').Asstring),36,8);
      if mildate <> '' then
       mildate:=inttostr(yearof(strtodate(mildate)))+'-'+ inttostr(monthof(strtodate(mildate)))+'-'+inttostr(dayof(strtodate(mildate)));
      milwho :=copy(trim(datamodule1.baza_h.FieldByName('mil_num').Asstring),1,24);
      s1 :='insert  into accwar (acc,spmil1,milnum,mildate,milwho,priz) values ('+inttostr(pinacc)+','+inttostr(mil)+','+''''+miln+''''+',';
      s2 :=''''+mildate+''''+','+''''+milwho+''''+','+''''+pr+''''+')';
     end
    else
     begin
      miln :='';
      milwho :='';
      s1 :='insert  into accwar (acc,spmil1,milnum,mildate,milwho,priz) values ('+inttostr(pinacc)+','+inttostr(mil)+','+''''+miln+''''+',';
      s2 :='Null,'+''''+milwho+''''+','+''''+pr+''''+')';
     end;
    DataModule1.Query1.SQL.Add(s1+s2);
    DataModule1.Query1.ExecSQL;        //��������� � acckadr
    DataModule1.table_w3.Refresh;

    //������ pin � baza_h

    DataModule1.baza_h.Edit;
    DataModule1.baza_h.FieldByName('zapis').AsInteger :=pinacc;
    DataModule1.baza_h.Post;
   end;
   DataModule1.baza_h.Next;
  end;
 DataModule1.baza_h.Filtered :=False;
 filtr := '(otd=4) and ((zach='+inttostr(zach)+') or (zach1='+inttostr(zach)+'))';
 DataModule1.baza_h.Filter := filtr;
 DataModule1.baza_h.Filtered :=True;



end;

procedure Tabituzu.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure Tabituzu.FormActivate(Sender: TObject);
begin

 DataModule1.Table_w1.IndexName :='PRIMARY';
 DataModule1.Table_w1.Open;
 DataModule1.Table_w2.Open;
 DataModule1.Table_w3.Open;
 DataModule1.Table_w6.Open;
 DataModule1.baza_h.Open;
 if priz_dost<>1 then
 begin DataModule1.baza_h.ReadOnly:=True;  end;
 filtr := '(otd=4) and ((zach<>0) or (zach1<>0))';
 DataModule1.baza_h.Filter := filtr;
 DataModule1.baza_h.Filtered :=True;
end;

procedure Tabituzu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.Table_w1.Close;
 DataModule1.Table_w2.Close;
 DataModule1.Table_w3.Close;
 DataModule1.Table_w6.Close;
 DataModule1.baza_h.Close;
 datamodule1.snspec.Close;
 DataModule1.baza_h.Filtered :=False;
 DataModule1.baza_h.ReadOnly:=False;
 main.Enabled:=True;
end;

end.
