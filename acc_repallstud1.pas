unit acc_repallstud1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, datamodule, OleServer, WordXP, ComObj, DBCtrls,
  ExtCtrls;

type
  Tacc_repallstud = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox14: TCheckBox;
    CheckBox1: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  acc_repallstud: Tacc_repallstud;

implementation

uses main1, prakt_progress1;
{$R *.dfm}

procedure Tacc_repallstud.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w1.IndexName := 'idxaccfam';
  DataModule1.Table_w1.Open;
  DataModule1.Table_w36.Open;
end;

procedure Tacc_repallstud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w1.Close;
  main.Enabled := True;
end;

procedure Tacc_repallstud.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tacc_repallstud.BitBtn1Click(Sender: TObject);
var
  WordApp, NEWDOC: OLEVariant;
  t1: OLEVariant;
  i, ii, j, j1, n1, sum, k, SMALL: integer;
  sum_k, sum_all: array [1 .. 7] of integer;
  // массив суммарное кол-во по курсам и итого
  sp4f: array [1 .. 40, 1 .. 3] of integer; // массив фо, фак-т, спец-ть
  spec_name: array [1 .. 40] of string[10]; // массив названия специальностей
  Name_file: PWideChar;
  fil: OLEVariant;
  filt_sost, filt_stat, str, str1, filt: string;
  // задаются явно коды фак-тов,состояния,статуса
begin
  if (CheckBox2.Checked = False) and (CheckBox3.Checked = False) and
    (CheckBox5.Checked = False) then
  begin
    showmessage('Выделите хотя бы один факультет!');
    exit;
  end;
  filt_sost := '';
  filt_stat := '';
  str := '';
  str1 := '';
  Name_file := PChar('c:\doc\контингент_студентов.doc');
  if CheckBox7.Checked = True then
  begin
    str := 'Обучается';
    filt_sost := 'spsost=1';
  end; // фильтр для состояния студента
  if CheckBox8.Checked = True then
    if filt_sost <> '' then
    begin
      str := str + ', отчислены';
      filt_sost := filt_sost + ' or spsost=2'
    end
    else
    begin
      str := 'Отчислены';
      filt_sost := 'spsost=2';
    end;
  if CheckBox9.Checked = True then
    if filt_sost <> '' then
    begin
      str := str + ', дипломированы';
      filt_sost := filt_sost + ' or spsost=4'
    end
    else
    begin
      str := 'Дипломированы';
      filt_sost := 'spsost=4';
    end;
  if CheckBox10.Checked = True then
    if filt_sost <> '' then
    begin
      str := str + ', в академ.отпуске';
      filt_sost := filt_sost + ' or spsost=6'
    end
    else
    begin
      str := 'В академ.отпуске';
      filt_sost := 'spsost=6';
    end;

  if CheckBox11.Checked = True then
  begin
    str1 := 'Бюджет';
    filt_stat := 'spstatus=1';
  end; // фильтр для статуса студента
  if CheckBox12.Checked = True then
    if filt_stat <> '' then
    begin
      str1 := str1 + ', контракт';
      filt_stat := filt_stat + ' or spstatus=2'
    end
    else
    begin
      str1 := 'Контракт';
      filt_stat := 'spstatus=2';
    end;
  if CheckBox13.Checked = True then
    if filt_stat <> '' then
    begin
      str1 := str1 + ', за счет РИИ';
      filt_stat := filt_stat + ' or spstatus=3'
    end
    else
    begin
      str1 := 'За счет РИИ';
      filt_stat := 'spstatus=3';
    end;
  if CheckBox14.Checked = True then
    if filt_stat <> '' then
    begin
      str1 := str1 + ', архив';
      filt_stat := filt_stat + ' or spstatus>3'
    end
    else
    begin
      str1 := 'Архив';
      filt_stat := 'spstatus>3';
    end;
  DataModule1.Table_w36.IndexName := 'keyS4Fall';
  if CheckBox1.Checked = True then // включаем в расчет средне-специальное
    DataModule1.Table_w36.Filter := 'priz=' + '''' + '1' + ''''
  else // не включаем в расчет средне-специальное
    DataModule1.Table_w36.Filter := 'spotd<>10 and priz=' + '''' + '1' + '''';
  DataModule1.Table_w36.Filtered := True;
  n1 := DataModule1.Table_w36.RecordCount;
  DataModule1.Table_w36.First;
  j := 0;
  for i := 1 to n1 do
  begin
    if ((CheckBox2.Checked = True) and
      (DataModule1.Table_w36.FieldByName('spfak').AsInteger = 57)) // ГЭФ
      or ((CheckBox3.Checked = True) and
      (DataModule1.Table_w36.FieldByName('spfak').AsInteger = 98)) // ТФ
      or ((CheckBox5.Checked = True) and
      (DataModule1.Table_w36.FieldByName('spfak').AsInteger = 65)) // ФЗФО
    then
    begin
      j := j + 1;
      sp4f[j, 1] := DataModule1.Table_w36.FieldByName('spotd').AsInteger;
      sp4f[j, 2] := DataModule1.Table_w36.FieldByName('spfak').AsInteger;
      sp4f[j, 3] := DataModule1.Table_w36.FieldByName('spspec').AsInteger;
      spec_name[j] := trim(DataModule1.Table_w36.FieldByName('spec').AsString);

    end;
    DataModule1.Table_w36.Next;
  end;
  n1 := j;
  prakt_progress := tprakt_progress.Create(application);
  BitBtn1.Enabled := False;
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n1 * 6) +
    ' записей.';
  application.ProcessMessages;
  prakt_progress.ProgressBar1.Max := 70 + n1 * 6 * 10;
  prakt_progress.ProgressBar1.StepIt; // 1
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\doc\report4.doc'),
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
  prakt_progress.ProgressBar1.StepIt; // 4
  t1.Cell(2, 1).Range.Text := str;
  t1.Cell(3, 1).Range.Text := str1;
  ii := 0;
  for j1 := 1 to 7 do
  begin
    sum_k[j1] := 0;
    sum_all[j1] := 0;
  end;
  for j := 1 to n1 do
  begin // по специальностям
    sum := 0;
    if (j = 2) then // рамку рисуем у шапки
    begin
      t1.Cell(6, 1).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
      t1.Cell(6, 2).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
      t1.Cell(6, 3).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
      t1.Cell(6, 4).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
      t1.Cell(6, 5).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
      t1.Cell(6, 6).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
      t1.Cell(6, 7).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
      t1.Cell(6, 8).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
      t1.Cell(6, 9).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
      t1.Cell(6, 10).borders.Item(wdbordertop).linestyle := wdLineStyleSingle;
    end;
    if ((j > 1) and ((sp4f[j, 1] <> sp4f[j - 1, 1]) or
      (sp4f[j, 2] <> sp4f[j - 1, 2]))) then
    begin
      t1.Cell(j + 5 + ii, 4).Range.Text := inttostr(sum_k[1]);
      t1.Cell(j + 5 + ii, 5).Range.Text := inttostr(sum_k[2]);
      t1.Cell(j + 5 + ii, 6).Range.Text := inttostr(sum_k[3]);
      t1.Cell(j + 5 + ii, 7).Range.Text := inttostr(sum_k[4]);
      t1.Cell(j + 5 + ii, 8).Range.Text := inttostr(sum_k[5]);
      t1.Cell(j + 5 + ii, 9).Range.Text := inttostr(sum_k[6]);
      t1.Cell(j + 5 + ii, 10).Range.Text := inttostr(sum_k[7]);

      for j1 := 1 to 7 do
      begin
        sum_all[j1] := sum_all[j1] + sum_k[j1];
        sum_k[j1] := 0;
      end;
      t1.Rows.Add();
      t1.Rows.Add();
      t1.Cell(j + 5 + ii, 1).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      t1.Cell(j + 5 + ii, 2).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      t1.Cell(j + 5 + ii, 3).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      t1.Cell(j + 5 + ii, 4).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      t1.Cell(j + 5 + ii, 5).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      t1.Cell(j + 5 + ii, 6).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      t1.Cell(j + 5 + ii, 7).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      t1.Cell(j + 5 + ii, 8).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      t1.Cell(j + 5 + ii, 9).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      t1.Cell(j + 5 + ii, 10).borders.Item(wdbordertop).linestyle :=
        wdLineStyleSingle;
      ii := ii + 2;
    end;
    // else ii:=0;
    if (j = 1) or ((j > 1) and ((sp4f[j, 1] <> sp4f[j - 1, 1]) or
      (sp4f[j, 2] <> sp4f[j - 1, 2]))) then
    begin // первая строка
      case sp4f[j, 1] of
        6:
          t1.Cell(j + 5 + ii, 1).Range.Text := 'очная';
        7:
          t1.Cell(j + 5 + ii, 1).Range.Text := 'заочная';
        8:
          t1.Cell(j + 5 + ii, 1).Range.Text := 'заочно-сокращенная';
        10:
          t1.Cell(j + 5 + ii, 1).Range.Text := 'средне специальное';
      end;
      case sp4f[j, 2] of
        57:
          t1.Cell(j + 5 + ii, 2).Range.Text := 'ГЭФ';
        65:
          t1.Cell(j + 5 + ii, 2).Range.Text := 'ФЗФО';
        98:
          t1.Cell(j + 5 + ii, 2).Range.Text := 'ТФ';
      end;
    end;

    t1.Cell(j + 5 + ii, 3).Range.Text := spec_name[j];

    for i := 1 to 6 do
    begin
      prakt_progress.Label1.Caption := 'Обработка ' + inttostr(n1 * 6) +
        ' записей.';
      application.ProcessMessages;
      prakt_progress.ProgressBar1.StepIt;
      filt := 'spfak=' + inttostr(sp4f[j, 2]) + ' and spotd=' +
        inttostr(sp4f[j, 1]) + ' and spspec=' + inttostr(sp4f[j, 3]) +
        ' and kurs=' + inttostr(i);
      if filt_sost <> '' then
        filt := filt + ' and (' + filt_sost + ')';
      if filt_stat <> '' then
        filt := filt + ' and (' + filt_stat + ')';
      DataModule1.Table_w1.Filter := filt;
      DataModule1.Table_w1.Filtered := True;
      k := DataModule1.Table_w1.RecordCount;
      if k <> 0 then
        t1.Cell(j + 5 + ii, 3 + i).Range.Text := inttostr(k)
      else
        t1.Cell(j + 5 + ii, 3 + i).Range.Text := ' ';
      sum := sum + k;
      sum_k[i] := sum_k[i] + k;
    end;
    t1.Cell(j + 5 + ii, 10).Range.Text := inttostr(sum);
    t1.Rows.Add();
    sum_k[7] := sum_k[7] + sum;
    prakt_progress.ProgressBar1.StepIt; // 5
  end;
  t1.Cell(j + 5 + ii, 4).Range.Text := inttostr(sum_k[1]);
  t1.Cell(j + 5 + ii, 5).Range.Text := inttostr(sum_k[2]);
  t1.Cell(j + 5 + ii, 6).Range.Text := inttostr(sum_k[3]);
  t1.Cell(j + 5 + ii, 7).Range.Text := inttostr(sum_k[4]);
  t1.Cell(j + 5 + ii, 8).Range.Text := inttostr(sum_k[5]);
  t1.Cell(j + 5 + ii, 9).Range.Text := inttostr(sum_k[6]);
  t1.Cell(j + 5 + ii, 10).Range.Text := inttostr(sum_k[7]);
  t1.Rows.Add();
  t1.Rows.Add();
  t1.Cell(j + 5 + ii, 1).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 5 + ii, 2).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 5 + ii, 3).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 5 + ii, 4).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 5 + ii, 5).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 5 + ii, 6).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 5 + ii, 7).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 5 + ii, 8).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 5 + ii, 9).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 5 + ii, 10).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  prakt_progress.ProgressBar1.StepIt; // 6
  for j1 := 1 to 7 do
    sum_all[j1] := sum_all[j1] + sum_k[j1]; // подсчет по всему институту
  t1.Cell(j + 7 + ii, 4).Range.Text := inttostr(sum_all[1]);
  t1.Cell(j + 7 + ii, 5).Range.Text := inttostr(sum_all[2]);
  t1.Cell(j + 7 + ii, 6).Range.Text := inttostr(sum_all[3]);
  t1.Cell(j + 7 + ii, 7).Range.Text := inttostr(sum_all[4]);
  t1.Cell(j + 7 + ii, 8).Range.Text := inttostr(sum_all[5]);
  t1.Cell(j + 7 + ii, 9).Range.Text := inttostr(sum_all[6]);
  t1.Cell(j + 7 + ii, 10).Range.Text := inttostr(sum_all[7]);
  t1.Cell(j + 7 + ii, 1).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 7 + ii, 2).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 7 + ii, 3).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 7 + ii, 4).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 7 + ii, 5).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 7 + ii, 6).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 7 + ii, 7).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 7 + ii, 8).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 7 + ii, 9).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  t1.Cell(j + 7 + ii, 10).borders.Item(wdbordertop).linestyle :=
    wdLineStyleSingle;
  prakt_progress.free;

  WordApp.visible := True;
  if WordApp.visible = True then
    NEWDOC.SAVEas(fil);
  if WordApp.visible = False then
    WordApp.Quit;
  WordApp := unassigned;
  BitBtn1.Enabled := True;

end;

end.
