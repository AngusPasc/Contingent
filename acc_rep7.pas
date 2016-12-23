unit acc_rep7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  Spin, ExtCtrls, ComCtrls, DateUtils;

type
  Tacc_spstudotch = class(TForm)
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    BeginDate: TDateTimePicker;
    EndDate: TDateTimePicker;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_spstudotch: Tacc_spstudotch;
  spevent, sost: integer;
  event: string;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_spstudotch.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w6.IndexFieldNames := 'mvfakt';
  // DataModule1.Table_w6.IndexFieldNames :='mvdate';
  DataModule1.Table_w1.IndexName := 'PRIMARY';
  DataModule1.Table_w2.IndexName := 'idxkadacc';
  DataModule1.Table_w26.IndexFieldNames := 'name';
  DataModule1.Table_w6.Open;
  DataModule1.Table_w1.Open;
  DataModule1.Table_w26.Open;
  DataModule1.Table_w2.Open;
  spevent := 0;
  // Begindate.DateTime:=today;  Enddate.DateTime:=today;
end;

procedure Tacc_spstudotch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w6.Close;
  DataModule1.Table_w1.Close;
  DataModule1.Table_w2.Close;
  DataModule1.Table_w26.Close;
  DataModule1.Table_w1.Filtered := False;
  main.Enabled := True;
end;

procedure Tacc_spstudotch.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_spstudotch.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  nn, i, n, acc: integer;
  Name_file: PWideChar;
  fil: OLEVariant;
  pr, spr, pfr, stroka: string;
begin

  DataModule1.Table_w6.SetRangeStart;
  DataModule1.Table_w6.SetRange([BeginDate.Date], [EndDate.Date]);
  DataModule1.Table_w6.ApplyRange;
  Name_file := PChar('c:\doc\список с ' + datetostr(BeginDate.Date) + ' по ' +
    datetostr(EndDate.Date) + '.doc');
  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := False;
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  if CheckBox1.Checked = True then
    pfr := '1'
  else
    pfr := '0'; // обработка студентов только с меткой ПФР
  if spevent <> 0 then
    DataModule1.Table_w6.Filter := 'spevent=' + inttostr(spevent)
  else
    DataModule1.Table_w6.Filter := 'spevent<>26';
  // все события кроме Реструктуризации института

  DataModule1.Table_w6.Filtered := True;
  DataModule1.Table_w6.First;
  n := DataModule1.Table_w6.RecordCount;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n) + ' записей.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  if spevent = 0 then
    CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report9_1.doc'),
      Name_file, False)
  else
    CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report9.doc'),
      Name_file, False);

  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word не доступен.';
      raise;
    end;
  end;

  prakt_progress.ProgressBar1.StepIt; // 3
  NEWDOC := WordApp.Documents.Open(string(Name_file));
  t1 := NEWDOC.Tables.Item(1);
  if spevent <> 0 then
    t1.Cell(2, 1).Range.Text := 'за период с ' + datetostr(BeginDate.Date) +
      ' по ' + datetostr(EndDate.Date)
  else
    t1.Cell(2, 1).Range.Text := event + ' с ' + datetostr(BeginDate.Date) +
      ' по ' + datetostr(EndDate.Date);
  prakt_progress.ProgressBar1.StepIt; // 4
  nn := 1;
  i := 1;
  while (i <= n) and (not DataModule1.Table_w6.Eof) do
  begin
    prakt_progress.Label1.Caption := 'Обработка ' + inttostr(i) + ' записи из '
      + inttostr(n) + 'записей';
    application.ProcessMessages;
    prakt_progress.ProgressBar1.StepIt;
    if not DataModule1.Table_w1.FindKey
      ([DataModule1.Table_w6.FieldByName('acc').AsInteger]) then
    begin
      showmessage('Нет сведений! Pin=' +
        inttostr(DataModule1.Table_w6.FieldByName('pin').AsInteger));
      // DataModule1.Table_w6.Next
    end
    else
    begin
      if not DataModule1.Table_w2.FindKey
        ([DataModule1.Table_w6.FieldByName('acc').AsInteger]) then
      begin
        t1.Cell(nn + 4, 3).Range.Text := '-';
        t1.Cell(i + 4, 4).Range.Text := '-';
      end;
      stroka := '';
      if DataModule1.Table_w6.FieldByName('spstatus').AsInteger = 1 then
        stroka := 'бюджет';
      if DataModule1.Table_w6.FieldByName('spstatus').AsInteger = 2 then
        stroka := 'внебюджет';
      if ((DataModule1.Table_w2.FieldByName('spsoc').AsInteger = 6) and
        (pfr = '1')) or (pfr = '0') then
      begin
        t1.Cell(nn + 4, 1).Range.Text := inttostr(nn);
        t1.Cell(nn + 4, 2).Range.Text :=
          trim(DataModule1.Table_w1.FieldByName('fam').AsString) + ' ' +
          trim(DataModule1.Table_w1.FieldByName('name').AsString) + ' ' +
          trim(DataModule1.Table_w1.FieldByName('vname').AsString);

        t1.Cell(nn + 4, 3).Range.Text :=
          datetostr(DataModule1.Table_w2.FieldByName('dat_ro').AsDateTime);
        t1.Cell(nn + 4, 4).Range.Text :=
          trim(DataModule1.Table_w2.FieldByName('address').AsString);
        if DataModule1.Table_w1.FieldByName('spstatus').AsInteger = 2 then
        // контракт
          t1.Cell(nn + 4, 5).Range.Text :=
            trim(DataModule1.Table_w1.FieldByName('gruppa').AsString) +
            ', контракт'
        else if DataModule1.Table_w1.FieldByName('spstatus').AsInteger > 3 then
        // архив
          t1.Cell(nn + 4, 5).Range.Text :=
            trim(DataModule1.Table_w1.FieldByName('gruppa').AsString) +
            ', архив'
        else
          t1.Cell(nn + 4, 5).Range.Text :=
            trim(DataModule1.Table_w1.FieldByName('gruppa').AsString) +
            ', бюджет';

        if spevent = 0 then
        begin
          acc := DataModule1.Table_w6.FieldByName('acc').AsInteger;
          pr := '';
          spr := '';
          while (acc = DataModule1.Table_w6.FieldByName('acc').AsInteger) and
            (i <= n) do
          begin
            pr := pr + '№ ' + trim(DataModule1.Table_w6.FieldByName('mvnum')
              .AsString) + ' от ' +
              datetostr(DataModule1.Table_w6.FieldByName('mvdate')
              .AsDateTime) + #13;
            spr := spr + trim(DataModule1.Table_w6.FieldByName('event')
              .AsString);
            DataModule1.Table_w6.Next;
            i := i + 1;
          end;
          t1.Cell(nn + 4, 6).Range.Text := pr;
          t1.Cell(nn + 4, 7).Range.Text := spr;
          t1.Cell(nn + 4, 8).Range.Text := stroka;
        end
        else
        begin
          t1.Cell(nn + 4, 6).Range.Text := '№ ' +
            trim(DataModule1.Table_w6.FieldByName('mvnum').AsString) + ' от ' +
            datetostr(DataModule1.Table_w6.FieldByName('mvdate').AsDateTime);
          t1.Cell(nn + 4, 7).Range.Text := event + ' ' +
            trim(DataModule1.Table_w6.FieldByName('mvosn').AsString);
          t1.Cell(nn + 4, 8).Range.Text := stroka;
          i := i + 1;
        end;
        nn := nn + 1;
        t1.Rows.Add();
      end;
    end;
    if spevent <> 0 then
      DataModule1.Table_w6.Next;
  end;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.free;
  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
  DataModule1.Table_w6.CancelRange;
  BitBtn1.Enabled := True;
end;

procedure Tacc_spstudotch.DBLookupComboBox1Click(Sender: TObject);
begin
  spevent := DataModule1.Table_w26.FieldByName('pin').AsInteger;
  event := DataModule1.Table_w26.FieldByName('name').AsString;
  sost := DataModule1.Table_w26.FieldByName('spsost').AsInteger;
end;

end.
