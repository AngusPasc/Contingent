unit datamodule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDataModule1 = class(TDataModule)
    Table1: TTable;
    Database1: TDatabase;
    DataSource1: TDataSource;
    Database2: TDatabase;
    Table_w1: TTable;
    DataSource_w1: TDataSource;
    DataSource101: TDataSource;
    Table_w2: TTable;
    Table_w14: TTable;
    Table_w17: TTable;
    Table_w18: TTable;
    Table_w24: TTable;
    Table_w25: TTable;
    Table_w33: TTable;
    Table_w34: TTable;
    Table_w35: TTable;
    Table_w37: TTable;
    DataSource_w2: TDataSource;
    DataSource_w14: TDataSource;
    DataSource_w17: TDataSource;
    DataSource_w18: TDataSource;
    DataSource_w24: TDataSource;
    DataSource_w25: TDataSource;
    DataSource_w33: TDataSource;
    DataSource_w34: TDataSource;
    DataSource_w35: TDataSource;
    DataSource_w37: TDataSource;
    Table_w1fio: TStringField;
    Table_w1pin: TIntegerField;
    Table_w1fam: TStringField;
    Table_w1name: TStringField;
    Table_w1vname: TStringField;
    Table_w1spgrup: TIntegerField;
    Table_w1spotd: TIntegerField;
    Table_w1spfak: TIntegerField;
    Table_w1spspec: TIntegerField;
    Table_w1kurs: TSmallintField;
    Table_w1spsost: TIntegerField;
    Table_w1spstatus: TIntegerField;
    Table_w1zachbook: TStringField;
    Table_w1ls: TStringField;
    Table_w1priz: TStringField;
    Table_w1gruppa: TStringField;
    Table_w1sost: TStringField;
    Table_w1status: TStringField;
    DataSource_w36: TDataSource;
    Table_w36: TTable;
    Table_w36pin: TIntegerField;
    Table_w36spotd: TIntegerField;
    Table_w36spfak: TIntegerField;
    Table_w36spspec: TIntegerField;
    Table_w36maxkurs: TIntegerField;
    Table_w36priz: TStringField;
    Table_w36fak: TStringField;
    Table_w36spec: TStringField;
    Table_w36otd: TStringField;
    Table_w2acc: TIntegerField;
    Table_w2spcitiz: TIntegerField;
    Table_w2dat_ro: TDateField;
    Table_w2mes_ro: TStringField;
    Table_w2spksiva: TIntegerField;
    Table_w2pasnum: TStringField;
    Table_w2paswho: TStringField;
    Table_w2pasdate: TDateField;
    Table_w2registr: TStringField;
    Table_w2address: TStringField;
    Table_w2phone: TStringField;
    Table_w2spschool: TIntegerField;
    Table_w2schoolpr: TStringField;
    Table_w2schoolgod: TSmallintField;
    Table_w2hostel: TStringField;
    Table_w2sex: TStringField;
    Table_w2marry: TStringField;
    Table_w2famaly: TStringField;
    Table_w2spsoc: TIntegerField;
    Table_w2namefile: TStringField;
    Table_w2priz: TStringField;
    Table_w2splang: TIntegerField;
    Table_w2spkat: TIntegerField;
    Table_w2mesjob: TStringField;
    Table_w2doljob: TStringField;
    Table_w2teljob: TStringField;
    Table_w2citiz: TStringField;
    Table_w2ksiva: TStringField;
    Table_w2soc: TStringField;
    DataSource_w15: TDataSource;
    DataSource_w16: TDataSource;
    Table_w15: TTable;
    Table_w16: TTable;
    Table_w2lang: TStringField;
    Table_w2kat: TStringField;
    DataSource_w19: TDataSource;
    Table_w19: TTable;
    Table_w19pin: TIntegerField;
    Table_w19name: TStringField;
    Table_w19priz: TStringField;
    Table_w18pin: TIntegerField;
    Table_w18name: TStringField;
    Table_w18priz: TStringField;
    Table_w1dom: TStringField;
    Table_w1tel: TStringField;
    DataSource_w6: TDataSource;
    Table_w6: TTable;
    Table_w26: TTable;
    DataSource_w26: TDataSource;
    Table_w6pin: TIntegerField;
    Table_w6acc: TIntegerField;
    Table_w6spevent: TIntegerField;
    Table_w6mvnum: TStringField;
    Table_w6mvdate: TDateField;
    Table_w6mvosn: TStringField;
    Table_w6spgrup: TIntegerField;
    Table_w6spotd: TIntegerField;
    Table_w6spfak: TIntegerField;
    Table_w6spspec: TIntegerField;
    Table_w6kurs: TSmallintField;
    Table_w6priz: TStringField;
    Table_w6usrwrite: TIntegerField;
    Table_w6usraccept: TIntegerField;
    Table_w36spec_p: TStringField;
    Query1: TQuery;
    Query2: TQuery;
    DataSource_w3: TDataSource;
    DataSource_w4: TDataSource;
    Table_w3: TTable;
    Table_w4: TTable;
    Table_w5: TTable;
    DataSource_w5: TDataSource;
    Table_w4pin: TIntegerField;
    Table_w4acc: TIntegerField;
    Table_w4prnum: TStringField;
    Table_w4prdate: TDateField;
    Table_w4fam: TStringField;
    Table_w4name: TStringField;
    Table_w4vname: TStringField;
    Table_w4pasnum: TStringField;
    Table_w4paswho: TStringField;
    Table_w4pasdate: TDateField;
    Table_w4priz: TStringField;
    Table_w4Fio: TStringField;
    Table_w4password: TStringField;
    Table_w5acc: TIntegerField;
    Table_w5spgood: TIntegerField;
    Table_w5prnum: TStringField;
    Table_w5prdate: TDateField;
    Table_w5prosn: TStringField;
    Table_w5priz: TStringField;
    DataSource_w23: TDataSource;
    Table_w23: TTable;
    Table_w5good: TStringField;
    Table_w26pin: TIntegerField;
    Table_w26name: TStringField;
    Table_w26vfort: TStringField;
    Table_w26cause: TStringField;
    Table_w26spsost: TIntegerField;
    Table_w26spstatus: TIntegerField;
    Table_w26act: TStringField;
    Table_w26priz: TStringField;
    Table_w35pin: TIntegerField;
    Table_w35name: TStringField;
    Table_w35sname: TStringField;
    Table_w35shifr: TStringField;
    Table_w35pinrod: TIntegerField;
    Table_w35qualif: TStringField;
    Table_w35special: TStringField;
    Table_w35priz: TStringField;
    Table_w20: TTable;
    Table_w21: TTable;
    Table_w3acc: TIntegerField;
    Table_w3spmil1: TIntegerField;
    Table_w3milnum: TStringField;
    Table_w3mildate: TDateField;
    Table_w3milwho: TStringField;
    Table_w3katgodn: TStringField;
    Table_w3spmil2: TIntegerField;
    Table_w3kateg: TStringField;
    Table_w3grupuch: TStringField;
    Table_w3spmil3: TIntegerField;
    Table_w3specnum: TStringField;
    Table_w3speckod: TStringField;
    Table_w3priz: TStringField;
    Table_w3spreg1: TIntegerField;
    Table_w3spreg2: TIntegerField;
    Table_w3spreg3: TIntegerField;
    Table_w3spreg4: TIntegerField;
    Table_w22: TTable;
    DataSource_w20: TDataSource;
    DataSource_w21: TDataSource;
    DataSource_w22: TDataSource;
    Table46_1: TTable;
    DataSource46_1: TDataSource;
    Table_w18pr: TStringField;
    Table_w14pin: TIntegerField;
    Table_w14name: TStringField;
    Table_w14priz: TStringField;
    Table_w14pr: TStringField;
    Table_w17pin: TIntegerField;
    Table_w17name: TStringField;
    Table_w17priz: TStringField;
    Table_w17pr: TStringField;
    Table_w19pr: TStringField;
    Table_w20pin: TIntegerField;
    Table_w20name: TStringField;
    Table_w20priz: TStringField;
    Table_w20pr: TStringField;
    Table_w21pin: TIntegerField;
    Table_w21name: TStringField;
    Table_w21priz: TStringField;
    Table_w21pr: TStringField;
    Table_w22pin: TIntegerField;
    Table_w22name: TStringField;
    Table_w22priz: TStringField;
    Table_w22pr: TStringField;
    Table_w19pname: TStringField;
    Table_w1spec: TStringField;
    Table_w1sp1: TStringField;
    Table_w1sp2: TStringField;
    Table46_1pin: TIntegerField;
    Table46_1name: TStringField;
    Table46_1tip: TIntegerField;
    Table46_1rod: TIntegerField;
    Table46_1priz: TStringField;
    Table46_1pr: TStringField;
    Query3: TQuery;
    baza_h: TTable;
    DataSource_ab1: TDataSource;
    DataSource_ab2: TDataSource;
    snspec: TTable;
    Table_w6gruppa: TStringField;
    Table_w1godpr: TIntegerField;
    Table_w25pin: TIntegerField;
    Table_w25name: TStringField;
    Table_w25priz: TStringField;
    Table_w25pr: TStringField;
    Table_w24pin: TIntegerField;
    Table_w24name: TStringField;
    Table_w24priz: TStringField;
    Table_w24pr: TStringField;
    Table_w26pr: TStringField;
    Table_w1fo: TStringField;
    Table_w37pin: TIntegerField;
    Table_w37name: TStringField;
    Table_w37spfak: TIntegerField;
    Table_w37spotd: TIntegerField;
    Table_w37spspec: TIntegerField;
    Table_w37ngrup: TStringField;
    Table_w37priz: TStringField;
    Table_w37grup: TIntegerField;
    Table_w37fak: TStringField;
    Table_w37otd: TStringField;
    Table_w37spec: TStringField;
    Table_w37pr: TStringField;
    Table7: TTable;
    DataSource7: TDataSource;
    Table7cod: TIntegerField;
    Table7naim: TStringField;
    Table7codk: TStringField;
    Table7year: TIntegerField;
    Table7coduchp: TIntegerField;
    Table7sem: TIntegerField;
    Table7chel: TIntegerField;
    Table7prgrup: TIntegerField;
    Table7codrod: TIntegerField;
    Table7npar: TIntegerField;
    Table_w33pin: TIntegerField;
    Table_w33name: TStringField;
    Table_w33mean: TStringField;
    Table_w33priz: TStringField;
    Table_w33pr: TStringField;
    Table_w23pin: TIntegerField;
    Table_w23name: TStringField;
    Table_w23priz: TStringField;
    Table_w23pr: TStringField;
    Table_w34pr: TStringField;
    Table_w34pin: TIntegerField;
    Table_w34name: TStringField;
    Table_w34mean: TStringField;
    Table_w34pinrod: TIntegerField;
    Table_w34mrod: TSmallintField;
    Table_w34priz: TStringField;
    Table_w34nameruk: TStringField;
    Table_w35pr: TStringField;
    Database3: TDatabase;
    snspecpin: TIntegerField;
    snspecsprotd: TIntegerField;
    snspecnapr: TStringField;
    snspecsprfak: TStringField;
    snspecsprspec: TStringField;
    snspecsprkat: TIntegerField;
    snspeckolm: TIntegerField;
    snspecprizn: TIntegerField;
    snspeczan: TIntegerField;
    snspecsrok: TFloatField;
    DataSource_ab3: TDataSource;
    spschool: TTable;
    spschoolpin: TIntegerField;
    spschoolname: TStringField;
    spschoolvid: TIntegerField;
    spschoolpriz: TStringField;
    spschoolmest0: TIntegerField;
    spschoolmest1: TIntegerField;
    spschoolmest2: TIntegerField;
    spschoolmest3: TIntegerField;
    spschoolmest4: TIntegerField;
    spschooltel: TStringField;
    spschooldirekt: TStringField;
    spschoolnamekr: TStringField;
    spschooltipob: TIntegerField;
    spschoolkname: TStringField;
    tipuchz: TTable;
    tipuchzpin: TIntegerField;
    tipuchzname: TStringField;
    tipuchzobr: TIntegerField;
    tipuchzpriz: TStringField;
    DataSource_ab4: TDataSource;
    Table_w36shifr: TStringField;
    DataSource_ab5: TDataSource;
    geography: TTable;
    geographypin: TIntegerField;
    geographyname: TStringField;
    geographytip: TIntegerField;
    geographyrod: TIntegerField;
    geographypriz: TIntegerField;
    geographycod: TStringField;
    Table_w2school: TStringField;
    Table_w8: TTable;
    Table_p4: TTable;
    Table_p4pin: TIntegerField;
    Table_p4naim: TStringField;
    Table_p4adress: TStringField;
    Table_p4okonh: TStringField;
    Table_p4okpo: TStringField;
    Table_p4inn: TStringField;
    Table_p4rsc: TStringField;
    Table_p4ofk: TStringField;
    Table_p4ls: TStringField;
    Table_p4kpp: TStringField;
    Table_p4bik: TStringField;
    Table_p4bnk: TStringField;
    Table_p4numdog: TIntegerField;
    Table_p4nomakkr: TStringField;
    Table_p4dateakkr: TDateField;
    Table_p4begakkr: TDateField;
    Table_p4endakkr: TDateField;
    Table_p4nomlits: TStringField;
    Table_p4datelits: TDateField;
    Table_p4litsot: TDateField;
    Table_p4litsdo: TDateField;
    Table_p4dovper: TStringField;
    Table_p4dovnom: TStringField;
    Table_p4dovdate: TDateField;
    DataSource_p4: TDataSource;
    Table101: TTable;
    Table101cod: TIntegerField;
    Table101codk: TStringField;
    Table101paspol: TStringField;
    Table101pasread: TStringField;
    Table101podr: TStringField;
    Table101fiorin: TStringField;
    DataSource15: TDataSource;
    Table15: TTable;
    Table15cod: TIntegerField;
    Table15coduchp: TIntegerField;
    Table15coddis: TIntegerField;
    Table15ekz: TStringField;
    Table15zach: TStringField;
    Table15kpr: TStringField;
    Table15kra: TStringField;
    Table15rasz: TStringField;
    Table15l1: TFloatField;
    Table15l2: TFloatField;
    Table15l3: TFloatField;
    Table15l4: TFloatField;
    Table15l5: TFloatField;
    Table15l6: TFloatField;
    Table15l7: TFloatField;
    Table15l8: TFloatField;
    Table15l9: TFloatField;
    Table15l10: TFloatField;
    Table15l11: TFloatField;
    Table15l12: TFloatField;
    Table15g1: TFloatField;
    Table15g2: TFloatField;
    Table15g3: TFloatField;
    Table15g4: TFloatField;
    Table15g5: TFloatField;
    Table15g6: TFloatField;
    Table15g7: TFloatField;
    Table15g8: TFloatField;
    Table15g9: TFloatField;
    Table15g10: TFloatField;
    Table15g11: TFloatField;
    Table15g12: TFloatField;
    Table15codpot: TIntegerField;
    Table15nomstr: TFloatField;
    Table15smrab: TIntegerField;
    Table15gos: TIntegerField;
    Table15flag: TIntegerField;
    DataSource14: TDataSource;
    Table14: TTable;
    Table14cod: TIntegerField;
    Table14codk: TStringField;
    Table14codcik: TStringField;
    Table14codkom: TStringField;
    Table14naim: TStringField;
    Table14naimk: TStringField;
    Table14coddel: TIntegerField;
    Table14coddelp: TIntegerField;
    Table14student: TIntegerField;
    DataSource22: TDataSource;
    Table22: TTable;
    Table22id: TIntegerField;
    Table22cod: TFloatField;
    Table22fam: TStringField;
    Table22name: TStringField;
    Table22otch: TStringField;
    Table22fio: TStringField;
    Table22codk: TStringField;
    Table22coduch: TIntegerField;
    Table22codzvan: TIntegerField;
    Table22coddol: TIntegerField;
    Table22codnaim: TIntegerField;
    Table22codnation: TIntegerField;
    Table22pol: TStringField;
    Table22codkateg: TIntegerField;
    Table22datarog: TDateField;
    Table22adress: TStringField;
    Table22phone: TStringField;
    Table22naguch: TFloatField;
    Table22datapr: TDateField;
    Table22datauv: TDateField;
    Table22uchsov: TIntegerField;
    DataSource23: TDataSource;
    Table23: TTable;
    Table23id: TIntegerField;
    Table23cod: TFloatField;
    Table23coduchp: TIntegerField;
    Table23coddis: TIntegerField;
    Table23prlek: TIntegerField;
    Table23prlab: TIntegerField;
    Table23prprak: TIntegerField;
    Table23prksr: TIntegerField;
    Table23codk: TStringField;
    Table23year: TIntegerField;
    Table23semester: TIntegerField;
    Table23codgr: TIntegerField;
    Table23codpot: TIntegerField;
    Table23utver: TIntegerField;
    DataSource_w8: TDataSource;
    DataSource_w10: TDataSource;
    Table_w10: TTable;
    Table_w10grup: TStringField;
    Table_w10discip: TStringField;
    Table_w10pin: TIntegerField;
    Table_w10spgrup: TIntegerField;
    Table_w10sem: TIntegerField;
    Table_w10spdisc: TIntegerField;
    Table_w10spprepod: TIntegerField;
    Table_w10godpr: TIntegerField;
    Table_w10coduchp: TIntegerField;
    Table_w10ekz: TStringField;
    Table_w10zach: TStringField;
    Table_w10kr: TStringField;
    Table_w10kp: TStringField;
    Table_w10houres: TStringField;
    Table_w10prepod: TStringField;
    Table_w12: TTable;
    DataSource_w12: TDataSource;
    Table_w12acc: TIntegerField;
    Table_w12marks: TIntegerField;
    Table_w12priz: TStringField;
    Table22fiopoja: TStringField;
    Table_w1fak: TStringField;
    Table_w11: TTable;
    Table_w11pin: TIntegerField;
    Table_w11name: TStringField;
    Table_w11begdate: TDateField;
    Table_w11enddate: TDateField;
    Table_w11goduch: TIntegerField;
    Table_w11spotd: TIntegerField;
    Table_w11spspec: TIntegerField;
    Table_w11kurs: TSmallintField;
    DataSource_w11: TDataSource;
    Table_w12h: TTable;
    Table_w12hacc: TIntegerField;
    Table_w12huchsessia: TIntegerField;
    Table_w12hspkontr: TIntegerField;
    Table_w12hdatesd: TDateField;
    Table_w12hball: TIntegerField;
    DataSource_w12h: TDataSource;
    Table_w10spsessia: TIntegerField;
    Table_w11k: TTable;
    DataSource_w11k: TDataSource;
    Table_w11kpin: TIntegerField;
    Table_w11kname: TStringField;
    Table_w11kpriz: TStringField;
    Table_w12fio: TStringField;
    Table_w12spkontr: TIntegerField;
    Table_w12m: TTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DataSource_w12m: TDataSource;
    Table_w12mspkontr: TIntegerField;
    Table_w12mocenka: TSmallintField;
    Table_w12mto5: TSmallintField;
    Table_w12mvid: TStringField;
    Table_w12rsem: TIntegerField;
    Table_w12rekzzach: TIntegerField;
    Table_w12ritog: TIntegerField;
    Table_w12uchsessia: TIntegerField;
    Table_w12ocenka: TStringField;
    Table_w12datavv: TDateField;
    DataSource_r1: TDataSource;
    shablreit: TTable;
    shablreitid: TIntegerField;
    shablreitprepod: TFloatField;
    shablreitdisc: TIntegerField;
    shablreitpolg: TIntegerField;
    shablreitgrup: TIntegerField;
    Table_w6mvfakt: TDateField;
    Table_w37spfakold: TIntegerField;
    Table_w11spec: TStringField;
    Table_w11spfak: TIntegerField;
    Table_w10ves: TFloatField;
    Table_w10fio: TStringField;
    Table_w12datazp: TDateField;
    config_rii: TTable;
    config_riipin: TIntegerField;
    config_riivarname: TStringField;
    config_riivarvalue: TStringField;
    config_riivarcoment: TStringField;
    DataSource_cr: TDataSource;
    Table_w1r_vxod: TIntegerField;
    svidet: TTable;
    svidetauto: TIntegerField;
    svidetpin: TIntegerField;
    svidetpr: TIntegerField;
    svidetoc: TFloatField;
    svidetnomer: TStringField;
    DataSource_ab6: TDataSource;
    sdekz: TTable;
    sdekzpin: TIntegerField;
    sdekzname: TStringField;
    sdekzvid: TIntegerField;
    sdekzlt: TIntegerField;
    sdekzct: TFloatField;
    sdekzpriz: TStringField;
    sdekzposinege: TIntegerField;
    sdekznabpr: TIntegerField;
    sdekznabpr1: TIntegerField;
    DataSource_ab7: TDataSource;
    Table_w2mobphone: TStringField;
    DataSource_wr: TDataSource;
    Table_wr: TTable;
    Table_wracc: TIntegerField;
    Table_wrcodbar: TStringField;
    Table_wrspgrup: TIntegerField;
    Table_wrrbar: TIntegerField;
    Table_wrkurs: TIntegerField;
    Table_wrr1: TIntegerField;
    Table_wrr2: TIntegerField;
    Table_wrr3: TIntegerField;
    Table_wrr4: TIntegerField;
    Table_wrr5: TIntegerField;
    Table_wrr6: TIntegerField;
    Table_wrr7: TIntegerField;
    Table_wrr8: TIntegerField;
    Table_wrr9: TIntegerField;
    Table_wrr10: TIntegerField;
    Table_wrfio: TStringField;
    Table_w12ves: TFloatField;
    Table_w1codbar: TStringField;
    Table_w1spcitiz: TIntegerField;
    Table_w6event: TStringField;
    Table_w2svpens: TStringField;
    Table_w6act: TIntegerField;
    Table_w4doc: TIntegerField;
    Table_w4docnom: TStringField;
    Table_w4docwho: TStringField;
    Table_w4docdate: TDateField;
    Database4: TDatabase;
    Table6_3: TTable;
    Table6_3pin: TIntegerField;
    Table6_3sprotd: TIntegerField;
    Table6_3uchgod: TIntegerField;
    Table6_3sprfak: TStringField;
    Table6_3sprspec: TStringField;
    Table6_3kurs: TIntegerField;
    Table6_3perbeg: TDateField;
    Table6_3perend: TDateField;
    Table6_3summa: TFloatField;
    Table6_3prim: TStringField;
    Table3_3: TTable;
    Table3_3pin: TIntegerField;
    Table3_3acc: TIntegerField;
    Table3_3sprvdoc: TIntegerField;
    Table3_3summa: TFloatField;
    Table3_3d_o: TDateField;
    Table3_3uch_god: TIntegerField;
    Table3_3vz: TStringField;
    Table3_3priz: TStringField;
    Table3_3isp: TIntegerField;
    qtmp_platn: TQuery;
    tcurrentost: TTable;
    tcurrentostpin: TIntegerField;
    tcurrentostacc: TIntegerField;
    tcurrentostsumma: TFloatField;
    tcurrentostspisan: TIntegerField;
    qtmp: TQuery;
    Table1_3: TTable;
    Table1_3pin: TIntegerField;
    Table1_3plat: TIntegerField;
    Table1_3nomdog: TStringField;
    Table1_3summ: TFloatField;
    Table1_3begdog: TDateField;
    Table1_3enddog: TDateField;
    Table1_3period: TIntegerField;
    Table1_3acc: TIntegerField;
    Table1_3lastdog: TStringField;
    Table1_3spotd: TIntegerField;
    Table1_3spfak: TIntegerField;
    Table1_3spspec: TIntegerField;
    Table1_3kurs: TIntegerField;
    Table1_3srokd: TDateField;
    Table1_3rastorg: TIntegerField;
    Table3_3ndoc: TIntegerField;
    Table3_3ndoctmp: TStringField;
    Table_w36period: TFloatField;
    baza_hpin: TIntegerField;
    baza_hfam: TStringField;
    baza_hname: TStringField;
    baza_hotch: TStringField;
    baza_hotd: TIntegerField;
    baza_hpol: TIntegerField;
    baza_hsoc_pol: TIntegerField;
    baza_hsem_pol: TIntegerField;
    baza_hgraj: TIntegerField;
    baza_hinjaz: TIntegerField;
    baza_hcoduch: TIntegerField;
    baza_hotn_sl: TIntegerField;
    baza_hkat: TIntegerField;
    baza_hobsh: TIntegerField;
    baza_haregion1: TIntegerField;
    baza_haregion2: TIntegerField;
    baza_haregion3: TIntegerField;
    baza_haregion4: TIntegerField;
    baza_haul: TStringField;
    baza_hadom: TStringField;
    baza_hakva: TStringField;
    baza_hphone: TStringField;
    baza_hdate_ro: TDateField;
    baza_hmregion: TStringField;
    baza_hmregion1: TIntegerField;
    baza_hmregion2: TIntegerField;
    baza_hmregion3: TIntegerField;
    baza_hmregion4: TIntegerField;
    baza_hdate_uh1: TIntegerField;
    baza_htip_lich: TIntegerField;
    baza_hkempasport: TStringField;
    baza_hdatpasport: TDateField;
    baza_htip_voen: TIntegerField;
    baza_hdatvoen: TDateField;
    baza_hmestjob: TStringField;
    baza_hdoljn: TStringField;
    baza_hteljob: TStringField;
    baza_hnomvoen: TStringField;
    baza_hpasser: TStringField;
    baza_hpasnom: TStringField;
    baza_hkemv1: TIntegerField;
    baza_hkemv2: TIntegerField;
    baza_hkemvn: TStringField;
    baza_hkemv3: TIntegerField;
    baza_hmobtel: TStringField;
    baza_hlichd: TStringField;
    baza_hlichdj: TStringField;
    baza_hzapis: TIntegerField;
    baza_hauls: TStringField;
    baza_hzach: TIntegerField;
    baza_hzach1: TIntegerField;
    Table1_3datedog: TDateField;
    tactcor: TTable;
    tactcorpin: TIntegerField;
    tactcoracc: TIntegerField;
    tactcoraktnom: TIntegerField;
    tactcoraktdate: TDateField;
    tactcorvid: TStringField;
    tactcorbegper: TDateField;
    tactcorendper: TDateField;
    tactcorsumma: TFloatField;
    tactcorosnovanie: TStringField;
    tactcorreason: TStringField;
    Table_w1sl: TIntegerField;
    tzabalans: TTable;
    tzabalanspin: TIntegerField;
    tzabalansprik: TIntegerField;
    tzabalansevent: TIntegerField;
    tzabalansdoc: TIntegerField;
    tzabalanssumma: TFloatField;
    tzabalansdat: TDateField;
    tprikspis: TTable;
    tprikspispin: TIntegerField;
    tprikspisacc: TIntegerField;
    tprikspisnom: TStringField;
    tprikspisdata: TDateField;
    tprikspissumma: TFloatField;
    tprikspisd_spis: TDateField;
    tprikspisvid: TIntegerField;
    tprikspispindoc: TIntegerField;
    Table_w1deperson: TIntegerField;
    baza_hsl: TIntegerField;
    Table_w6datevv: TDateTimeField;
    Table_w6sl: TIntegerField;
    baza_hpr: TStringField;
    baza_hpapa: TStringField;
    baza_hmama: TStringField;
    baza_hpapajob: TStringField;
    baza_hmamajob: TStringField;
    Table_w2aregion1: TIntegerField;
    Table_w2aregion2: TIntegerField;
    Table_w2aregion3: TIntegerField;
    Table_w2aregion4: TIntegerField;
    Table_w2aul: TStringField;
    Table_w2papa: TStringField;
    Table_w2mama: TStringField;
    Table_w2papajob: TStringField;
    Table_w2mamajob: TStringField;
    qtmp_abitu: TQuery;
    Table_w6spstatus: TIntegerField;
    snvnek: TTable;
    DataSource_ab8: TDataSource;
    snvnekpin: TIntegerField;
    snvnekname: TStringField;
    snvnekPname: TStringField;
    snvnekpriz: TStringField;
    Table_w1pro: TStringField;
    Table_w1lgota: TIntegerField;
    Table_w6lgota: TIntegerField;
    Table_w26lgota: TIntegerField;
    DataSource2: TDataSource;
    Query4: TQuery;
    Table_p41: TTable;
    DataSourse_p41: TDataSource;
    Table_p41pin: TIntegerField;
    Table_p41naim: TStringField;
    Table_p41shortname: TStringField;
    Table_p41adress: TStringField;
    Table_p41okonh: TStringField;
    Table_p41okpo: TStringField;
    Table_p41inn: TStringField;
    Table_p41rsc: TStringField;
    Table_p41ofk: TStringField;
    Table_p41ls: TStringField;
    Table_p41kpp: TStringField;
    Table_p41bik: TStringField;
    Table_p41bnk: TStringField;
    Table_p41numdog: TIntegerField;
    Table_p41regnakkr: TStringField;
    Table_p41nomakkr: TStringField;
    Table_p41dateakkr: TDateField;
    Table_p41begakkr: TDateField;
    Table_p41endakkr: TDateField;
    Table_p41regnomlits: TStringField;
    Table_p41nomlits: TStringField;
    Table_p41datelits: TDateField;
    Table_p41litsot: TDateField;
    Table_p41litsdo: TDateField;
    Table_p41dovper: TStringField;
    Table_p41dovnom: TStringField;
    Table_p41dovdate: TDateField;
    Table_p41glitsnom: TStringField;
    Table_p41glitsdat: TDateField;
    Table_p41glitsdatb: TDateField;
    Table_p41glitsdaten: TDateField;
    Table_p41glitsregn: TStringField;
    Query5: TQuery;
    DataSource3: TDataSource;
    Table_w8pin: TIntegerField;
    Table_w8acc: TIntegerField;
    Table_w8dateout: TDateField;
    Table_w8numout: TIntegerField;
    Table_w8mesjob: TStringField;
    Table_w8datebegin: TDateField;
    Table_w8dateend: TDateField;
    Table_w8namerod: TStringField;
    Table_w8spfak: TIntegerField;
    Table_w8at: TIntegerField;
    Query6: TQuery;
    DataSource4: TDataSource;
    Query7: TQuery;
    DataSource5: TDataSource;
    qry1: TQuery;
    ds1: TDataSource;
    AuxQuery_work_ok: TQuery;
    AuxQuery: TQuery;
    Table_w35NewCode: TStringField;
    Table_w1NewSpecCode: TStringField;
    TableAccKadr: TTable;
    TableAccKadracc: TIntegerField;
    TableAccKadrspcitiz: TIntegerField;
    TableAccKadrdat_ro: TDateField;
    TableAccKadrmes_ro: TStringField;
    TableAccKadrspksiva: TIntegerField;
    TableAccKadrpasnum: TStringField;
    TableAccKadrpaswho: TStringField;
    TableAccKadrpasdate: TDateField;
    TableAccKadrregistr: TStringField;
    TableAccKadraddress: TStringField;
    TableAccKadrphone: TStringField;
    TableAccKadrspschool: TIntegerField;
    TableAccKadrschoolpr: TStringField;
    TableAccKadrschoolgod: TSmallintField;
    TableAccKadrhostel: TStringField;
    TableAccKadrsex: TStringField;
    TableAccKadrmarry: TStringField;
    TableAccKadrfamaly: TStringField;
    TableAccKadrspsoc: TIntegerField;
    TableAccKadrnamefile: TStringField;
    TableAccKadrpriz: TStringField;
    TableAccKadrsplang: TIntegerField;
    TableAccKadrspkat: TIntegerField;
    TableAccKadrmesjob: TStringField;
    TableAccKadrdoljob: TStringField;
    TableAccKadrteljob: TStringField;
    TableAccKadraregion1: TIntegerField;
    TableAccKadraregion2: TIntegerField;
    TableAccKadraregion3: TIntegerField;
    TableAccKadraregion4: TIntegerField;
    TableAccKadraul: TStringField;
    TableAccKadrmobphone: TStringField;
    TableAccKadrsvpens: TStringField;
    TableAccKadrpapa: TStringField;
    TableAccKadrmama: TStringField;
    TableAccKadrpapajob: TStringField;
    TableAccKadrmamajob: TStringField;
    TableAccKadrdatevv: TDateTimeField;
    TableAccKadrtipdoc_ob: TIntegerField;
    TableAccKadrdoc_obraz: TStringField;
    TableAccKadrpinaccKey: TStringField;
    procedure Table_w1CalcFields(DataSet: TDataSet);
    procedure Table_w4CalcFields(DataSet: TDataSet);
    procedure Table_w18CalcFields(DataSet: TDataSet);
    procedure Table_w14CalcFields(DataSet: TDataSet);
    procedure Table_w17CalcFields(DataSet: TDataSet);
    procedure Table_w19CalcFields(DataSet: TDataSet);
    procedure Table_w20CalcFields(DataSet: TDataSet);
    procedure Table_w21CalcFields(DataSet: TDataSet);
    procedure Table_w22CalcFields(DataSet: TDataSet);
    procedure Table46_1CalcFields(DataSet: TDataSet);
    procedure baza_hCalcFields(DataSet: TDataSet);
    procedure Table_w25CalcFields(DataSet: TDataSet);
    procedure Table_w24CalcFields(DataSet: TDataSet);
    procedure Table_w26CalcFields(DataSet: TDataSet);
    procedure Table_w37CalcFields(DataSet: TDataSet);
    procedure Table_w33CalcFields(DataSet: TDataSet);
    procedure Table_w23CalcFields(DataSet: TDataSet);
    procedure Table_w34CalcFields(DataSet: TDataSet);
    procedure Table_w35CalcFields(DataSet: TDataSet);
    procedure Table22CalcFields(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.Table_w1CalcFields(DataSet: TDataSet);
begin
  DataModule1.Table_w1.FieldByName('fio').AsString :=
    trim(DataModule1.Table_w1.FieldByName('fam').AsString) + ' ' +
    trim(DataModule1.Table_w1.FieldByName('name').AsString) + ' ' +
    trim(DataModule1.Table_w1.FieldByName('vname').AsString);
  DataModule1.Table_w1.FieldByName('spec').AsString :=
    trim(DataModule1.Table_w1.FieldByName('sp1').AsString) + ' ' +
    DataModule1.Table_w1.FieldByName('sp2').AsString;

end;

procedure TDataModule1.Table_w4CalcFields(DataSet: TDataSet);
begin
  DataModule1.Table_w4.FieldByName('fio').AsString :=
    trim(DataModule1.Table_w4.FieldByName('fam').AsString) + ' ' +
    trim(DataModule1.Table_w4.FieldByName('name').AsString) + ' ' +
    trim(DataModule1.Table_w4.FieldByName('vname').AsString);
  DataModule1.Table_w4.FieldByName('password').AsString :=
    trim(DataModule1.Table_w4.FieldByName('pasnum').AsString) + ' ' +
    trim(DataModule1.Table_w4.FieldByName('paswho').AsString) + ' ' +
    trim(DataModule1.Table_w4.FieldByName('pasdate').AsString);

end;

procedure TDataModule1.Table_w18CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w18.FieldByName('priz').AsString = '1' then
    DataModule1.Table_w18.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w18.FieldByName('pr').AsString := '*';
end;

procedure TDataModule1.Table_w14CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w14.FieldByName('priz').AsString = '1' then
    DataModule1.Table_w14.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w14.FieldByName('pr').AsString := '*';

end;

procedure TDataModule1.Table_w17CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w17.FieldByName('priz').AsString = '1' then
    DataModule1.Table_w17.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w17.FieldByName('pr').AsString := '*';

end;

procedure TDataModule1.Table_w19CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w19.FieldByName('priz').AsString = '1' then
    DataModule1.Table_w19.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w19.FieldByName('pr').AsString := '*';

end;

procedure TDataModule1.Table_w20CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w20.FieldByName('priz').AsString = '1' then
    DataModule1.Table_w20.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w20.FieldByName('pr').AsString := '*';

end;

procedure TDataModule1.Table_w21CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w21.FieldByName('priz').AsString = '1' then
    DataModule1.Table_w21.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w21.FieldByName('pr').AsString := '*';

end;

procedure TDataModule1.Table_w22CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w22.FieldByName('priz').AsString = '1' then
    DataModule1.Table_w22.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w22.FieldByName('pr').AsString := '*';

end;

procedure TDataModule1.Table46_1CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table46_1.FieldByName('priz').AsString = '1' then
    DataModule1.Table46_1.FieldByName('pr').AsString := ''
  else
    DataModule1.Table46_1.FieldByName('pr').AsString := '*';

end;

procedure TDataModule1.baza_hCalcFields(DataSet: TDataSet);
begin
  if DataModule1.baza_h.FieldByName('zapis').AsInteger = 0 then
    DataModule1.baza_h.FieldByName('pr').AsString := ''
  else
    DataModule1.baza_h.FieldByName('pr').AsString := '*';

end;

procedure TDataModule1.Table_w25CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w25.FieldByName('priz').AsString = '0' then
    DataModule1.Table_w25.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w25.FieldByName('pr').AsString := '*';
end;

procedure TDataModule1.Table_w24CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w24.FieldByName('priz').AsString = '0' then
    DataModule1.Table_w24.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w24.FieldByName('pr').AsString := '*';
end;

procedure TDataModule1.Table_w26CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w26.FieldByName('priz').AsString = '0' then
    DataModule1.Table_w26.FieldByName('pr').AsString := ''
  else
    DataModule1.Table_w26.FieldByName('pr').AsString := '*';
end;

procedure TDataModule1.Table_w37CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w37.FieldByName('priz').AsString = '0' then
    DataModule1.Table_w37.FieldByName('pr').AsString := '*'
  else
    DataModule1.Table_w37.FieldByName('pr').AsString := '';

end;

procedure TDataModule1.Table_w33CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w33.FieldByName('priz').AsString = '0' then
    DataModule1.Table_w33.FieldByName('pr').AsString := '*'
  else
    DataModule1.Table_w33.FieldByName('pr').AsString := '';

end;

procedure TDataModule1.Table_w23CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w23.FieldByName('priz').AsString = '0' then
    DataModule1.Table_w23.FieldByName('pr').AsString := '*'
  else
    DataModule1.Table_w23.FieldByName('pr').AsString := '';

end;

procedure TDataModule1.Table_w34CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w34.FieldByName('priz').AsString = '0' then
    DataModule1.Table_w34.FieldByName('pr').AsString := '*'
  else
    DataModule1.Table_w34.FieldByName('pr').AsString := '';

end;

procedure TDataModule1.Table_w35CalcFields(DataSet: TDataSet);
begin
  if DataModule1.Table_w35.FieldByName('priz').AsString = '0' then
    DataModule1.Table_w35.FieldByName('pr').AsString := '*'
  else
    DataModule1.Table_w35.FieldByName('pr').AsString := '';

end;

procedure TDataModule1.Table22CalcFields(DataSet: TDataSet);
begin
  case DataModule1.Table22codnaim.AsInteger of
    1:
      DataModule1.Table22fiopoja.AsString := DataModule1.Table22fio.AsString +
        ' (штат.)';
    2:
      if DataModule1.Table22naguch.AsFloat = 0 then
        DataModule1.Table22fiopoja.AsString := DataModule1.Table22fio.AsString +
          ' (зав.)'
      else
        DataModule1.Table22fiopoja.AsString := DataModule1.Table22fio.AsString +
          ' (внут.)';
    3:
      DataModule1.Table22fiopoja.AsString := DataModule1.Table22fio.AsString +
        ' (внеш.)';
    6:
      DataModule1.Table22fiopoja.AsString := DataModule1.Table22fio.AsString
        + ' (ч.)';
    7:
      DataModule1.Table22fiopoja.AsString := DataModule1.Table22fio.AsString +
        ' (проек.)';
  end;
end;

end.
