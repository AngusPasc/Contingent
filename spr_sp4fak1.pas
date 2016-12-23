unit spr_sp4fak1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, datamodule, StdCtrls, ComCtrls, ImgList, Buttons,
  DBCtrls, ExtCtrls, Spin, DateUtils;

type
  Tstud_sp4fak_up = class(TForm)
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    kurs: TSpinEdit;
    nameotd: TEdit;
    namefak: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    period: TEdit;
    Label6: TLabel;
    codsp: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_sp4fak_up: Tstud_sp4fak_up;
  otd, nfak, nsp, npin: integer;
  sql1, sql2, sql3: string;

implementation

uses main1, spr_sp4fak;
{$R *.dfm}

procedure Tstud_sp4fak_up.FormActivate(Sender: TObject);
begin
  otd := DataModule1.Table_w36.fieldByname('spotd').Asinteger;
  nameotd.Text := DataModule1.Table_w36.fieldByname('otd').Asstring;
  nfak := DataModule1.Table_w36.fieldByname('spfak').Asinteger;
  namefak.Text := DataModule1.Table_w36.fieldByname('fak').Asstring;
  if act = 2 // редактирование
  then
  begin
    npin := DataModule1.Table_w36.fieldByname('pin').Asinteger;
    DBLookupComboBox1.DataSource := DataModule1.DataSource_w36;
    DBLookupComboBox1.DataField := 'spspec';
    period.Text := DataModule1.Table_w36.fieldByname('period').Asstring;
    codsp.Text := DataModule1.Table_w36.fieldByname('shifr').Asstring;
    kurs.Value := DataModule1.Table_w36.fieldByname('maxkurs').Asinteger;
    if DataModule1.Table_w36.fieldByname('priz').Asinteger = 1 then
      CheckBox1.Checked := True;
  end;
end;

procedure Tstud_sp4fak_up.BitBtn1Click(Sender: TObject);
begin
  DataModule1.Query1.SQL.Clear;
  case act of
    1:
      begin // добавление
        sql1 := 'insert into spec4fak (spotd,spfak,spspec,maxkurs,priz,period) ';
        sql2 := 'values (' + inttostr(otd) + ',' + inttostr(nfak) + ',' +
          inttostr(nsp) + ',' + inttostr(kurs.Value);
        sql3 := ',' + '''' + '1' + '''' + ',' + period.Text + ')';
        DataModule1.Query1.SQL.Add(sql1 + sql2 + sql3);
      end;
    2:
      begin // редактирование
        DataModule1.Query1.SQL.Clear;
        sql1 := 'update spec4fak set spotd=' + inttostr(otd) + ',spfak=' +
          inttostr(nfak) + ',spspec=' + inttostr(nsp);
        sql2 := ',maxkurs=' + inttostr(kurs.Value) + ',priz=' + '''' + '1' +
          '''' + ',period=' + period.Text + ' where pin=' + inttostr(npin);
        DataModule1.Query1.SQL.Add(sql1 + sql2);
      end;
  end;
  DataModule1.Query1.ExecSQL;
  DataModule1.Table_w36.Refresh;
  close;
end;

procedure Tstud_sp4fak_up.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_sp4fak_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  stud_sp4fak.Enabled := True;
end;

procedure Tstud_sp4fak_up.DBLookupComboBox1Click(Sender: TObject);
begin
  codsp.Text := DataModule1.Table_w35.fieldByname('shifr').Asstring;
  nsp := DBLookupComboBox1.Listsource.dataset.fieldByname('pin').Asinteger;
end;

end.
