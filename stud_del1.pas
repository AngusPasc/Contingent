unit stud_del1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule;

type
  Tacc_del = class(TForm)
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
  acc_del: Tacc_del;
  gr, fo, fak, spec, kurs, sost, stat, ev: integer;
  str1, str2, str3: string;

implementation

uses main1, stud_acc1, stud_moves4, umy_proc;
{$R *.dfm}

procedure Tacc_del.FormCreate(Sender: TObject);
begin
  // ����������� ��������
  // DataModule1.Table_w26.Open;
end;

procedure Tacc_del.BitBtn2Click(Sender: TObject);
begin
  DataModule1.Table_w1.Cancel;
  DataModule1.Table_w6.Cancel;
  close;
end;

procedure Tacc_del.BitBtn1Click(Sender: TObject);
var
  sl, evold: integer;
begin
  If DataModule1.Table_w6.RecordCount > 1 then // ����� ������� ������
  begin
    DataModule1.Table_w6.Last;
    evold := DataModule1.Table_w6.fieldbyname('spevent').asinteger;
    mark := DataModule1.Table_w6.GetBookmark;
    DataModule1.Table_w6.Prior;
    // ������ ���������� ����� ������������ ������ � ���������
    ev := DataModule1.Table_w6.fieldbyname('spevent').asinteger;
    if not DataModule1.Table_w26.FindKey([ev]) then
    begin
      showmessage
        ('��� ����������� ������������ ���������� ��������� ��������!#13 ������ �� �������� �������!!!');
      exit;
    end;
    gr := DataModule1.Table_w6.fieldbyname('spgrup').asinteger;
    // ����� ������ ������
    fo := DataModule1.Table_w6.fieldbyname('spotd').asinteger; // ����� ��������
    fak := DataModule1.Table_w6.fieldbyname('spfak').asinteger; // ���������
    spec := DataModule1.Table_w6.fieldbyname('spspec').asinteger;
    // �������������
    kurs := DataModule1.Table_w6.fieldbyname('kurs').asinteger; // ����
    sl := DataModule1.Table_w6.fieldbyname('sl').asinteger; // ������ ���������

    sost := DataModule1.Table_w26.fieldbyname('spsost').asinteger;
    // ���������� ���������
    stat := DataModule1.Table_w26.fieldbyname('spstatus').asinteger; // ������

    DataModule1.Table_w6.GotoBookmark(mark);
    // ������ �� ���������� ������(��� ���������)
    // datamodule1.Table_w6.Edit;
    // datamodule1.Table_w1.Edit;

    DataModule1.Query1.SQL.Clear;
    str1 := 'update acc set spgrup=' + inttostr(gr) + ', spotd=' + inttostr(fo)
      + ', spfak=' + inttostr(fak);
    str2 := ', spspec=' + inttostr(spec) + ',kurs=' + inttostr(kurs) +
      ',spsost=' + inttostr(sost) + ',spstatus=' + inttostr(stat);
    str3 := ', sl=' + inttostr(sl) + ' where pin=' + inttostr(stud_pin);
    if evold = 54 // ������� ������ � ���������� �� ���.�����������
    then
      str3 := ', sl=' + inttostr(sl) + ',lgota=0 where pin=' +
        inttostr(stud_pin);
    DataModule1.Query1.SQL.Add(str1 + str2 + str3);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w6.Delete;
    DataModule1.Table_w6.Refresh;
    DataModule1.Table_w1.Refresh
  end
  else
    showmessage(' ������� ������ ����������!!! ');
  /// /////////////////////////////////////
  // ************ �� ��������� ***********//
  nachislenie(stud_pin, 'del');
  /// //////////////////////////////////////
  close;
end;

procedure Tacc_del.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if pp = 1 // ������� � ������ ���������
  then
    stud_acc.Enabled := true;
  if pp = 2 // ������� � ������ �� ���� �����������
  then
    stud_moves.Enabled := true;
end;

end.
