unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, DBCtrls, password1, datamodule, stud_acc1,
  stud_moves1, DB, stud_fam1, stud_good1, stud_del1, stud_del2, prakt_progress1,
  prakt_rep1, spr_spcitiz1, spr_spcitiz2, spr_spksiva1, spr_spksiva2,
  spr_spsoc1,
  spr_spsoc2, spr_spschool1, spr_spschool2, spr_spmil11, spr_spmil12,
  spr_spmil21,
  spr_spmil22, spr_spmil31, spr_spmil32, acc_rep1, acc_rep2, acc_repzapros1,
  acc_repallstud1,
  acc_rep3, acc_rep4, spr_spreg31, spr_spreg32, spr_spreg11, spr_spreg12,
  spr_spreg21, spr_spreg22,
  spr_spreg41, spr_spreg42, spr_spreg01, spr_spreg02, abitu1, abitu2, abitu3,
  abitu4, acc_rep5,
  acc_rep6, acc_stat1, spr_spotd1, spr_spotd2, spr_spsost1, spr_spsost2,
  spr_spstat1, spr_spstat2,
  spr_spevent1, spr_spevent2, acc_stat2, acc_rep7, spr_spgrup1, spr_spgrup2,
  stud_acc2, stud_acc3,
  spr_spfak1, spr_spfak2, spr_spspec1, spr_spspec2, stud_fak1, stud_sess1,
  stud_sess2, stud_sess3,
  stud_sess4, stud_sess5, acc_rep11, stud_usp2, stud_usp3, stud_usp4, acc_stat4,
  acc_perevod,
  reiting1, reiting2, acc_rep12, acc_stat5, stud_fak3, reiting3, acc_rep14,
  spr_sp4fak, spr_sp4fak1,
  acc_vipiska, acc_rep15;

type
  Tmain = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N7: TMenuItem;
    N11: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N6_1: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N31: TMenuItem;
    N3_1: TMenuItem;
    N33: TMenuItem;
    N3_2: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N33_1: TMenuItem;
    N33_2: TMenuItem;
    N6_2: TMenuItem;
    N612: TMenuItem;
    N69: TMenuItem;
    N613: TMenuItem;
    N68: TMenuItem;
    N611: TMenuItem;
    N1_1: TMenuItem;
    N12: TMenuItem;
    N12_2: TMenuItem;
    N12_1: TMenuItem;
    N32: TMenuItem;
    N33_3: TMenuItem;
    N4: TMenuItem;
    N42: TMenuItem;
    N5: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N6_3: TMenuItem;
    N614: TMenuItem;
    N615: TMenuItem;
    N616: TMenuItem;
    N6_4: TMenuItem;
    N618: TMenuItem;
    N619: TMenuItem;
    N620: TMenuItem;
    N4_1: TMenuItem;
    N41: TMenuItem;
    N34: TMenuItem;
    N617: TMenuItem;
    N2: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    Image1: TImage;
    N8: TMenuItem;
    N24: TMenuItem;
    N10: TMenuItem;
    N9: TMenuItem;
    N13: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N31Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure N67Click(Sender: TObject);
    procedure N33_1Click(Sender: TObject);
    procedure N33_2Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N612Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N613Click(Sender: TObject);
    procedure N611Click(Sender: TObject);
    procedure N12_2Click(Sender: TObject);
    procedure N12_1Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33_3Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N614Click(Sender: TObject);
    procedure N618Click(Sender: TObject);
    procedure N619Click(Sender: TObject);
    procedure N620Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N617Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N615Click(Sender: TObject);
    procedure N616Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N39Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main: Tmain;
  priz_dost, sys_priznak: byte; // убрать
  pp: byte;
  beg_year: integer; // начало учебного года
  // cod_podr,
  spkaf: string; // код подразделения
  krfak, fak_name, rukfak: string; // название факультета
  stud_pin, fak, spfak: integer; // pin выбранного студента , код факультета
  stud_fio: string; // фио выбранного студента
  stud_gr: string; // группа выбранного студента
  stud_ls: string; // № личного дела выбранного студента
  stud_zb, displina: string; // № зачетки выбранного студента
  mark, mark_t, mark_acc: TBookMark;
  act, pin, sp, ngr, polis: integer;
  codf, codfo, codspec: integer;
  namemonth: array [1 .. 12] of string[10] = (
    'января',
    'февраля',
    'марта',
    'апреля',
    'мая',
    'июня',
    'июля',
    'августа',
    'сентября',
    'октября',
    'ноября',
    'декабря'
  );
  accpin: array [1 .. 50] of integer; // pin студента группы для успеваемости
  datavv: array [1 .. 50] of integer; // дата ввода
  // password : Tpassword;

implementation

uses password, jurpos;
{$R *.dfm}

procedure Tmain.FormActivate(Sender: TObject);
// var pp:string;
begin

  { if sys_priznak=1 then
    begin
    sys_priznak:=0;
    { password:=Tpassword.Create(Application);
    password.Show;
    end;

    polis:=0;
    n1.Visible:=false;  n2.Visible:=false;
    n3.Visible:=false;  n4.Visible:=false;
    n5.Visible:=false;  n6.Visible:=false;
    n10.Visible:=false;
    n17.Visible:=false; n41.Visible:=false;
    n26.Visible:=false;
    if sys_priznak=1 then sys_priznak:=0;
    if cod_podr='11' then         //отдел кадров
    begin
    n5.Visible:=true;
    n1.Visible:=true; //студенты
    n3.Visible:=true; //отчеты
    n4.Visible:=true; //статистика
    n10.Visible:=true;
    n41.Visible:=true;
    n26.Visible:=true;
    n6.Visible:=true;
    end;

    if (spfak<>0) and (spkaf='') then              //деканаты
    begin
    n2.Visible:=true; //деканат
    n3.Visible:=true; //отчеты
    n4.Visible:=true; //статистика
    n17.Visible:=true;
    n41.Visible:=false;
    n31.Visible:=false; n32.Visible:=false; //отчеты по ОК
    n34.Visible:=false;
    n35.Visible:=false; n36.Visible:=false;
    end;

    if spkaf<>'' then              //кафедра
    begin
    if spkaf='61' then begin
    spfak:=98; krfak:='ТФ'; fak_name:='технический';
    rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString);
    end;
    n2.Visible:=true; //деканат
    n9.Visible:=false;
    n21.Visible:=false;
    n22.Visible:=false;
    n23.Visible:=true;
    n24.Visible:=false;
    end;

    if cod_podr='11_1' then         //ВУС
    begin
    n1.Visible:=true; //студенты
    n3.Visible:=true; //отчеты
    n12.Visible:=false;
    n31.Visible:=false; n32.Visible:=false; //отчеты по ОК
    n33_3.Visible:=false; n33_2.Visible:=false;
    n34.Visible:=false;
    n35.Visible:=false;
    end;

    if cod_podr='41' then         //Центр внеучебной работы
    begin
    n1.Visible:=true; //студенты
    n2.Visible:=false; //деканат
    n10.Visible:=false;
    n12.Visible:=false;
    n3.Visible:=true; //отчеты
    n31.Visible:=false; //отчеты по по трудоустройству
    n32.Visible:=false; //отчеты по ОК
    n33_3.Visible:=false; n34.Visible:=false;
    n35.Visible:=false;    n36.Visible:=false;
    end;

    if cod_podr='02' then         //Зам директора по учебной работе
    begin
    n1.Visible:=true; //студенты
    n17.Visible:=true;
    n19.Visible:=false;
    n2.Visible:=false; //деканат
    n10.Visible:=false;
    n27.Visible:=false;
    n12.Visible:=false;
    n3.Visible:=false; //отчеты
    n31.Visible:=false; //отчеты по по трудоустройству
    n32.Visible:=false; //отчеты по ОК
    n33_3.Visible:=false; n34.Visible:=false;
    n35.Visible:=false;    n36.Visible:=false;
    end;
    if cod_podr='23' then         //отдел практики и трудоустройства
    begin
    n1.Visible:=true; //студенты
    n3.Visible:=true; //отчеты
    n32.Visible:=false; //отчеты по ОК
    n33_3.Visible:=false; n34.Visible:=false;
    n35.Visible:=false;
    end; }

  Enabled := True;

end;

procedure Tmain.FormCreate(Sender: TObject);
var
  pas1, pas2, pas3, pas4: string;
begin
  pas1 := '';
  pas2 := '';
  pas4 := '';
  pas1 := pas1 + 'p';
  pas1 := pas1 + 'a';
  pas1 := pas1 + 's';
  pas1 := pas1 + 's';
  pas1 := pas1 + 'w';
  pas1 := pas1 + 'o';
  pas1 := pas1 + 'r';
  pas1 := pas1 + 'd';
  pas1 := pas1 + '=';
  pas1 := pas1 + 's';
  pas1 := pas1 + 'e';
  pas1 := pas1 + 'l';
  pas1 := pas1 + 'e';
  pas1 := pas1 + 'a';
  pas1 := pas1 + 'd';
  pas1 := pas1 + 'm';
  pas1 := pas1 + '1';
  pas1 := pas1 + '2';
  pas1 := pas1 + '3';

  pas4 := pas4 + 'p';
  pas4 := pas4 + 'a';
  pas4 := pas4 + 's';
  pas4 := pas4 + 's';
  pas4 := pas4 + 'w';
  pas4 := pas4 + 'o';
  pas4 := pas4 + 'r';
  pas4 := pas4 + 'd';
  pas4 := pas4 + '=';
  pas4 := pas4 + '1';
  pas4 := pas4 + '2';
  pas4 := pas4 + '3';
  pas4 := pas4 + '4';

  pas2 := pas2 + 'p';
  pas2 := pas2 + 'a';
  pas2 := pas2 + 's';
  pas2 := pas2 + 's';
  pas2 := pas2 + 'w';
  pas2 := pas2 + 'o';
  pas2 := pas2 + 'r';
  pas2 := pas2 + 'd';
  pas2 := pas2 + '=';
  pas2 := pas2 + 'p';
  pas2 := pas2 + 'r';
  pas2 := pas2 + 'i';
  pas2 := pas2 + 'n';
  pas2 := pas2 + 'a';
  pas2 := pas2 + 't';
  pas2 := pas2 + 'p';
  pas2 := pas2 + 'r';
  pas2 := pas2 + 'i';
  pas2 := pas2 + '3';
  // Enabled:=False;
  Application.CreateForm(TDataModule1, DataModule1);
  // datamodule1.Database1.Params.Add(pas4);
  DataModule1.Database1.Params.Add(pas1);
  DataModule1.Database1.Connected := True;
  if not DataModule1.Database1.Connected then
  begin
    showmessage('Нет соединения с  work!');
    exit;
  end;
  // datamodule1.Database2.Params.Add(pas4);
  DataModule1.Database2.Params.Add(pas1);
  DataModule1.Database2.Connected := True;
  if not DataModule1.Database2.Connected then
  begin
    showmessage('Нет соединения с  work_ok!');
    exit;
  end;
  DataModule1.Database3.Params.Add(pas2);
  DataModule1.Database3.Connected := True;
  if not DataModule1.Database3.Connected then
  begin
    showmessage('Нет соединения с  abitu!');
    exit;
  end;

  { sys_priznak:=1; }
  priz_dost := 1;
  DataModule1.Table1.IndexFieldNames := 'cod';
  DataModule1.Table1.Open;
  DataModule1.Table1.FindKey([PodrCod]);
  if PodrCod = '11' then // отдел кадров
  begin
    pas3 := '';
    pas3 := pas3 + 'p';
    pas3 := pas3 + 'a';
    pas3 := pas3 + 's';
    pas3 := pas3 + 's';
    pas3 := pas3 + 'w';
    pas3 := pas3 + 'o';
    pas3 := pas3 + 'r';
    pas3 := pas3 + 'd';
    pas3 := pas3 + '=';
    pas3 := pas3 + 'p';
    pas3 := pas3 + 'l';
    pas3 := pas3 + 'a';
    pas3 := pas3 + 'n';
    pas3 := pas3 + 'a';
    pas3 := pas3 + 't';
    pas3 := pas3 + 'p';
    pas3 := pas3 + 'l';
    pas3 := pas3 + 'a';
    pas3 := pas3 + '2';
    // datamodule1.Database4.Params.Add(pas4);
    DataModule1.Database4.Params.Add(pas3);
    DataModule1.Database4.Connected := True;
    if not DataModule1.Database4.Connected then
    begin
      showmessage('Нет соединения с  platn!');
      exit;
    end;
  end;
  { if PodrCod='60' then begin spfak:=98; fak_name:='Технический'; rukfak:=trim(DataModule1.Table1.FieldByName('fiorin').AsString)end;//ТФ
    if PodrCod='09' then begin spfak:=57; fak_name:='Гуманитарно-экономический'; rukfak:=trim(DataModule1.Table1.FieldByName('fiorin').AsString)end;//ГЭФ
    if PodrCod='010' then begin spfak:=65; fak_name:='заочной формы обучения'; rukfak:=trim(DataModule1.Table1.FieldByName('fiorin').AsString)end;//ФЗФО
  }
  if Kto = '60' then
  begin
    spfak := 98;
    fak_name := 'Технический';
    rukfak := 'А.В.Шашок';
  end; // ТФ
  // rukfak:=trim(DataModule1.Table1.FieldByName('fiorin').AsString)end;//ТФ
  if Kto = '09' then
  begin
    spfak := 57;
    fak_name := 'Гуманитарно-экономический';
    rukfak := trim(DataModule1.Table1.FieldByName('fiorin').AsString)
  end; // ГЭФ
  if Kto = '010' then
  begin
    spfak := 65;
    fak_name := 'заочной формы обучения';
    rukfak := trim(DataModule1.Table1.FieldByName('fiorin').AsString)
  end; // ФЗФО

  // if Kto='09' then begin stud_fak.Button14.Visible:=true end else stud_fak.Button14.Visible:=false;//ГЭФ
end;

procedure Tmain.N7Click(Sender: TObject);
begin
  close;
end;

procedure Tmain.N11Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_acc, stud_acc);
  stud_acc.Show;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Database1.Connected := False;
  DataModule1.Database2.Connected := False;
  DataModule1.Database3.Connected := False;
  DataModule1.Database4.Connected := False;
  FPassword.Visible := True; // Close;
end;

procedure Tmain.N31Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tprakt_rep_diplom, prakt_rep_diplom);
  prakt_rep_diplom.Show;
end;

procedure Tmain.N61Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spcitiz, spr_spcitiz);
  spr_spcitiz.Show;
end;

procedure Tmain.N62Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spksiva, spr_spksiva);
  spr_spksiva.Show;
end;

procedure Tmain.N63Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spsoc, spr_spsoc);
  spr_spsoc.Show;
end;

procedure Tmain.N64Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spschool, spr_spschool);
  spr_spschool.Show;
end;

procedure Tmain.N65Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spmil1, spr_spmil1);
  spr_spmil1.Show;
end;

procedure Tmain.N66Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spmil2, spr_spmil2);
  spr_spmil2.Show;
end;

procedure Tmain.N67Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spmil3, spr_spmil3);
  spr_spmil3.Show;
end;

procedure Tmain.N33_1Click(Sender: TObject);
begin
  if PodrCod = '41' // для ЦВР
  then
  begin
    sp := 1; // список простой
    Enabled := False;
    Application.CreateForm(Tspis_gr, spis_gr);
    spis_gr.Show;
  end
  else
  begin
    sp := 1; // список простой
    Enabled := False;
    Application.CreateForm(Tacc_spstud, acc_spstud);
    acc_spstud.Show;
  end;
end;

procedure Tmain.N33_2Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_spstudl, acc_spstudl);
  acc_spstudl.Show;
end;

procedure Tmain.N35Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_repzapros, acc_repzapros);
  acc_repzapros.Show;
end;

procedure Tmain.N36Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_repallstud, acc_repallstud);
  acc_repallstud.Show;
end;

procedure Tmain.N37Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_spstudlgota, acc_spstudlgota);
  acc_spstudlgota.Show;
end;

procedure Tmain.N612Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspgorod, spgorod);
  spgorod.Show;
end;

procedure Tmain.N69Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspregion, spregion);
  spregion.Show;
end;

procedure Tmain.N68Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspstrana, spstrana);
  spstrana.Show;
end;

procedure Tmain.N613Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspselo, spselo);
  spselo.Show;
end;

procedure Tmain.N611Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspraion, spraion);
  spraion.Show;
end;

procedure Tmain.N12_2Click(Sender: TObject);
begin

  Enabled := False;
  Application.CreateForm(Tabitudn, abitudn);
  abitudn.Show;
end;

procedure Tmain.N12_1Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_sp4fak, stud_sp4fak);
  stud_sp4fak.Show;
end;

procedure Tmain.N32Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_spstud109, acc_spstud109);
  acc_spstud109.Show;
end;

procedure Tmain.N33_3Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_spstudsch, acc_spstudsch);
  acc_spstudsch.Show;
end;

procedure Tmain.N42Click(Sender: TObject);
begin
  // showmessage('Данный пункт в стадии разработки');
  Enabled := False;
  Application.CreateForm(Tstat_polv, stat_polv);
  stat_polv.Show;
end;

procedure Tmain.N614Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spotd, spr_spotd);
  spr_spotd.Show;
end;

procedure Tmain.N618Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spsost, spr_spsost);
  spr_spsost.Show;
end;

procedure Tmain.N619Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spstat, spr_spstat);
  spr_spstat.Show;
end;

procedure Tmain.N620Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spevent, spr_spevent);
  spr_spevent.Show;
end;

procedure Tmain.N41Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstat_godpr, stat_godpr);
  stat_godpr.Show;
end;

procedure Tmain.N34Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_spstudotch, acc_spstudotch);
  acc_spstudotch.Show;
end;

procedure Tmain.N617Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spgrup, spr_spgrup);
  spr_spgrup.Show;
end;

procedure Tmain.N21Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_fak, stud_fak);
  stud_fak.Show;
end;

procedure Tmain.N615Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spfak, spr_spfak);
  spr_spfak.Show;
end;

procedure Tmain.N616Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tspr_spspec, spr_spspec);
  spr_spspec.Show;
end;

procedure Tmain.N22Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_sessia, stud_sessia);
  stud_sessia.Show;
end;

procedure Tmain.N24Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_svvedom, stud_svvedom);
  stud_svvedom.Show;
end;

procedure Tmain.N23Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_usp, stud_usp);
  stud_usp.Show;
end;

procedure Tmain.N10Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_kontengent, stud_kontengent);
  stud_kontengent.Show;
end;

procedure Tmain.N9Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_spsessia, stud_spsessia);
  stud_spsessia.Show;
end;

procedure Tmain.N51Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tstud_perevodkurs, stud_perevodkurs);
  stud_perevodkurs.Show;
end;

procedure Tmain.N18Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Treiting_gr, reiting_gr);
  reiting_gr.Show;
end;

procedure Tmain.N19Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Treiting_stud, reiting_stud);
  reiting_stud.Show;
end;

procedure Tmain.N25Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_indnom, acc_indnom);
  acc_indnom.Show;
end;

procedure Tmain.N26Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_movekont, acc_movekont);
  acc_movekont.Show;
end;

procedure Tmain.N27Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Treiting_acc, reiting_acc);
  reiting_acc.Show;
end;

procedure Tmain.N14Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(Tacc_reppensia, acc_reppensia);
  acc_reppensia.Show;
end;

procedure Tmain.N15Click(Sender: TObject);
begin
  Enabled := False;
  polis := 1;
  Application.CreateForm(Tacc_spstudl, acc_spstudl);
  acc_spstudl.Show;
end;

procedure Tmain.N28Click(Sender: TObject);
begin
  Enabled := False;
  polis := 2;
  Application.CreateForm(Tacc_spstudl, acc_spstudl);
  acc_spstudl.Show;
end;

procedure Tmain.N39Click(Sender: TObject);
begin
  Enabled := False;
  Application.CreateForm(TFjurpos, fjurpos);
  fjurpos.Show;
end;

end.
