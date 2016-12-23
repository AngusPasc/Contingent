unit stud_good1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, datamodule, DateUtils;

type
  Tacc_good = class(TForm)
    Label1: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Edit4: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_good: Tacc_good;
  sql1, sql2, str_d: string;
  good: integer;

implementation

uses main1, stud_acc1;
{$R *.dfm}

procedure Tacc_good.FormCreate(Sender: TObject);
begin
  //
end;

procedure Tacc_good.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  stud_acc.Enabled := true;
end;

procedure Tacc_good.FormActivate(Sender: TObject);
begin
  Edit2.Text := stud_fio;
  Edit2.ReadOnly := true;
  Edit2.Enabled := False;
  Edit5.Text := stud_gr;
  Edit5.ReadOnly := true;
  Edit5.Enabled := False;
  Edit6.Text := stud_ls;
  Edit6.ReadOnly := true;
  Edit6.Enabled := False;
  DataModule1.Table_w23.Open;
  If act = 1 then // добавление
  begin
    Edit3.Text := datetostr(date());
  end;
  If act = 2 then // редактирование
  begin
    DBLookupComboBox1.DataSource := DataModule1.DataSource_w5;
    DBLookupComboBox1.DataField := 'spgood';

    Edit1.Text := DataModule1.Table_w5.fieldbyname('prnum').AsString;
    Edit3.Text := DataModule1.Table_w5.fieldbyname('prdate').AsString;
    Edit4.Text := DataModule1.Table_w5.fieldbyname('prosn').AsString;
  end;

end;

procedure Tacc_good.BitBtn1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    showmessage('¬ведите є приказа');
    exit;
  end;
  if trim(Edit3.Text) <> '' then
    str_d := '''' + inttostr(yearof(strtodate(Edit3.Text))) + '-' +
      inttostr(monthof(strtodate(Edit3.Text))) + '-' +
      inttostr(dayof(strtodate(Edit3.Text))) + ''''
  else
    str_d := 'Null';

  if act = 1 then // добавл€ем в accgood
  begin
    DataModule1.Query1.SQL.Clear;
    sql1 := 'insert  into accgood (acc, spgood,prnum, prdate,prosn)';
    sql2 := ' values (' + inttostr(stud_pin) + ',' + inttostr(good) + ',' + ''''
      + Edit1.Text + '''' + ',' + str_d + ',' + '''' + Edit4.Text + '''' + ')';
    DataModule1.Query1.SQL.Add(sql1 + sql2);
    DataModule1.Query1.ExecSQL;
  end;

  if act = 2 then // редактируем accgood
  begin
    DataModule1.Table_w5.Edit;
    DataModule1.Table_w5.fieldbyname('spgood').AsInteger := good;
    DataModule1.Table_w5.fieldbyname('prnum').AsString := trim(Edit1.Text);
    DataModule1.Table_w5.fieldbyname('prdate').AsString := trim(Edit3.Text);
    DataModule1.Table_w5.fieldbyname('prosn').AsString := trim(Edit4.Text);
    DataModule1.Table_w5.Post;

    // DataModule1.Query1.SQL.Clear;
    // sql1 :=' update accgood set spgood='+ inttostr(good)+', prnum='+''''+Edit1.text+''''+', prdate='+str_d+',prosn='+''''+Edit4.Text+'''';
    // DataModule1.Query1.SQL.Add(sql1);

  end;

  DataModule1.Table_w5.Refresh;
  close;
end;

procedure Tacc_good.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tacc_good.DBLookupComboBox1Click(Sender: TObject);
begin
  good := DataModule1.Table_w23.fieldbyname('pin').AsInteger;
  DataModule1.Table_w23.Refresh;

end;

end.
