unit stud_fam1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, datamodule, StdCtrls, ExtCtrls, Buttons, DateUtils, ComCtrls;

type
  Tacc_fam = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit10: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_fam: Tacc_fam;
  sql_1, sql_2, sql_3, sql_4: string;
  str_d, str_dd: string;
  fam_pin: integer;

implementation

uses main1, stud_acc1, umy_proc;
{$R *.dfm}

procedure Tacc_fam.FormCreate(Sender: TObject);
begin
  DataModule1.Table_w23.Open;
end;

procedure Tacc_fam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w23.Close;
  DataModule1.Table_w23.Filtered := False;
  stud_acc.Enabled := true;
end;

procedure Tacc_fam.FormActivate(Sender: TObject);
begin

  DataModule1.Table_w23.Filter := 'priz=''1''';
  DataModule1.Table_w23.Filtered := true;
  DataModule1.Table_w2.IndexName := 'idxkadacc'; // поиск pin студента
  if not DataModule1.Table_w2.FindKey([stud_pin]) then
  begin
    showmessage('Нет сведений о выбранном студенте!');
    exit;
  end;
  If act = 1 then // добавление
  begin
    Edit3.Text := DataModule1.Table_w1.Fieldbyname('fam').AsString;
    // старые фио
    Edit4.Text := DataModule1.Table_w1.Fieldbyname('name').AsString;
    Edit5.Text := DataModule1.Table_w1.Fieldbyname('vname').AsString;

    Edit6.Text := ''; // новые
    Edit7.Text := DataModule1.Table_w1.Fieldbyname('name').AsString;
    Edit8.Text := DataModule1.Table_w1.Fieldbyname('vname').AsString;

    Edit9.Text := DataModule1.Table_w2.Fieldbyname('pasnum').AsString;
    Edit10.Text := DataModule1.Table_w2.Fieldbyname('pasdate').AsString;
    Edit11.Text := DataModule1.Table_w2.Fieldbyname('Paswho').AsString;

    Edit2.Text := datetostr(date());

  end;
  If act = 2 then // редактирование
  begin
    Edit1.Text := DataModule1.Table_w4.Fieldbyname('prnum').AsString;
    Edit2.Text := DataModule1.Table_w4.Fieldbyname('prdate').AsString;
    Edit3.Text := DataModule1.Table_w4.Fieldbyname('fam').AsString;
    // старые данные
    Edit4.Text := DataModule1.Table_w4.Fieldbyname('name').AsString;
    Edit5.Text := DataModule1.Table_w4.Fieldbyname('vname').AsString;
    Edit9.Text := DataModule1.Table_w4.Fieldbyname('pasnum').AsString;
    Edit10.Text := DataModule1.Table_w4.Fieldbyname('pasdate').AsString;
    Edit11.Text := DataModule1.Table_w4.Fieldbyname('Paswho').AsString;

    Edit6.Text := DataModule1.Table_w1.Fieldbyname('fam').AsString;
    // новые данные
    Edit7.Text := DataModule1.Table_w1.Fieldbyname('name').AsString;
    Edit8.Text := DataModule1.Table_w1.Fieldbyname('vname').AsString;
    Edit12.Text := DataModule1.Table_w2.Fieldbyname('pasnum').AsString;
    Edit13.Text := DataModule1.Table_w2.Fieldbyname('pasdate').AsString;
    Edit14.Text := DataModule1.Table_w2.Fieldbyname('Paswho').AsString;
    fam_pin := DataModule1.Table_w4.Fieldbyname('pin').asinteger;

  end;
end;

procedure Tacc_fam.BitBtn1Click(Sender: TObject);
var
  dsv: string;
  doc: integer;
begin
  if trim(Edit2.Text) <> '' then
    str_d := '''' + inttostr(yearof(strtodate(Edit2.Text))) + '-' +
      inttostr(monthof(strtodate(Edit2.Text))) + '-' +
      inttostr(dayof(strtodate(Edit2.Text))) + ''''
  else
    str_d := 'Null';

  if trim(Edit10.Text) <> '' then
    str_dd := '''' + inttostr(yearof(strtodate(Edit10.Text))) + '-' +
      inttostr(monthof(strtodate(Edit10.Text))) + '-' +
      inttostr(dayof(strtodate(Edit10.Text))) + ''''
  else
    str_dd := 'Null';

  If act = 1 then // добавление
  begin
    DataModule1.Query1.SQL.Clear;
    sql_1 := 'insert  into accfam (acc, prnum, prdate,fam, name, vname, pasnum, paswho, pasdate)';
    sql_2 := ' values (' + inttostr(stud_pin) + ',' + '''' + Edit1.Text + '''' +
      ',' + str_d + ',' + '''' + Edit3.Text + '''' + ',' + '''' + Edit4.Text +
      '''' + ',' + '''' + Edit5.Text + '''';
    sql_3 := ',' + '''' + Edit9.Text + '''' + ',' + '''' + Edit11.Text + '''' +
      ',' + str_dd + ')';
    DataModule1.Query1.SQL.Add(sql_1 + sql_2 + sql_3);
    DataModule1.Query1.ExecSQL; // добавляем в accfam
    DataModule1.Table_w4.Refresh;
  end;

  If act = 2 then // редактируем
  begin
    DataModule1.Query2.SQL.Clear;
    if trim(Edit10.Text) <> '' then
      str_dd := '''' + inttostr(yearof(strtodate(Edit10.Text))) + '-' +
        inttostr(monthof(strtodate(Edit10.Text))) + '-' +
        inttostr(dayof(strtodate(Edit10.Text))) + ''''
    else
      str_dd := 'Null';
    sql_1 := ' update accfam set prnum=' + '''' + Edit1.Text + '''' +
      ', prdate=' + str_d + ', fam=' + '''' + Edit3.Text + '''' + ', name=' +
      '''' + Edit4.Text + '''';
    sql_2 := ',vname=' + '''' + Edit5.Text + '''' + ',pasnum=' + '''' +
      Edit9.Text + '''' + ',paswho=' + '''' + Edit11.Text + '''' +
      ',pasdate=' + str_dd;
    sql_3 := ' where pin=' + inttostr(fam_pin);
    DataModule1.Query2.SQL.Add(sql_1 + sql_2 + sql_3);
    DataModule1.Query2.ExecSQL;
    DataModule1.Table_w4.Refresh;
  end;

  if (Edit6.Text <> '') or (Edit7.Text <> '') or (Edit8.Text <> '') then
  // меняем фио в acc
  begin
    DataModule1.Query2.SQL.Clear;
    sql_1 := ' update acc set fam=' + '''' + Edit6.Text + '''' + ', name=' +
      '''' + Edit7.Text + '''' + ', vname=' + '''' + Edit8.Text + '''' +
      ' where pin=' + inttostr(stud_pin);
    DataModule1.Query2.SQL.Add(sql_1);
    DataModule1.Query2.ExecSQL; // изменяем в acc
    DataModule1.Table_w1.Refresh;
    stud_acc.Edit17.Text := trim(Edit6.Text) + ' ' + trim(Edit7.Text) + ' ' +
      trim(Edit8.Text);

    DataModule1.Table_w1.IndexName := 'PRIMARY'; // поиск pin студента
    DataModule1.Table_w1.FindKey([stud_pin]);
    DataModule1.Table_w1.IndexName := 'idxaccfam';
  end;

  if (Edit12.Text <> '') or (Edit13.Text <> '') or (Edit14.Text <> '') then
  // меняем паспорт в acckadr
  begin
    DataModule1.Query2.SQL.Clear;
    if trim(Edit13.Text) <> '' then
      str_dd := '''' + inttostr(yearof(strtodate(Edit13.Text))) + '-' +
        inttostr(monthof(strtodate(Edit13.Text))) + '-' +
        inttostr(dayof(strtodate(Edit13.Text))) + ''''
    else
      str_dd := 'Null';
    sql_1 := ' update acckadr set pasnum=' + '''' + Edit12.Text + '''' +
      ', pasdate=' + str_dd + ', paswho=' + '''' + Edit14.Text + '''' +
      ' where acc=' + inttostr(stud_pin);
    DataModule1.Query2.SQL.Add(sql_1);
    DataModule1.Query2.ExecSQL; // изменяем в acckadr
    DataModule1.Table_w2.Refresh;
  end;
  after_change_fam(stud_pin);
  Close;
end;

procedure Tacc_fam.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
