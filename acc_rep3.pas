unit acc_rep3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls,datamodule, OleServer, WordXP,ComObj,
  Spin, ExtCtrls,DateUtils;

type
  Tacc_war1 = class(TForm)
    Label1: TLabel;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_war1: Tacc_war1;
  ch : byte;
  spec,gr,st,vk,tip :  integer; //специальность, группа, pin студента
  sp_name,gr_name,vk_name :string; //название специальности, группы,военкомат
implementation
  uses main1,prakt_progress1;
{$R *.dfm}

procedure Tacc_war1.FormActivate(Sender: TObject);
begin
 DataModule1.Table_w1.Open;
 DataModule1.Table_w1.IndexName :='idxaccfam';
 DataModule1.Table_w1.Filter :='spsost=1 and spotd=6';
 DataModule1.Table_w1.Filtered:=True;
 DataModule1.Table_w2.Open;
 DataModule1.Table_w6.IndexName :='idxmovacc';
 DataModule1.Table_w6.Open;
 DataModule1.Table_w37.Open;
 DataModule1.Table_w37.IndexName :='grup';
 DataModule1.Table_w37.Filter :='spotd=6 and priz=''1''';
 DataModule1.Table_w37.Filtered:=True;
 DataModule1.Table_w35.Open;
 DataModule1.Table_w35.Filter :='priz=''1''';
 DataModule1.Table_w35.Filtered:=True;
 DataModule1.Table46_1.Open;
 DataModule1.Table46_1.Filter :='tip=4 or tip=3';
 DataModule1.Table46_1.Filtered:=True;
 ch:=1;
// RadioButton1.Checked :=True;  DBLookupComboBox1.Enabled :=True;
 RadioButton2.Checked :=True; DBLookupComboBox2.Enabled :=True;
 RadioButton3.Checked :=False; DBLookupComboBox3.Enabled :=False;
end;

procedure Tacc_war1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DataModule1.Table_w1.Close;
 DataModule1.Table_w2.Close;
 DataModule1.Table_w6.Close;
 DataModule1.Table_w35.Close;
 DataModule1.Table_w37.Close;
 DataModule1.Table46_1.Close;
 DataModule1.Table_w1.Filtered:=False;
 DataModule1.Table_w6.Filtered:=False;
 DataModule1.Table_w35.Filtered:=False;
 DataModule1.Table_w37.Filtered:=False;
 DataModule1.Table46_1.Filtered:=False;
 main.Enabled:=True;
end;

procedure Tacc_war1.RadioButton1Click(Sender: TObject);
begin
 ch:=1;
 //RadioButton1.Checked :=True;  DBLookupComboBox1.Enabled :=True;
 RadioButton2.Checked :=False; DBLookupComboBox2.Enabled :=False;
 RadioButton3.Checked :=False; DBLookupComboBox3.Enabled :=False;
end;

procedure Tacc_war1.RadioButton2Click(Sender: TObject);
begin
 ch:=2;
 RadioButton2.Checked :=True;  DBLookupComboBox2.Enabled :=True;
// RadioButton1.Checked :=False; DBLookupComboBox1.Enabled :=False;
 //SpinEdit1.Enabled :=False;
 RadioButton3.Checked :=False; DBLookupComboBox3.Enabled :=False;
end;

procedure Tacc_war1.RadioButton3Click(Sender: TObject);
begin
 ch:=3;
 RadioButton3.Checked :=True;  DBLookupComboBox3.Enabled :=True;
 RadioButton2.Checked :=False;
 //RadioButton1.Checked :=False; DBLookupComboBox2.Enabled :=False;
 //SpinEdit1.Enabled :=False;
end;

procedure Tacc_war1.DBLookupComboBox1Click(Sender: TObject);
begin
 spec :=DataModule1.Table_w35.fieldbyname('pin').AsInteger;
 sp_name:= DataModule1.Table_w35.fieldbyname('name').Asstring;
end;

procedure Tacc_war1.DBLookupComboBox2Click(Sender: TObject);
begin
 gr := DataModule1.Table_w37.fieldbyname('pin').AsInteger;
end;

procedure Tacc_war1.DBLookupComboBox3Click(Sender: TObject);
begin
 st := DataModule1.Table_w1.fieldbyname('pin').AsInteger;
end;

procedure Tacc_war1.BitBtn1Click(Sender: TObject);
 var
  WordApp,NEWDOC: OLEVariant;
  wdSt,wdExt,t1: OLEVariant;
  i,n,god :integer;
  Name_file:PWideChar;
//  f:Tprakt_progress;
  fil:olevariant;
  filt,str,d1,nom,s1,s2 :string;
begin
  filt:='';
 { if vk_name='' then
   begin
     showmessage('Укажите для какого военкомата!');
     DbLookupComboBox4.SetFocus; exit;
  end;}



   if ch= 2 then  //справка по студентам группы
    if gr=0  then // не выбрали группу
     begin
      showmessage('Выберите группу!');
      DBLookupComboBox2.SetFocus; exit;
     end
    else
    begin
     DataModule1.Table_w1.Filter :='spsost=1 and spgrup='+inttostr(gr);
     name_file:=PChar('c:\doc\справка в военкомат'+trim(gr_name)+'.doc');
     DataModule1.Query1.sql.Clear;
     s1:='select count(*) as kol from acc,acckadr where acc.pin=acckadr.acc and acckadr.sex='+''''+'1'+''''+ 'and acc.spsost=1 and acc.spotd=6 and acc.spgrup='+inttostr(gr);
     DataModule1.Query1.sql.Add(s1);
     DataModule1.Query1.ExecSQL;
     DataModule1.Query1.Active:=True;
     n:= DataModule1.Query1.fieldbyname('kol').AsInteger;
    end;

   if ch= 3 then  //справка по студенту
    if st=0  then // не выбрали студента
     begin
      showmessage('Выберите студента!');
      DBLookupComboBox3.SetFocus; exit;
     end
    else
    begin
 //    DataModule1.Table_w1.Filter :='pin='+inttostr(st);
    name_file:=PChar('c:\doc\справка в военкомат.doc');
    n:=1;
    DataModule1.Table_w2.IndexName:='idxkadacc';
    if not DataModule1.Table_w2.FindKey([DataModule1.Table_w1.FieldByName('pin').Asinteger]) then
     begin
      showmessage('У выбранного студента не указана дата рождения!');
      exit;
     end;
    god := yearof(DataModule1.Table_w2.FieldByName('dat_ro').AsDateTime);  //год рождения

    DataModule1.Table_w6.Filter:='acc='+inttostr(DataModule1.Table_w1.FieldByName('pin').Asinteger);
    DataModule1.Table_w6.First;
    nom :=DataModule1.Table_w6.FieldByName('mvnum').Asstring;       // № приказа
    d1 := datetostr(DataModule1.Table_w6.FieldByName('mvdate').AsDateTime);  //дата приказа
    if not DataModule1.Table_w2.FindKey([DataModule1.Table_w1.FieldByName('pin').Asinteger]) then
     begin
      showmessage('Ошибка!');
      exit;
     end;
    sp_name:= DataModule1.Table_w35.fieldbyname('name').Asstring;
    end;

//  DataModule1.Table_w1.Filtered :=True;
  prakt_progress:=tprakt_progress.Create(application);
  bitbtn1.Enabled:=false;
 // BIG :=wdLineWidth225pt;
 // SMALL :=wdLineWidth075pt;
  Repaint;
  fil:=string(name_file);
  prakt_progress.show;
  n:= DataModule1.Table_w1.RecordCount;
  prakt_progress.Label1.Caption:='Обработка '+inttostr(n)+' записей.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max:=70+n*10;

  prakt_progress.ProgressBar1.StepIt;//1
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\doc\report5.doc'),Name_file,false);

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
  //справки на  группу
  prakt_progress.ProgressBar1.StepIt;//4
  if (ch=1) or (ch=2) then                 //копируем пустые бланки и встаем на начало текста
  begin
  wdSt:=wdStory;
  wdExt:=wdExtend;
   WordApp.Selection.Start:=0;
   WordApp.Selection.EndKey(wdSt,wdExt);  //конец текста
   WordApp.Selection.copy;
   for i:=1 to n-1 do
   begin
    WordApp.Selection.paste;
   end;
   WordApp.Selection.Start:=0;
   WordApp.Selection.End:=0;
   WordApp.Selection.Find.Forward:=true;
   DataModule1.Table_w2.IndexName:='idxkadacc';
   While not DataModule1.Table_w1.Eof do
   begin
    WordApp.Selection.Start:=0;
    WordApp.Selection.End:=0;
    if not DataModule1.Table_w2.FindKey([DataModule1.Table_w1.FieldByName('pin').Asinteger]) then
     begin
      showmessage('У'+DataModule1.Table_w1.FieldByName('fio').AsString +'студента не указаны данные!');
      exit;
     end
    else
     if DataModule1.Table_w2.FieldByName('sex').AsString='1' then begin //мужик
       WordApp.Selection.Find.Text:='###fio';
       if WordApp.Selection.Find.Execute then begin
         WordApp.Selection.Delete;
         WordApp.Selection.InsertAfter (DataModule1.Table_w1.FieldByName('fio').AsString);
       end;

       if not DataModule1.Table_w2.FindKey([DataModule1.Table_w1.FieldByName('pin').Asinteger]) then
        begin
         showmessage('У'+DataModule1.Table_w1.FieldByName('fio').AsString +'студента не указана дата рождения!');
         god := yearof(date);
        end;
        god := yearof(DataModule1.Table_w2.FieldByName('dat_ro').AsDateTime);  //год рождения
        WordApp.Selection.Find.Text:='###gr';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (inttostr(god));
        end;

        WordApp.Selection.Find.Text:='###gp';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (inttostr(DataModule1.Table_w1.FieldByName('godpr').Asinteger));
        end;

        WordApp.Selection.Find.Text:='###obr';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter ('среднее (полное) общее');
        end;

        DataModule1.Table_w6.Filter:='acc='+inttostr(DataModule1.Table_w1.FieldByName('pin').Asinteger);
        DataModule1.Table_w6.filtered:=True;
        DataModule1.Table_w6.First;
        nom :=DataModule1.Table_w6.FieldByName('mvnum').Asstring;       // № приказа
        d1 := datetostr(DataModule1.Table_w6.FieldByName('mvdate').AsDateTime);  //дата приказа
        if not DataModule1.Table_w2.FindKey([DataModule1.Table_w1.FieldByName('pin').Asinteger]) then
          begin
           showmessage('Ошибка!');
           exit;
          end;
        WordApp.Selection.Find.Text:='###npr';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (nom);
        end;
        WordApp.Selection.Find.Text:='###dpr';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (d1);
        end;

        WordApp.Selection.Find.Text:='###k';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (DataModule1.Table_w1.FieldByName('kurs').Asstring);
        end;

        WordApp.Selection.Find.Text:='###sp';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (DataModule1.Table_w1.FieldByName('spec').Asstring);
        end;

        WordApp.Selection.Find.Text:='###ak';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter ('№ 0153 от 03.07.2006г.');
        end;

        WordApp.Selection.Find.Text:='###okn';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter ('30 июня 20'+inttostr(DataModule1.Table_w1.FieldByName('godpr').Asinteger+5));
        end;

        WordApp.Selection.Find.Text:='###vk';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter ('г.Рубцовска');
        end;
     end;
    DataModule1.Table_w1.Next;
   end;
  end;

   WordApp.Selection.Start:=0;
   WordApp.Selection.End:=0;
   DataModule1.Table_w2.IndexName:='idxkadacc';
 if ch=3 then begin//по студенту

  if not DataModule1.Table_w2.FindKey([DataModule1.Table_w1.FieldByName('pin').Asinteger]) then
     begin
      showmessage('У'+DataModule1.Table_w1.FieldByName('fio').AsString +'студента не указаны данные!');
      exit;
     end
    else
     if DataModule1.Table_w2.FieldByName('sex').AsString='1' then begin //мужик
       WordApp.Selection.Find.Text:='###fio';
       if WordApp.Selection.Find.Execute then begin
         WordApp.Selection.Delete;
         WordApp.Selection.InsertAfter (DataModule1.Table_w1.FieldByName('fio').AsString);
       end;

       if not DataModule1.Table_w2.FindKey([DataModule1.Table_w1.FieldByName('pin').Asinteger]) then
        begin
         showmessage('У'+DataModule1.Table_w1.FieldByName('fio').AsString +'студента не указана дата рождения!');
         god := yearof(date);
        end;
        god := yearof(DataModule1.Table_w2.FieldByName('dat_ro').AsDateTime);  //год рождения
        WordApp.Selection.Find.Text:='###gr';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (inttostr(god));
        end;

        WordApp.Selection.Find.Text:='###gp';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (inttostr(DataModule1.Table_w1.FieldByName('godpr').Asinteger));
        end;

        WordApp.Selection.Find.Text:='###obr';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter ('среднее (полное) общее');
        end;

        DataModule1.Table_w6.Filter:='acc='+inttostr(DataModule1.Table_w1.FieldByName('pin').Asinteger);
        DataModule1.Table_w6.filtered:=True;
        DataModule1.Table_w6.First;
        nom :=DataModule1.Table_w6.FieldByName('mvnum').Asstring;       // № приказа
        d1 := datetostr(DataModule1.Table_w6.FieldByName('mvdate').AsDateTime);  //дата приказа
        if not DataModule1.Table_w2.FindKey([DataModule1.Table_w1.FieldByName('pin').Asinteger]) then
          begin
           showmessage('Ошибка!');
           exit;
          end;
        WordApp.Selection.Find.Text:='###npr';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (nom);
        end;
        WordApp.Selection.Find.Text:='###dpr';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (d1);
        end;

        WordApp.Selection.Find.Text:='###k';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (DataModule1.Table_w1.FieldByName('kurs').Asstring);
        end;

        WordApp.Selection.Find.Text:='###sp';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter (DataModule1.Table_w1.FieldByName('spec').Asstring);
        end;

        WordApp.Selection.Find.Text:='###ak';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter ('№ 0153 от 03.07.2006г.');
        end;

        WordApp.Selection.Find.Text:='###okn';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter ('30 июня '+inttostr(DataModule1.Table_w1.FieldByName('godpr').Asinteger+5));
        end;

        WordApp.Selection.Find.Text:='###vk';
        WordApp.Selection.Start:=0;
        WordApp.Selection.End:=0;
        if WordApp.Selection.Find.Execute then begin
          WordApp.Selection.Delete;
          WordApp.Selection.InsertAfter ('г.Рубцовска');
        end;
     end;
 end;

  prakt_progress.ProgressBar1.StepIt;//7
  prakt_progress.free;

  WordApp.visible:=true;
  if WordApp.visible=true then NEWDOC.SAVEas(fil);
  if WordApp.visible=false then WordApp.Quit;
  WordApp:=unassigned;
  bitbtn1.Enabled:=True;

end;

procedure Tacc_war1.BitBtn2Click(Sender: TObject);
begin
 close;
end;

procedure Tacc_war1.DBLookupComboBox4Click(Sender: TObject);
begin
 vk := DataModule1.Table46_1.fieldbyname('pin').AsInteger;
 vk_name := DataModule1.Table46_1.fieldbyname('name').AsString;
 tip:= DataModule1.Table46_1.fieldbyname('tip').AsInteger;
end;

end.
