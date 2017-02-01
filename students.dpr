program students;

uses
  Forms,
  Windows,
  main1 in 'main1.pas' {main},
  datamodule in 'datamodule.pas' {DataModule1: TDataModule},
  stud_acc1 in 'stud_acc1.pas' {stud_acc},
  stud_moves1 in 'stud_moves1.pas' {acc_moves},
  stud_fam1 in 'stud_fam1.pas' {acc_fam},
  stud_good1 in 'stud_good1.pas' {acc_good},
  prakt_progress1 in 'prakt_progress1.pas' {prakt_progress},
  prakt_rep1 in 'prakt_rep1.pas' {prakt_rep_diplom},
  spr_spsoc1 in 'spr_spsoc1.pas' {spr_spsoc},
  spr_spsoc2 in 'spr_spsoc2.pas' {spsoc_up},
  spr_spschool2 in 'spr_spschool2.pas' {spschool_up},
  spr_spschool1 in 'spr_spschool1.pas' {spr_spschool},
  spr_spcitiz1 in 'spr_spcitiz1.pas' {spr_spcitiz},
  spr_spcitiz2 in 'spr_spcitiz2.pas' {spcitiz_up},
  spr_spksiva1 in 'spr_spksiva1.pas' {spr_spksiva},
  spr_spksiva2 in 'spr_spksiva2.pas' {spksiva_up},
  acc_rep1 in 'acc_rep1.pas' {acc_spstud},
  acc_rep2 in 'acc_rep2.pas' {acc_spstudl},
  acc_repzapros1 in 'acc_repzapros1.pas' {acc_repzapros},
  acc_repallstud1 in 'acc_repallstud1.pas' {acc_repallstud},
  spr_spreg02 in 'spr_spreg02.pas' {spstrana_up},
  abitu1 in 'abitu1.pas' {abitudn},
  acc_rep5 in 'acc_rep5.pas' {acc_spstud109},
  stud_moves3 in 'stud_moves3.pas' {del_stud},
  acc_rep6 in 'acc_rep6.pas' {acc_spstudsch},
  acc_stat1 in 'acc_stat1.pas' {stat_polv},
  spr_spotd1 in 'spr_spotd1.pas' {spr_spotd},
  spr_spotd2 in 'spr_spotd2.pas' {spotd_up},
  spr_spsost1 in 'spr_spsost1.pas' {spr_spsost},
  acc_rep7 in 'acc_rep7.pas' {acc_spstudotch},
  spr_spsost2 in 'spr_spsost2.pas' {spsost_up},
  spr_spstat1 in 'spr_spstat1.pas' {spr_spstat},
  spr_spstat2 in 'spr_spstat2.pas' {spstat_up},
  spr_spevent1 in 'spr_spevent1.pas' {spr_spevent},
  spr_spevent2 in 'spr_spevent2.pas' {spevent_up},
  acc_stat2 in 'acc_stat2.pas' {stat_godpr},
  stud_moves4 in 'stud_moves4.pas' {stud_moves},
  acc_stat3 in 'acc_stat3.pas' {stud_godpr1},
  spr_spgrup1 in 'spr_spgrup1.pas' {spr_spgrup},
  spr_spgrup2 in 'spr_spgrup2.pas' {spgrup1_up},
  spr_spfak1 in 'spr_spfak1.pas' {spr_spfak},
  spr_spfak2 in 'spr_spfak2.pas' {spfak_up},
  spr_spspec1 in 'spr_spspec1.pas' {spr_spspec},
  spr_spspec2 in 'spr_spspec2.pas' {spspec_up},
  stud_fak1 in 'stud_fak1.pas' {stud_fak},
  stud_fak5 in 'stud_fak5.pas' {movegr_fak},
  stud_fak2 in 'stud_fak2.pas' {spr_call},
  stud_fak3 in 'stud_fak3.pas' {spis_gr},
  stud_fak4 in 'stud_fak4.pas' {sprav_acc},
  stud_sess1 in 'stud_sess1.pas' {stud_sessia},
  stud_sess2 in 'stud_sess2.pas' {stud_usp},
  stud_sess3 in 'stud_sess3.pas' {stud_svvedom},
  stud_sess4 in 'stud_sess4.pas' {stud_sess_up},
  acc_rep11 in 'acc_rep11.pas' {stud_kontengent},
  stud_sess5 in 'stud_sess5.pas' {stud_spsessia},
  stud_sess6 in 'stud_sess6.pas' {stud_spsess_up},
  stud_usp2 in 'stud_usp2.pas' {stud_usp_up},
  stud_usp3 in 'stud_usp3.pas' {stud_hissessia},
  stud_usp4 in 'stud_usp4.pas' {usp_import},
  acc_stat4 in 'acc_stat4.pas' {stat_reiting},
  acc_perevod in 'acc_perevod.pas' {stud_perevodkurs},
  reiting1 in 'reiting1.pas' {reiting_gr},
  reiting2 in 'reiting2.pas' {reiting_stud},
  acc_rep12 in 'acc_rep12.pas' {acc_indnom},
  acc_stat5 in 'acc_stat5.pas' {acc_movekont},
  reiting3 in 'reiting3.pas' {reiting_acc},
  acc_rep14 in 'acc_rep14.pas' {acc_reppensia},
  umy_proc in 'umy_proc.pas',
  spr_sp4fak in 'spr_sp4fak.pas' {stud_sp4fak},
  spr_sp4fak1 in 'spr_sp4fak1.pas' {stud_sp4fak_up},
  acc_vipiska in 'acc_vipiska.pas' {vipiska},
  geog in 'geog.pas' {Fgeog},
  Password in 'Password.pas' {FPassword},
  stud_del1 in 'stud_del1.pas' {acc_del},
  acc_rep15 in 'acc_rep15.pas' {acc_spstudlgota},
  jurpos in 'jurpos.pas' {Fjurpos},
  uDeaneryTools in 'uDeaneryTools.pas',
  WordDocument in 'WordDocument.pas',
  Document in 'Document.pas';

type
  //  класс обработчика событий при активации форм
  TCreateEvent = class
  public
    //  обработчик событи€
    procedure SetRights(Sender: TObject);
  end;

  //  класс обработчика нажати€ клавиш
  TIdleEvent = class
  public
    procedure AppOnIdle(Sender: TObject; var Done: Boolean);
  end;
 
  procedure TCreateEvent.SetRights(Sender: TObject);
  begin
    try
      //  ≈сли нет форм, обрабатывать нечего
      if Screen.ActiveForm = nil then
        exit;
      //  ≈сли форма авторизации, пропускаем
      if Screen.ActiveForm.ClassName = 'TFPassword' then
        exit;
      //  ”станавливаем права дл€ текущей формы
      FPassword.ApplyRights(Screen.ActiveForm);
    except
    end;
  end;
 
 
  procedure TIdleEvent.AppOnIdle(Sender: TObject; var Done: Boolean);
  var    
    KS: TKeyboardState;
  begin
    if Fpassword.Visible=false then exit; 
    GetKeyboardState(KS);
    if KS[020] = 1 then
    begin
      KS[020] := KS[020] XOR 1;
      SetKeyboardState(KS);
    end;                                                                                  
    Done := False;
  end;
   /////////////////
{$R *.res}

begin
  with TCreateEvent.Create do
  Screen.OnActiveFormChange := SetRights; // присваивание обработчика
                                            // событию
  Application.Initialize;
  with TIdleEvent.Create do
    Application.OnIdle := AppOnIdle;
  Application.CreateForm(TFPassword, FPassword);
  Application.CreateForm(Tacc_del, acc_del);
  Application.CreateForm(Tacc_spstudlgota, acc_spstudlgota);
  Application.CreateForm(TFjurpos, Fjurpos);
  {
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tstud_sp4fak, stud_sp4fak);
  Application.CreateForm(Tstud_sp4fak_up, stud_sp4fak_up);
  Application.CreateForm(Tvipiska, vipiska);}
 
  Application.Run;
end.

