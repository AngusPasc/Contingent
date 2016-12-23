unit stud_usp4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Spin, ComCtrls, DataModule, DateUtils,
  OleServer,
  ComObj, ExcelXP;

type
  Tusp_import = class(TForm)
    OpenDialog1: TOpenDialog;
    Label9: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
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
  usp_import: Tusp_import;

implementation

uses main1, stud_sess2;
{$R *.dfm}

procedure Tusp_import.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit1.Text := OpenDialog1.FileName;
    // DataModule1.Table2.DatabaseName:=ExtractFilePath(Edit1.Text);
    // DataModule1.Table2.TableName:=ExtractFileName(Edit1.Text);
    try
      // DataModule1.Table2.Active:=true;
      MessageDlg('Таблица подключена', mtInformation, [mbOk], 0);
    except
      // DataModule1.Table2.Active:=false;
      MessageDlg('При подключении таблицы произошла ошибка', mtInformation,
        [mbOk], 0);
    end;
  end;
end;

procedure Tusp_import.FormActivate(Sender: TObject);
begin
  DataModule1.shablreit.Open;
  // DataModule1.Table_w1.IndexName:='idxaccfam';
  DataModule1.Table_w10.Open;
  DataModule1.Table_w10.IndexName := 'grupsem';
  DataModule1.Table_w11.Open;
  DataModule1.Table_w12.Open;
  DataModule1.Table_w12.IndexName := 'accsesskont';
  DataModule1.Table_w37.Open;
  DataModule1.Table_w37.IndexName := 'PRIMARY';
  DataModule1.Table22.Open;
  DataModule1.Table22.IndexName := 'cod';
end;

procedure Tusp_import.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.shablreit.Close;
  DataModule1.Table_w10.Close;
  DataModule1.Table_w11.Close;
  DataModule1.Table_w12.Close;
  DataModule1.Table_w37.Close;
  DataModule1.Table22.Close;
  stud_usp.Enabled := True;
end;

procedure Tusp_import.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tusp_import.BitBtn1Click(Sender: TObject);
var
  Filen: OleVariant;
  Sh1, E: Variant;
  nom, str, ss1, ss2, fam, name, dvv, rsem, rez, rit, dsd: string;
  N, gr, fo, spec, ngr, sem, kurs, godpr, p, sess, goduch, m: integer;
  prep, i, k, j, uchsess, acc, ir, ii, otm: integer;
begin
  Filen := Edit1.Text;
  E := CreateOleObject('Excel.Application');
  E.Workbooks.add(Filen);
  E.Workbooks[1].WorkSheets[1].Activate;
  Sh1 := E.Workbooks[1].WorkSheets[1];
  // nom:=Sh1.Cells[1,1]; //считываем номер шаблона
  // if nom =''
  // then
  // begin
  str := Sh1.Cells[8, 1];
  if pos('Рубежная', str) <> 0 then // аттестация
  begin
    ss1 := Sh1.Cells[12, 1];
    j := strtoint(copy(ss1, pos('$', ss1) + 1, length(ss1) - pos('$', ss1)));
    for ii := 1 to stud_usp.StringGrid1.RowCount - 1 do
    begin
      acc := accpin[ii]; // pin студента из экрана stringrid
      for ir := 15 to 55 do // поиск  студента по фио в шаблоне
      begin
        if trim(stud_usp.StringGrid1.Cells[1, ii]) = trim(Sh1.Cells[ir, 2]) then
        begin
          rsem := Sh1.Cells[ir, j - 2];
          break;
        end;
      end;
      if ir <> 56 then
      begin // в шаблоне нашли
        stud_usp.StringGrid1.Cells[2, ii] := rsem; // на экране рейтнг семестр
        if Sh1.Cells[ir, j + 1] <> 'н/а' then
          otm := strtoint(Sh1.Cells[ir, j + 1])
        else
          otm := 0;
        case otm of
          5:
            stud_usp.StringGrid1.Cells[5, ii] := 'отлично'; // на экране оценка
          4:
            stud_usp.StringGrid1.Cells[5, ii] := 'хорошо';
          3:
            stud_usp.StringGrid1.Cells[5, ii] := 'удовлетв.'
        else
          stud_usp.StringGrid1.Cells[5, ii] := 'неудовлетв.';
        end;
        dvv := '''' + inttostr(yearof(date)) + '-' + inttostr(monthof(date)) +
          '-' + inttostr(dayof(date)) + '''';
        dsd := '''' + inttostr(yearof(ddata)) + '-' + inttostr(monthof(ddata)) +
          '-' + inttostr(dayof(ddata)) + '''';
        if not DataModule1.Table_w12.FindKey([acc, disc, kont]) then
        begin // поиск уже существующей записи
          // добавление
          ss1 := 'insert  into uchsucs (acc,uchsessia,rsem,datavv,datazp)';
          ss2 := ' values (' + inttostr(acc) + ',' + inttostr(disc) + ',' + rsem
            + ',' + dsd + ',' + dvv + ' )';
        end
        else
        begin
          // изменение
          ss1 := 'update  uchsucs set rsem=' + rsem;
          ss2 := ' where acc=' + inttostr(acc) + ' and uchsessia=' +
            inttostr(disc);
        end;
        DataModule1.Query1.SQL.Clear;
        DataModule1.Query1.SQL.add(ss1 + ss2);
        DataModule1.Query1.ExecSQL;
        DataModule1.Table_w12.Refresh;
      end;
    end
  end
  else // итоговая - сессия
  begin
    ss1 := Sh1.Cells[12, 1];
    j := strtoint(copy(ss1, pos('$', ss1) + 1, length(ss1) - pos('$', ss1)));
    for ii := 1 to stud_usp.StringGrid1.RowCount - 1 do
    begin
      acc := accpin[ii]; // pin студента из экрана stringrid
      for ir := 15 to 55 do // поиск  студента по фио в шаблоне
      begin
        if trim(stud_usp.StringGrid1.Cells[1, ii]) = trim(Sh1.Cells[ir, 2]) then
        begin
          rsem := Sh1.Cells[ir, j - 2];
          rez := Sh1.Cells[ir, j - 1];
          rit := Sh1.Cells[ir, j];
          break;
        end;
      end;
      if ir <> 56 then
      begin // в шаблоне нашли
        stud_usp.StringGrid1.Cells[2, ii] := rsem; // на экране рейтнг семестр
        stud_usp.StringGrid1.Cells[3, ii] := rez; // на экране рейтнг семестр
        stud_usp.StringGrid1.Cells[4, ii] := rit; // на экране рейтнг семестр
        if (rez = 'н/я') or (rez = 'неявка') or (rez = 'н.я') then
        begin
          stud_usp.StringGrid1.Cells[5, ii] := 'неявка';
          otm := -1;
          rez := '0';
        end
        else
        begin
          stud_usp.StringGrid1.Cells[5, ii] := Sh1.Cells[ir, j + 1];
          if kont = 1 then
          begin // экзамен
            if strtoint(rit) < 25 then
              otm := 2
            else if strtoint(rit) < 50 then
              otm := 3
            else if strtoint(rit) < 75 then
              otm := 4
            else
              otm := 5;
            case otm of
              5:
                stud_usp.StringGrid1.Cells[5, ii] := 'отлично';
                // на экране оценка
              4:
                stud_usp.StringGrid1.Cells[5, ii] := 'хорошо';
              3:
                stud_usp.StringGrid1.Cells[5, ii] := 'удовлетв.'
            else
              stud_usp.StringGrid1.Cells[5, ii] := 'неудовлетв.';
            end;
          end
          else
          begin
            if strtoint(rit) < 25 then
            begin
              stud_usp.StringGrid1.Cells[5, ii] := 'незачтено';
              otm := 2;
            end
            else
            begin
              stud_usp.StringGrid1.Cells[5, ii] := 'зачтено';
              otm := 5;
            end;
          end;
        end;
        dvv := '''' + inttostr(yearof(date)) + '-' + inttostr(monthof(date)) +
          '-' + inttostr(dayof(date)) + '''';
        dsd := '''' + inttostr(yearof(ddata)) + '-' + inttostr(monthof(ddata)) +
          '-' + inttostr(dayof(ddata)) + '''';

        if not DataModule1.Table_w12.FindKey([acc, disc, kont]) then
        begin // поиск уже существующей записи
          // добавление
          ss1 := 'insert  into uchsucs (acc,uchsessia,spkontr,rsem,datavv,datazp,rekzzach,ritog,marks,priz)';
          ss2 := ' values (' + inttostr(acc) + ',' + inttostr(disc) + ',' +
            inttostr(kont) + ',' + rsem + ',' + dsd + ',' + dvv + ',' + rez +
            ',' + rit + ',' + inttostr(otm) + ',' + '''' + '1' + '''' + ' )';
        end
        else
        begin
          // изменение
          ss1 := 'update  uchsucs set rsem=' + rsem + ', rekzzach=' + rez +
            ', ritog=' + rit + ', marks=' + inttostr(otm);;
          ss2 := ' where acc=' + inttostr(acc) + ' and uchsessia=' +
            inttostr(disc);
        end;
        DataModule1.Query1.SQL.Clear;
        DataModule1.Query1.SQL.add(ss1 + ss2);
        DataModule1.Query1.ExecSQL;
        DataModule1.Table_w12.Refresh;
      end;
    end;
  end;
  E.Workbooks[1].Close(True, Filen, emptyparam);
  Close;
end;

end.
