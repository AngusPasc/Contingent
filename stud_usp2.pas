unit stud_usp2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Spin, ComCtrls, DataModule, DateUtils;

type
  Tstud_usp_up = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Rsem: TSpinEdit;
    Rekzzach: TSpinEdit;
    Ritog: TSpinEdit;
    Label7: TLabel;
    Datasd: TDateTimePicker;
    ocenka: TComboBox;
    Label12: TLabel;
    Ocenkaekz: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure RitogExit(Sender: TObject);
    procedure DatasdCloseUp(Sender: TObject);
    procedure RsemExit(Sender: TObject);
    procedure itogoc();
    procedure RekzzachExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_usp_up: Tstud_usp_up;
  mark: integer;
  sd: string;

implementation

uses main1, stud_sess2;
{$R *.dfm}

procedure Tstud_usp_up.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_usp_up.FormActivate(Sender: TObject);
begin
  Edit1.Text := Stud_usp.StringGrid1.Cells[1, Stud_usp.StringGrid1.Row];
  stud_pin := accpin[Stud_usp.StringGrid1.Row];
  Edit2.Text := namedisc;
  Edit3.Text := grup;
  Edit4.Text := inttostr(kurs);
  Edit5.Text := inttostr(sem);
  Edit6.Text := namekont;
  Rsem.Value := strtoint(Stud_usp.StringGrid1.Cells[2,
    Stud_usp.StringGrid1.Row]);
  if Stud_usp.StringGrid1.Cells[3, Stud_usp.StringGrid1.Row] = 'н/я' then
  begin
    Rekzzach.Value := 0;
    Ocenkaekz.Text := 'неявка'
  end
  else
  begin
    Rekzzach.Value := strtoint(Stud_usp.StringGrid1.Cells[3,
      Stud_usp.StringGrid1.Row]);
    if kont = 1 then
    begin // экзамен
      if Rekzzach.Value < 25 then
        Ocenkaekz.Text := 'неудовлетворительно'
      else
      begin
        if Rekzzach.Value < 50 then
          Ocenkaekz.Text := 'удовлетворительно'
        else
        begin
          if Rekzzach.Value < 75 then
            Ocenkaekz.Text := 'хорошо'
          else
            Ocenkaekz.Text := 'отлично';
        end
      end
    end
    else
    begin
      if Rekzzach.Value < 25 then
        Ocenkaekz.Text := 'незачтено'
      else
        Ocenkaekz.Text := 'зачтено';
    end;
  end;
  Ritog.Value := strtoint(Stud_usp.StringGrid1.Cells[4,
    Stud_usp.StringGrid1.Row]);
  ocenka.Text := Stud_usp.StringGrid1.Cells[5, Stud_usp.StringGrid1.Row];
  if kont = 1 then // экзамен
  begin
    ocenka.Items.Add('отлично');
    ocenka.Items.Add('хорошо');
    ocenka.Items.Add('удовлетворительно');
    ocenka.Items.Add('неудовлетворительно');
    ocenka.Items.Add('неявка');

    Ocenkaekz.Items.Add('отлично');
    Ocenkaekz.Items.Add('хорошо');
    Ocenkaekz.Items.Add('удовлетворительно');
    Ocenkaekz.Items.Add('неудовлетворительно');
    Ocenkaekz.Items.Add('неявка');
  end
  else
  begin
    ocenka.Items.Add('зачтено');
    ocenka.Items.Add('незачтено');
    ocenka.Items.Add('неявка');
    Ocenkaekz.Items.Add('зачтено');
    Ocenkaekz.Items.Add('незачтено');
    Ocenkaekz.Items.Add('неявка');

  end;
  // расчетный итоговый рейтинг
  if ((Rsem.Value >= 75) and (kont = 1)) or ((Rsem.Value >= 50) and (kont <> 1))
  then
    Label11.Caption := 'Итоговый рейтинг ( ' + inttostr(Rsem.Value) + ' )'
  else
  begin
    if Rekzzach.Value < 25 then
      Label11.Caption := 'Итоговый рейтинг ( ' + inttostr(Rekzzach.Value) + ' )'
    else
      Label11.Caption := 'Итоговый рейтинг ( ' +
        inttostr(round((1 - ves) * Rsem.Value + ves * Rekzzach.Value)) + ' )';
  end;

  if (act = 1) then // первичный ввод
  begin
    Datasd.Date := ddata;
    Datasd.Enabled := False;
    sd := datetostr(Datasd.Date);
    Rsem.SetFocus;
  end;
  if (act = 2) then // редактирование в тот же день
  begin
    Datasd.Date := Date;
    Datasd.Enabled := False;
    sd := datetostr(Datasd.Date);
    Rsem.SetFocus;
  end;
  if (act = 3) then // пересдача
  begin
    Rsem.Hide;
    Datasd.Date := Date;
    sd := datetostr(Datasd.Date);
  end;

end;

procedure Tstud_usp_up.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Stud_usp.Enabled := True;
  Stud_usp.StringGrid1.SetFocus;
end;

procedure Tstud_usp_up.BitBtn1Click(Sender: TObject);
var
  s1, s2, s3, vv: string;
  ot: integer;
begin
  if trim(Edit3.Text) <> '' then // формируется дата ввода
    vv := '''' + inttostr(yearof(Date)) + '-' + inttostr(monthof(Date)) + '-' +
      inttostr(dayof(Date)) + ''''
  else
    vv := 'Null';
  if sd <> '' then // формируется дата сдачи
    sd := '''' + inttostr(yearof(Datasd.Date)) + '-' +
      inttostr(monthof(Datasd.Date)) + '-' + inttostr(dayof(Datasd.Date)) + ''''
  else
    sd := 'Null';

  Stud_usp.StringGrid1.Cells[2, Stud_usp.StringGrid1.Row] :=
    inttostr(Rsem.Value);

  Stud_usp.StringGrid1.Cells[4, Stud_usp.StringGrid1.Row] :=
    inttostr(Ritog.Value);
  Stud_usp.StringGrid1.Cells[5, Stud_usp.StringGrid1.Row] := ocenka.Text;

  if Ocenkaekz.Text = 'неявка' then
  begin
    ot := -1; // для неявки на экзамен и зачет
    Stud_usp.StringGrid1.Cells[3, Stud_usp.StringGrid1.Row] := 'н/я'
  end
  else
  begin
    ot := Rekzzach.Value;
    Stud_usp.StringGrid1.Cells[3, Stud_usp.StringGrid1.Row] :=
      inttostr(Rekzzach.Value);
  end;

  if act = 1 then // первичный ввод результатов
  begin
    if not DataModule1.Table_w12.FindKey([stud_pin, disc, kont]) then
    // если до этого не было внесено результатов
    begin
      s1 := 'insert  into uchsucs (acc,marks,uchsessia,spkontr,rsem,rekzzach,ritog,datavv,datazp,priz)';
      s2 := ' values (' + inttostr(stud_pin) + ',' + inttostr(mark) + ',' +
        inttostr(disc) + ',' + inttostr(kont) + ',';
      s3 := inttostr(Rsem.Value) + ',' + inttostr(ot) + ',' +
        inttostr(Ritog.Value) + ',' + sd + ',' + vv + ',' + '''' + '1' +
        '''' + ')';
    end
    else
    begin
      s1 := 'update  uchsucs set marks=' + inttostr(mark) + ',rsem=' +
        inttostr(Rsem.Value) + ',rekzzach=' + inttostr(ot);
      s2 := ',ritog=' + inttostr(Ritog.Value) + ',datavv=' + sd +
        ',datazp=' + vv;
      s3 := ' where acc=' + inttostr(stud_pin) + ' and uchsessia=' +
        inttostr(disc) + ' and spkontr=' + inttostr(kont);
    end;
    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add(s1 + s2 + s3);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w12.Refresh;

    s1 := 'insert  into hissessia (acc,uchsessia,spkontr,ball,datesd)';
    s2 := ' values (' + inttostr(stud_pin) + ',' + inttostr(disc) + ',' +
      inttostr(kont) + ',';
    s3 := inttostr(ot) + ',' + sd + ')';
    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add(s1 + s2 + s3);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w12h.Refresh;
  end;

  if (act = 2) then // редактирование в тот же день
  begin
    if not DataModule1.Table_w12.FindKey([stud_pin, disc, kont]) then
    // если до этого не было внесено результатов
    begin
      s1 := 'insert  into uchsucs (acc,marks,uchsessia,spkontr,rsem,rekzzach,ritog,datavv,datazp,priz)';
      s2 := ' values (' + inttostr(stud_pin) + ',' + inttostr(mark) + ',' +
        inttostr(disc) + ',' + inttostr(kont) + ',';
      s3 := inttostr(Rsem.Value) + ',' + inttostr(ot) + ',' +
        inttostr(Ritog.Value) + ',' + sd + ',' + vv + ',' + '''' + '1' +
        '''' + ')';
    end
    else
    begin
      s1 := 'update  uchsucs set marks=' + inttostr(mark) + ',rsem=' +
        inttostr(Rsem.Value) + ',rekzzach=' + inttostr(ot);
      s2 := ',ritog=' + inttostr(Ritog.Value) + ',datavv=' + sd +
        ',datazp=' + vv;
      s3 := ' where acc=' + inttostr(stud_pin) + ' and uchsessia=' +
        inttostr(disc) + ' and spkontr=' + inttostr(kont);
    end;
    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add(s1 + s2 + s3);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w12.Refresh;

    s1 := 'update  hissessia set  ball=' + inttostr(ot) + ',datesd=' + sd;
    s2 := ' where acc=' + inttostr(stud_pin) + ' and uchsessia=' +
      inttostr(disc) + ' and spkontr=' + inttostr(kont);
    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add(s1 + s2);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w12h.Refresh;
  end;
  if act = 3 then // пересдача
  begin
    if not DataModule1.Table_w12.FindKey([stud_pin, disc, kont]) then
    // если до этого не было внесено результатов
    begin
      s1 := 'insert  into uchsucs (acc,marks,uchsessia,spkontr,rsem,rekzzach,ritog,datavv,datazp,priz)';
      s2 := ' values (' + inttostr(stud_pin) + ',' + inttostr(mark) + ',' +
        inttostr(disc) + ',' + inttostr(kont) + ',';
      s3 := inttostr(Rsem.Value) + ',' + inttostr(ot) + ',' +
        inttostr(Ritog.Value) + ',' + sd + ',' + vv + ',' + '''' + '1' +
        '''' + ')';
    end
    else
    begin
      s1 := 'update  uchsucs set marks=' + inttostr(mark) + ',rsem=' +
        inttostr(Rsem.Value) + ',rekzzach=' + inttostr(ot);
      s2 := ',ritog=' + inttostr(Ritog.Value) + ',datavv=' + sd +
        ',datazp=' + vv;
      s3 := ' where acc=' + inttostr(stud_pin) + ' and uchsessia=' +
        inttostr(disc) + ' and spkontr=' + inttostr(kont);
    end;
    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add(s1 + s2 + s3);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w12.Refresh;

    s1 := 'insert  into hissessia (acc,uchsessia,spkontr,ball,datesd)';
    s2 := ' values (' + inttostr(stud_pin) + ',' + inttostr(disc) + ',' +
      inttostr(kont) + ',';
    s3 := inttostr(ot) + ',' + sd + ')';
    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add(s1 + s2 + s3);
    DataModule1.Query1.ExecSQL;
    DataModule1.Table_w12h.Refresh;
  end;
  datavv[Stud_usp.StringGrid1.Row] := 0;
  close;
end;

procedure Tstud_usp_up.RitogExit(Sender: TObject);
begin
  itogoc();
  ocenka.SetFocus;
end;

procedure Tstud_usp_up.itogoc;
begin
  if kont = 1 then
  begin
    if Rekzzach.Value < 25 then
    begin
      ocenka.Text := 'неудовлетворительно';
      mark := 2;
    end
    else if Rekzzach.Value < 50 then
    begin
      Ocenkaekz.Text := 'удовлетворительно';
      mark := 3;
    end
    else if Rekzzach.Value < 75 then
    begin
      Ocenkaekz.Text := 'хорошо';
      mark := 4;
    end
    else
    begin
      Ocenkaekz.Text := 'отлично';
      mark := 5;
    end;
    if Ritog.Value < 25 then
    begin
      ocenka.Text := 'неудовлетворительно';
      mark := 2;
    end
    else if Ritog.Value < 50 then
    begin
      ocenka.Text := 'удовлетворительно';
      mark := 3;
    end
    else if Ritog.Value < 75 then
    begin
      ocenka.Text := 'хорошо';
      mark := 4;
    end
    else
    begin
      ocenka.Text := 'отлично';
      mark := 5;
    end;
  end
  else
  begin
    if Rekzzach.Value < 25 then
    begin
      Ocenkaekz.Text := 'незачтено';
      mark := 2;
    end
    else
    begin
      Ocenkaekz.Text := 'зачтено';
      mark := 5;
    end;
    if Ritog.Value < 25 then
    begin
      ocenka.Text := 'незачтено';
      mark := 2;
    end
    else
    begin
      ocenka.Text := 'зачтено';
      mark := 5;
    end;
  end;
  // ocenka.SetFocus;
end;

procedure Tstud_usp_up.DatasdCloseUp(Sender: TObject);
begin
  sd := datetostr(Datasd.Date);
end;

procedure Tstud_usp_up.RsemExit(Sender: TObject);
begin
  if ((Rsem.Value >= 75) and (kont = 1)) or ((Rsem.Value >= 50) and (kont <> 1))
  then
    Label11.Caption := 'Итоговый рейтинг ( ' + inttostr(Rsem.Value) + ' )'
  else
  begin
    if Rekzzach.Value < 25 then
      Label11.Caption := 'Итоговый рейтинг ( ' + inttostr(Rekzzach.Value) + ' )'
    else
      Label11.Caption := 'Итоговый рейтинг ( ' +
        inttostr(round((1 - ves) * Rsem.Value + ves * Rekzzach.Value)) + ' )';
  end;
  itogoc();
  Rekzzach.SetFocus;
end;

procedure Tstud_usp_up.RekzzachExit(Sender: TObject);
begin
  if ((Rsem.Value >= 75) and (kont = 1)) or ((Rsem.Value >= 50) and (kont <> 1))
  then
    Label11.Caption := 'Итоговый рейтинг ( ' + inttostr(Rsem.Value) + ' )'
  else
  begin
    if Rekzzach.Value < 25 then
      Label11.Caption := 'Итоговый рейтинг ( ' + inttostr(Rekzzach.Value) + ' )'
    else
      Label11.Caption := 'Итоговый рейтинг ( ' +
        inttostr(round((1 - ves) * Rsem.Value + ves * Rekzzach.Value)) + ' )';
  end;
  itogoc();

end;

end.
