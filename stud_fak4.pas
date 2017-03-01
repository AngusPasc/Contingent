{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit stud_fak4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DataModule, OleServer,
  DateUtils, Word2000, ComObj, WordXP;

type
  Tsprav_acc = class(TForm)
    DBGrid1: TDBGrid;
    Button3: TButton;
    Button1: TButton;
    Label29: TLabel;
    Edit1: TEdit;
    Label30: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    newdoc: TWordDocument;
    WordApp: TWordApplication;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    procedure FormatDocument();
  public
    { Public declarations }
  end;

var
  sprav_acc: Tsprav_acc;

implementation

uses main1, stud_fak1, stud_acc1, prakt_progress1, DBTables, uDeaneryTools;
{$R *.dfm}

procedure Tsprav_acc.FormActivate(Sender: TObject);
begin
  DataModule1.Table_w6.Open;
  DataModule1.Table_w2.Open;
  DataModule1.Table_w6.Indexname := 'idxmovacc';
  DataModule1.Table_w6.Filter := 'acc=' + inttostr(stud_pin);
  DataModule1.Table_w6.Filtered := True;
  DataModule1.Table_p4.Open;
  DataModule1.Table_w36.Open;
  // DataModule1.Table_w36.Indexname:='KeyS4Fall';
  DataModule1.Table_w36.Filter := 'spotd=' + DataModule1.Table_w1.fieldbyname
    ('spotd').asstring + ' and spfak=' + DataModule1.Table_w1.fieldbyname
    ('spfak').asstring + ' and spspec=' + DataModule1.Table_w1.fieldbyname
    ('spspec').asstring;
  DataModule1.Table_w36.Filtered := True;
  Edit1.text := stud_fio;
  Edit2.text := stud_gr;
  if sp = 11 then
  Begin
    Button3.Visible := false;
    Button2.Visible := True;
  end
  else
  begin
    Button3.Visible := True;
    Button2.Visible := false;

  end;
end;

procedure Tsprav_acc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_p4.Close;
  DataModule1.Table_w6.Filtered := false;
  if (sp = 10) or (sp = 11) // ����� ��������� �� ������ ���������
  then
  begin
    stud_acc.Enabled := True;
    sp := 0
  end
  else
  begin
    stud_fak.Enabled := True;
    sp := 0;
  end;
end;

procedure Tsprav_acc.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tsprav_acc.Button3Click(Sender: TObject);
var
  WordApp, newdoc: OLEVariant;
  t1: OLEVariant;
  Name_file: PChar;
  fil: OLEVariant;
  n, r, o, f, spec: integer;
  k: real;
  s1, s2, s3, s4, df2, dd, mm: string;
  df1: char;
  vdd: Tdatetime;
  rezult: TModalResult;
  rez1, rez: integer;
  /// //////////
  Templ, d, dd1, ddd, what, which: OLEVariant;
  name: OLEVariant;
  gn, gk: string;
  educationStart: Extended;
  QueryStr: string;
  GroupID: integer;
  EduStart: string;
  educationEnd: Extended;
  specCode: integer;
  k1: double;
  year: Word;
  ms, den, ms1, den1, god, god1: string;
  sob: integer;
  pr18: OLEVariant;
  pr181: integer;
  Shape, Find: OLEVariant;
  j, kol: byte;
  Query: TQuery;
  i: Word;
  /// ////////////
begin
  rez1 := 0;
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
  begin
    rezult := MessageDlg('������� � �������� �������?', mtInformation,
      [mbYes, mbNo], 0);
    if rezult = mrYes then
      rez1 := 1;
    if rezult = mrNo then
    begin
      rez1 := 0;
    end;
    rez := 1;
  end;
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
    rez := 1;
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
    rez := 0;

  // df1:= //DateSeparator;
  // df2:= //ShortDateFormat;
  // DateSeparator:='.';
  // ShortDateFormat:='dd.mm.yyyy';
  Name_file := PChar('c:\doc\�������.doc');
  prakt_progress := tprakt_progress.Create(application);
  Repaint;
  fil := string(Name_file);
  prakt_progress.show;
  prakt_progress.Label1.Caption := '���������  ������.';
  application.ProcessMessages;

  prakt_progress.ProgressBar1.Max := 70 + n * 10;

  prakt_progress.ProgressBar1.StepIt; // 1
  case sp of
    11: // ����������� �������
      CopyFile(PChar(ExtractFilePath(application.ExeName) +
        '\doc\spravka16.doc'), Name_file, false);
    66: // ����
      CopyFile(PChar(ExtractFilePath(application.ExeName) +
        '\doc\spravka14.doc'), Name_file, false);
  else
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    begin
      CopyFile(PChar(ExtractFilePath(application.ExeName) +
        '\doc\spravka11.doc'), Name_file, false);
    end
    else
    begin
      if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
        // CopyFile(PChar(ExtractFilePath(Application.ExeName)+'\doc\spravka981.doc'),Name_file,false) else
        CopyFile(PChar(ExtractFilePath(application.ExeName) +
          '\doc\spravka11_1.doc'), Name_file, false)
      else
        CopyFile(PChar(ExtractFilePath(application.ExeName) +
          '\doc\spravka11_1.doc'), Name_file, false);
    end;
  end;
  prakt_progress.ProgressBar1.StepIt; // 2
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word �� ��������.';
      raise;
    end;
  end;
  case DataModule1.Table_w1.fieldbyname('spfak').asinteger of
    98:
      fak_name := '�����������';
    57:
      fak_name := '�����������-�������������';
  end;
  prakt_progress.ProgressBar1.StepIt; // 3
  newdoc := WordApp.Documents.Open(string(Name_file));
  t1 := newdoc.Tables.Item(1);
  prakt_progress.ProgressBar1.StepIt; // 4
  if sp <> 11 then
  begin
    DataModule1.Table_p4.Open;

    /// /////////////////////////�������� ������ ��� ���������
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    begin
      t1.Cell(2, 1).Range.text := '� ' + DataModule1.Table_p4.fieldbyname
        ('nomlits').asstring + ' �� ' + DataModule1.Table_p4.fieldbyname
        ('datelits').asstring + '�.';
      t1.Cell(3, 2).Range.text := '� ' + DataModule1.Table_p4.fieldbyname
        ('nomakkr').asstring + ' �� ' + DataModule1.Table_p4.fieldbyname
        ('dateakkr').asstring + '�.';
      n := monthof(Date);
      if dayof(Date) < 10 then
        t1.Cell(5, 2).Range.text := '0' + inttostr(dayof(Date)) + ' ' +
          namemonth[n] + ' ' + inttostr(yearof(Date)) + '�.'
      else
        t1.Cell(5, 2).Range.text := inttostr(dayof(Date)) + ' ' + namemonth[n] +
          ' ' + inttostr(yearof(Date)) + '�.';

      if (n = 1) or (n > 6) then
      begin
        r := 1;
        if n <> 1 then
          t1.Cell(8, 2).Range.text := '01 ������� ' +
            inttostr(yearof(Date) + 1) + '�.'
        else
          t1.Cell(8, 2).Range.text := '01 ������� ' +
            inttostr(yearof(Date)) + '�.'
      end
      else // 2 ���������
      begin
        r := 0;
        t1.Cell(8, 2).Range.text := '01 ���� ' + inttostr(yearof(Date)) + '�.';
      end;
      t1.Cell(9, 2).Range.text := DataModule1.Table_w1.fieldbyname('fam')
        .asstring + ' ' + DataModule1.Table_w1.fieldbyname('name').asstring +
        ' ' + DataModule1.Table_w1.fieldbyname('vname').asstring;
      if DataModule1.Table_w1.fieldbyname('sl').asinteger = 1 then
        s1 := '� ���, ��� ��(�) �������� ���������� ' +
          DataModule1.Table_w1.fieldbyname('kurs').asstring + ' ����� '
      else
        s1 := '� ���, ��� ��(�) �������� ��������� ' +
          DataModule1.Table_w1.fieldbyname('kurs').asstring + ' ����� ';

      o := DataModule1.Table_w1.fieldbyname('spotd').asinteger;
      f := DataModule1.Table_w1.fieldbyname('spfak').asinteger;
      spec := DataModule1.Table_w1.fieldbyname('spspec').asinteger;
      if not DataModule1.Table_w36.FindKey([f, o, spec]) then
        showmessage('����������� ������� �������������!!!!!')
      else
        k := DataModule1.Table_w36.fieldbyname('period').AsFloat;

      if (k > 1) and (k < 2) then
        k := 2;
      if (k > 2) and (k < 3) then
        k := 3;
      case DataModule1.Table_w1.fieldbyname('spfak').asinteger of
        57, 98:
          if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 10 then
          // ������-�����������
          begin
            s2 := copy(fak_name, 1, length(fak_name) - 2) + '���' +
              ' ���������� ����� ����� ��������';
            s3 := '1 ��� 10 �������'; { s4:='��������'; }
          end
          else // ������
          begin
            s2 := copy(fak_name, 1, length(fak_name) - 2) + '���' +
              ' ���������� ����� ����� ��������';
            if k = 5 then
              s3 := '5 ���'
            else
              s3 := '4 ����'; { s4:='��������'; }
          end;
        65:
          begin
            if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 7 then
            // ��������
            begin
              s2 := '���������� ������� ����� ��������';
              if k = 5 then
                s3 := '5 ���'
              else
                s3 := '6 ���';
              s4 := '';
            end;
            if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 8 then
            // ������������                                                //����������
            begin
              s2 := '���������� ������� ����� � ����������� ������ ��������';
              s3 := '3,5 ����';
              s4 := '';
            end;
            if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 10 then
            // �������� ����
            begin
              s2 := ' ���������� ' + fak_name + ' ������� ����� ��������';
              s3 := '2 ���� 10 �������';
              s4 := '';
            end
          end;
      end;
      t1.Cell(10, 1).Range.text := s1 + s2;
      t1.Cell(11 + rez, 2).Range.text := s3;
      t1.Cell(12 + rez, 2).Range.text := DataModule1.Table_w6.fieldbyname
        ('mvnum').asstring + ' �� ' + DataModule1.Table_w6.fieldbyname('mvdate')
        .asstring + '�.';
      t1.Cell(13 + rez, 2).Range.text := '01.09.' +
        inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
        .AsDateTime)) + '�.';
      if dayof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime) < 10 then
        dd := '0' + inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvfakt')
          .AsDateTime))
      else
        dd := inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvfakt')
          .AsDateTime));
      if monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime) < 10
      then
        mm := '0' + inttostr(monthof(DataModule1.Table_w6.fieldbyname('mvfakt')
          .AsDateTime))
      else
        mm := inttostr(monthof(DataModule1.Table_w6.fieldbyname('mvfakt')
          .AsDateTime));

      t1.Cell(13 + rez, 2).Range.text := dd + '.' + mm + '.' +
        inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvfakt')
        .AsDateTime)) + '�.';

      if (k > 3) and (k < 4) then
      begin
        if monthof(Date) = 1 then
          r := 0;
        vdd := strtodatetime('01.03.' + inttostr(yearof(Date) +
          (4 - DataModule1.Table_w1.fieldbyname('kurs').asinteger) + r)) - 1;
        // t1.Cell(13,4).Range.Text:='31.01.'+inttostr(yearof(date)+(4-DataModule1.Table_w1.fieldbyname('kurs').AsInteger)+r)+'�.'
        t1.Cell(13 + rez, 4).Range.text := inttostr(dayof(vdd)) + '.02.' +
          inttostr(yearof(vdd)) + '�.';
      end
      else
      begin
        // if (n>0) and (n<9) then
        if (n > 0) and (n < 8) then
          // if monthof(date)>1 then
          t1.Cell(13 + rez, 4).Range.text := '31.08.' +
            floattostr((yearof(Date))) { -1 }
          // )+(int(k)-DataModule1.Table_w1.fieldbyname('kurs').AsInteger))+'�.' //else
          // t1.Cell(13,4).Range.Text:='30.06.'+floattostr((yearof(date){-1})+(int(k)-DataModule1.Table_w1.fieldbyname('kurs').AsInteger)+1)+'�.'
        else
        /// /
        begin
          // if monthof(date)>1 then
          // t1.Cell(13,4).Range.Text:='30.06.'+floattostr(yearof(date)+(int(k)-DataModule1.Table_w1.fieldbyname('kurs').AsInteger))+'�.' else
          /// //
          t1.Cell(13 + rez, 4).Range.text := '31.08.' +
            floattostr(yearof(Date) + (int(k) - DataModule1.Table_w1.fieldbyname
            ('kurs').asinteger) + 1) + '�.'
          /// ////////
        end;
        /// ////////
      end;
    end;
    /// /////////////////////////�������� ������ ��� ���������

    /// ////////////////////////////////���������� ����� ����� �������
    d := wdFindStop; // �����
    dd1 := wdReplaceall; // ������
    Templ := '#fam#'; // ����� ������� ������
    ddd := DataModule1.Table_w1.fieldbyname('fam').asstring + ' ' +
      DataModule1.Table_w1.fieldbyname('name').asstring + ' ' +
      DataModule1.Table_w1.fieldbyname('vname').asstring; // �������
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#fm#'; // ����� ������� ������
    ddd := DataModule1.Table_w1fio.asstring; // �������
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#kurs#';
    ddd := DataModule1.Table_w1kurs.asstring;
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add('select *  from acckadr where acc=' +
      DataModule1.Table_w1.fieldbyname('pin').asstring);
    DataModule1.Query1.Open;

    Templ := '#datr#'; // ����� ������� ������
    ddd := DataModule1.Query1.fieldbyname('dat_ro').asstring + ' �.�.';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#group_name#';
    i := DataModule1.Table_w1.fieldbyname('spgrup').asinteger;
    GroupID := i;
    Query := TQuery.Create(nil);
    Query.DatabaseName := 'Database2';
    Query.SQL.text := 'select name from spgrup where pin=:groupCode';
    Query.Prepare;
    Query.Params.ParamByName('GroupCode').Value := i;
    Query.Open;
    if Query.Active and (Query.RecordCount > 0) then
      ddd := Query.Fields[0].asstring
    else
      ddd := '----';
    Query.Free;
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#form#'; // ����� ������� ������

    if DataModule1.Table_w1.fieldbyname('spotd').asstring = '6' then
      ddd := '����� ';
    if DataModule1.Table_w1.fieldbyname('spotd').asstring = '7' then
      ddd := '������� '; // �������
    if DataModule1.Table_w1.fieldbyname('spotd').asstring = '8' then
      ddd := '����������� ��������� ������� '; // �������
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#fakw#'; // ����� ������� ������
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
      ddd := '������������';
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
      ddd := '�����������-��������������';
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
      ddd := '������� ����� ��������';
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '33' then
      ddd := ' ��������������� ����������';
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '36' then
      ddd := ' �������-����������� ����������';
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '37' then
      ddd := ' ������������������ ����������';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#spec#'; // ����� ������� ������
    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add('select *  from spspec where pin=' +
      DataModule1.Table_w1.fieldbyname('spspec').asstring);
    DataModule1.Query1.Open;
    if DataModule1.Query1.RecordCount > 0 then
    begin
      if DataModule1.Query1.fieldbyname('normsrok').AsFloat = 4 then
        ddd := ' �� ����������� ������������'; // �������
      if DataModule1.Query1.fieldbyname('normsrok').AsFloat <> 4 then
        ddd := ' �� �������������'; // �������
    end;
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#program_name#'; // ����� ������� ������
    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add('select *  from spspec where pin=' +
      DataModule1.Table_w1.fieldbyname('spspec').asstring);
    DataModule1.Query1.Open;
    if DataModule1.Query1.RecordCount > 0 then
      ddd := DataModule1.Query1.fieldbyname('name').asstring;
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#vid'; // ����� ������� ������
    if DataModule1.Table_w1.fieldbyname('spotd').asstring = '10' then
      ddd := '���';
    if DataModule1.Table_w1.fieldbyname('spotd').asstring <> '10' then
      ddd := '��';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#nam'; // ����� ������� ������
    ddd := { datamodule1.Query1.FieldByName('shifr').AsString+'  '+ } '"' +
      DataModule1.Query1.fieldbyname('name').asstring + '"';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    DataModule1.Table_w6.First;
    gn := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
      .AsDateTime));
    DataModule1.Table_w6.Last;
    gk := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
      .AsDateTime));

    Templ := '#gn'; // ����� ������� ������
    ddd := gn;
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);
    Templ := '#gk'; // ����� ������� ������
    ddd := gk;
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    // education period estimates
    educationStart := 0;
    educationEnd := 0;

    o := DataModule1.Table_w1.fieldbyname('spotd').asinteger;
    f := DataModule1.Table_w1.fieldbyname('spfak').asinteger;
    specCode := DataModule1.Table_w1.fieldbyname('spspec').asinteger;
    if not DataModule1.Table_w36.FindKey([f, o, specCode]) then
      showmessage('����������� ������� �������������!!!!!')
    else
      k1 := DataModule1.Table_w36.fieldbyname('period').AsFloat;

    if (k1 > 1) and (k1 < 2) then
      k1 := 2;
    if (k1 > 2) and (k1 < 3) then
      k1 := 3;
    case DataModule1.Table_w1.fieldbyname('spfak').asinteger of
      57, 98:
        if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 10 then
        // ������-�����������
        begin
          s3 := '1 ��� 10 �������';
        end
        else // ������
        begin
          if k1 = 5 then
            s3 := '5 ���'
          else
            s3 := '4 ����';
        end;
      65:
        begin
          if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 7 then
          // ��������
          begin
            if k1 = 5 then
              s3 := '5 ���'
            else
              s3 := '6 ���';
            s4 := '';
          end;
          if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 8 then
          // ������������                                                //����������
          begin
            s3 := '3,5 ����';
          end;
          if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 10 then
          // �������� ����
          begin
            s3 := '2 ���� 10 �������';
          end
        end;
    end;
    // t1.Cell(11 + rez, 2).Range.Text := s3;
    QueryStr := '';
    QueryStr := 'SELECT AdmissionYear FROM spgrup WHERE pin = ' +
      inttostr(GroupID) + ';';
    with DataModule1.AuxQuery_work_ok do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add(QueryStr);
      Active := True;
      EduStart := '01.09.' + Fields[0].asstring;
      Active := false;
    end;
    // StudentID :=
    // educationStart := ;
    // if dayof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime) < 10 then
    // dd := '0' + inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime))
    // else
    // dd := inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime));
    // if monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime) < 10 then
    // mm := '0' + inttostr(monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime))
    // else
    // mm := inttostr(monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime));

    // t1.Cell(13 + rez, 2).Range.Text := dd + '.' + mm + '.' + inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime)) + '�.';
    if (k1 > 3) and (k1 < 4) then
    begin
      if monthof(Date) = 1 then
        r := 0;
      vdd := strtodatetime('01.03.' + inttostr(yearof(Date) +
        (4 - DataModule1.Table_w1.fieldbyname('kurs').asinteger) + r)) - 1;
      educationEnd := EncodeDate(yearof(vdd), 02, dayof(vdd));
    end
    else
    begin
      if (n > 0) and (n < 8) then
        year := yearof(Date) + round(k1)
        // - DataModule1.Table_w1.fieldbyname('kurs').AsInteger
      else
      begin
        year := yearof(Date) +
          (round(k1) - DataModule1.Table_w1.fieldbyname('kurs').asinteger) + 1;
      end;
      educationEnd := EncodeDate(year, 8, 31)
    end;

    Templ := '#education_start#'; // ����� ������� ������
    ddd := EduStart;
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#education_end#'; // ����� ������� ������
    ddd := DateToStr(educationEnd);
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    // end of education period estimates

    Templ := '#xz'; // ����� ������� ������
    if DataModule1.Table_w1spstatus.asstring <> '4' then
      ddd := '�� '
    else
      ddd := '';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);
    DataModule1.Table_w6.First;

    while not DataModule1.Table_w6.Eof do
    begin
      den := inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvdate')
        .AsDateTime));
      case (monthof(DataModule1.Table_w6.fieldbyname('mvdate').AsDateTime)) of
        1:
          ms := '������';
        2:
          ms := '�������';
        3:
          ms := '�����';
        4:
          ms := '������';
        5:
          ms := '���';
        6:
          ms := '����';
        7:
          ms := '����';
        8:
          ms := '�������';
        9:
          ms := '��������';
        10:
          ms := '�������';
        11:
          ms := '������';
        12:
          ms := '�������';
      end;
      god := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
        .AsDateTime));

      den1 := inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvfakt')
        .AsDateTime));
      case (monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime)) of
        1:
          ms1 := '������';
        2:
          ms1 := '�������';
        3:
          ms1 := '�����';
        4:
          ms1 := '������';
        5:
          ms1 := '���';
        6:
          ms1 := '����';
        7:
          ms1 := '����';
        8:
          ms1 := '�������';
        9:
          ms1 := '��������';
        10:
          ms1 := '�������';
        11:
          ms1 := '������';
        12:
          ms1 := '�������';
      end;
      god1 := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
        .AsDateTime));

      if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 1) or
        (DataModule1.Table_w6.fieldbyname('spevent').asinteger = 2) or
        (DataModule1.Table_w6.fieldbyname('spevent').asinteger = 3)) then
      begin
        Templ := '#osn'; // ����� ������� ������
        ddd := '������ ���������  � ���������� � ����� ��������� 1-�� ����� � 01 �������� '
          + god + ' �. - �� ' + den + ' ' + ms + ' ' + god + ' �. � ' +
          DataModule1.Table_w6.fieldbyname('mvnum').asstring + '.' +
          #13 + '#osn';
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd,
          dd1, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;

      if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 5)) then
      begin
        Templ := '#osn'; // ����� ������� ������
        // DDD:='������ ���������  �� ���������� �� ��������� � ����� � ��� ���������� '+den1+' '+ms1+' '+god1+' �. - �� '+den+' '+ms+' '+god+' �. � '+datamodule1.Table_w6.fieldbyname('mvnum').AsString+'.'+#13+'#osn';
        ddd := '������ ���������  �� ���������� �� ��������� � ����� � ���������� ����������� '
          + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
          god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
          '.' + #13 + '#osn';
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd,
          dd1, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;

      if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 67)) then
      begin
        Templ := '#osn'; // ����� ������� ������
        ddd := '������ ���������  �� ���������� �� ��������� � ����� � ���������� ����������� '
          + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
          god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
          '.' + #13 + '#osn';
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd,
          dd1, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;

      if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 7)) then
      begin
        Templ := '#osn'; // ����� ������� ������
        ddd := '������ ���������  �� ���������� �� ��������� �� ������������� �������������� '
          + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
          god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
          '.' + #13 + '#osn';
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd,
          dd1, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;

      if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 8)) then
      begin
        Templ := '#osn'; // ����� ������� ������
        ddd := '������ ���������  �� ���������� �� ��������� �� ��������� ������� �������� '
          + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
          god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
          '.' + #13 + '#osn';
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd,
          dd1, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;

      { if ((datamodule1.Table_w6.fieldbyname('spevent').AsInteger=8)) then
        begin
        Templ:='#osn'; // ����� ������� ������
        DDD:='������ ���������  �� ���������� �� ��������� �� ������������ ������� '+den1+' '+ms1+' '+god1+' �. - �� '+den+' '+ms+' '+god+' �. � '+datamodule1.Table_w6.fieldbyname('mvnum').AsString+#13+'#osn';
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,EmptyParam, EmptyParam, EmptyParam, D, EmptyParam,DDD, DD, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
        end; }

      if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 9)) then
      begin
        Templ := '#osn'; // ����� ������� ������
        ddd := '������ ���������  �� ���������� �� ��������� �� ������������ ������� '
          + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
          god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
          '.' + #13 + '#osn';
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd,
          dd1, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;
      sob := DataModule1.Table_w6.fieldbyname('spevent').asinteger;

      if ((sob <> 1) and (sob <> 2) and (sob <> 3) and (sob <> 5) and (sob <> 7)
        and (sob <> 8) and (sob <> 9) and (sob <> 26) and (sob <> 67)) then
      begin
        DataModule1.Query1.SQL.Clear;
        DataModule1.Query1.SQL.Add('select *  from spevent where pin=' +
          DataModule1.Table_w6.fieldbyname('spevent').asstring);
        DataModule1.Query1.Open;
        Templ := '#osn'; // ����� ������� ������
        if DataModule1.Query1.RecordCount > 0 then
          ddd := '������ ���������  � ' + DataModule1.Query1.fieldbyname('name')
            .asstring + ' ' + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den
            + ' ' + ms + ' ' + god + ' �. � ' + DataModule1.Table_w6.fieldbyname
            ('mvnum').asstring + '.' + #13 + '#osn'
        else
          ddd := '';
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd,
          dd1, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;

      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add('select *  from spevent where pin=' +
        DataModule1.Table_w6.fieldbyname('spevent').asstring);
      DataModule1.Query1.Open;

      if DataModule1.Query1.RecordCount > 0 then
      begin
        Templ := '#order_no#'; //
        ddd := DataModule1.Table_w6.fieldbyname('mvnum').asstring;
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd,
          dd1, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

        Templ := '#order_date#'; //
        ddd := DataModule1.Table_w6.fieldbyname('mvdate').asstring;
        WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd,
          dd1, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end;

      DataModule1.Table_w6.next;
    end;

    Templ := '#rector_name#';
    ddd := '�.�. �������';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#faculty_chief_name#'; //
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
      ddd := '�.�. �����';
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
      ddd := '�.�. ������������';
    if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
      ddd := '�.�. ��������';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#license_no#';
    ddd := '� ' + DataModule1.Table_p4.fieldbyname('nomlits').asstring + ' �� '
      + DataModule1.Table_p4.fieldbyname('datelits').asstring + '�.';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#accred_no#'; //
    ddd := '� ' + DataModule1.Table_p4.fieldbyname('nomakkr').asstring + ' �� '
      + DataModule1.Table_p4.fieldbyname('dateakkr').asstring + '�.';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    den := inttostr(dayof(Now()));
    case (monthof(Now())) of
      1:
        ms := '������';
      2:
        ms := '�������';
      3:
        ms := '�����';
      4:
        ms := '������';
      5:
        ms := '���';
      6:
        ms := '����';
      7:
        ms := '����';
      8:
        ms := '�������';
      9:
        ms := '��������';
      10:
        ms := '�������';
      11:
        ms := '������';
      12:
        ms := '�������';
    end;
    god := inttostr(yearof(Now()));

    Templ := '#current_date#'; //
    // DDD := DateToStr(Now());
    ddd := den + ' ' + ms + ' ' + god;
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#expiration_date#'; //
    { TODO : ������� ����� ��������� }
    if (((monthof(Now())) >= 7) and ((monthof(Now())) <= 1)) then
      ddd := '01 ������� ' + inttostr(yearof(Now()) + 1)
    else
      ddd := '31 ������ 2017';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    Templ := '#osn#'; // ����� ������� ������
    ddd := ' ';
    WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd1, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam);

    for pr181 := 1 to WordApp.ActiveDocument.Shapes.Count do
    begin
      pr18 := pr181;
      Shape := WordApp.ActiveDocument.Shapes.Item(pr18);

      if Shape.type = 1 then
      begin
        Find := Shape.TextFrame.TextRange.Find;
        Find.text := '#fam';
        Find.Replacement.text := DataModule1.Table_w1fio.asstring;
        Find.forward := True;
        Find.Execute(Replace := wdReplaceall);
      end;
    end;

    /// //////////////////////////////// ����� ���������� ����� ����� �������

  end
  else // ������� �� ������������
  begin
    DataModule1.Table_w2.Indexname := 'idxkadacc'; // ����� pin ��������
    if not DataModule1.Table_w2.FindKey([stud_pin]) then
      showmessage('�������� � ������ �������� ���!')
    else
    begin
      s2 := '� ���������� �������������� ��������� (�������) ������������ ���������������� ���������� ���������������� ���������� ������� ����������������� ����������� "��������� ��������������� ����������� ����������� ��.�.�.���������"';
      s1 := '������ ' + stud_fio + ', ' +
        inttostr(yearof(DataModule1.Table_w2.fieldbyname('dat_ro').AsDateTime))
        + ' ���� ��������,';
      if DataModule1.Table_w2.fieldbyname('sex').asstring = '1' then
      begin
        s1 := s1 + ' � ���, ��� �� �������� ';
        s4 := ' �������� �� ��������� ';
      end
      else
      begin
        s1 := s1 + ' � ���, ��� ��� ��������� ';
        s4 := ' ��������� �� ��������� ';
      end;
      case DataModule1.Table_w1.fieldbyname('spfak').asinteger of
        65:
          s3 := ' ������� ����� �������� ';
        66:
          if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 7 then
            // �������� ����
            s3 := ' ������� ����� �������� ';
      else
        s3 := ' ����� ����� �������� '
      end;
      s3 := s3 + '� ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        ' �� ' + DataModule1.Table_w6.fieldbyname('mvdate').asstring + '�.)';
      s3 := s3 + ' �� ������������� "' + DataModule1.Table_w1.fieldbyname('sp1')
        .asstring + '".';
      t1.Cell(5, 1).Range.text := s1 + s2 + ' c ' + '01.09.' +
        inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate').AsDateTime))
        + '�. (������ � ���������� ��' + s3;

      DataModule1.Table_w6.Last;
      s2 := copy(DataModule1.Table_w6.fieldbyname('event').asstring,
        pos(' ', DataModule1.Table_w6.fieldbyname('event').asstring) + 1,
        length(DataModule1.Table_w6.fieldbyname('event').asstring));
      s2 := s2 + ' (������ � ' + DataModule1.Table_w6.fieldbyname('mvnum')
        .asstring + ' �� ' + DataModule1.Table_w6.fieldbyname('mvdate')
        .asstring + '�.)';
      t1.Cell(6, 1).Range.text := 'C ' + DataModule1.Table_w6.fieldbyname
        ('mvfakt').asstring + '�.' + s4 + s2;

      { t1.Cell(4,2).Range.Text:= stud_fio;
        DataModule1.Table_w2.IndexName :='idxkadacc';    // ����� pin ��������
        if not DataModule1.Table_w2.FindKey([stud_pin]) then
        showmessage('�������� � ������ �������� ���!')
        else
        begin
        s1:='������ '+stud_fio+', ';
        t1.Cell(4,3).Range.Text:= inttostr(yearof(DataModule1.Table_w2.Fieldbyname('dat_ro').Asdatetime))+ ' ���� ��������,';
        if DataModule1.Table_w2.Fieldbyname('sex').asstring ='1'
        then  begin t1.Cell(4,4).Range.Text:= ' � ���, ��� �� ��������'; s3:=' �������� �� ��������� '; end
        else  begin t1.Cell(4,4).Range.Text:= ' � ���, ��� ��� ���������'; s3:=' ��������� �� ��������� '; end;
        s2:= DataModule1.Table_w6.fieldbyname('mvfakt').Asstring + '�. (������ � ���������� �� ';
        //    t1.Cell(6,2).Range.Text:= '01.09.'+inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate').AsDateTime))+'�. (������ � ���������� ��';

        case  DataModule1.Table_w1.fieldbyname('spfak').asinteger of
        65:  s2:=s2+' ������� ����� ��������';
        66:  if DataModule1.Table_w1.fieldbyname('spotd').asinteger=7   then    //�������� ����
        s2:=s2+' ������� ����� ��������';
        else s2:=s2+' ����� ����� ��������'
        end;
        s2:= s2+ ' �'+DataModule1.Table_w6.fieldbyname('mvnum').Asstring+' �� '+DataModule1.Table_w6.fieldbyname('mvdate').Asstring+'�.)';
        t1.Cell(6,2).Range.Text:=s2;
        t1.Cell(7,1).Range.Text:=' �� ������������� "'+DataModule1.Table_w1.fieldbyname('sp1').Asstring+'".';
        DataModule1.Table_w6.last;
        s1:= 'C '+DataModule1.Table_w6.fieldbyname('mvfakt').Asstring + '�.'+s3;
        s1:=s1+copy(DataModule1.Table_w6.fieldbyname('event').Asstring,pos(' ',DataModule1.Table_w6.fieldbyname('event').Asstring)+1,length(DataModule1.Table_w6.fieldbyname('event').Asstring));
        s1:=s1+' (������ �'+ DataModule1.Table_w6.fieldbyname('mvnum').Asstring+' �� '+DataModule1.Table_w6.fieldbyname('mvdate').Asstring+'�.)';
        t1.Cell(8,1).Range.Text:=s1; }
    end;
  end;
  DataModule1.query5.SQL.Clear;
  DataModule1.query5.SQL.Add
    ('select a.pin, c.name, c.normsrok from acc as a,spgrup as b, spspec as c where a.spgrup=b.pin and b.spspec=c.pin');
  DataModule1.query5.SQL.Add('and a.pin=' + DataModule1.Table_w1.fieldbyname
    ('pin').asstring);
  DataModule1.query5.Open;
  if rez1 = 1 then
  begin
    { t1.Cell(19,1).Range.Text:='��������';
      t1.Cell(19,2).Range.Text:='�.�.�������'; }
    if DataModule1.query5.fieldbyname('normsrok').asstring = '1.1' then
      t1.Cell(11, 1).Range.text := '�������������';
    if DataModule1.query5.fieldbyname('normsrok').asstring = '5' then
      t1.Cell(11, 1).Range.text := '�������������';
    if DataModule1.query5.fieldbyname('normsrok').asstring = '4' then
      t1.Cell(11, 1).Range.text := '�����������';
    t1.Cell(11, 2).Range.text := DataModule1.query5.fieldbyname('name')
      .asstring;
  end;
  if ((rez1 = 0) and (DataModule1.Table_w1.fieldbyname('spfak').asinteger = 65))
  then
  begin
    if DataModule1.query5.fieldbyname('normsrok').asstring = '1.1' then
      t1.Cell(11, 1).Range.text := '�������������';
    if DataModule1.query5.fieldbyname('normsrok').asstring = '5' then
      t1.Cell(11, 1).Range.text := '�������������';
    if DataModule1.query5.fieldbyname('normsrok').asstring = '4' then
      t1.Cell(11, 1).Range.text := '�����������';
    t1.Cell(11, 2).Range.text := DataModule1.query5.fieldbyname('name')
      .asstring;
    { t1.Cell(11,2).delete;
      t1.Cell(11,1).delete; }
  end;
  if ((rez1 = 0) and (DataModule1.Table_w1.fieldbyname('spfak').asinteger <> 65))
  then
  begin
    { if datamodule1.query5.FieldByname('normsrok').asstring='1.1' then
      t1.Cell(11,1).Range.Text:='�������������';
      if datamodule1.query5.FieldByname('normsrok').asstring='5' then
      t1.Cell(11,1).Range.Text:='�������������';
      if datamodule1.query5.FieldByname('normsrok').asstring='4' then
      t1.Cell(11,1).Range.Text:='�����������'; }
    { t1.Cell(11,2).delete;
      t1.Cell(11,1).delete; }
  end;
  DataModule1.query5.Close;
  prakt_progress.ProgressBar1.StepIt; // 7
  prakt_progress.Free;
  WordApp.Visible := True;
  if WordApp.Visible = True then
    newdoc.SAVEas(fil);
  if WordApp.Visible = false then
    WordApp.Quit;
  WordApp := unassigned;
  // DateSeparator:=df1;
  // ShortDateFormat:=df2;
end;

procedure Tsprav_acc.Button2Click(Sender: TObject);
var
  // WordApp,NEWDOC: OLEVariant;
  Name_file: PChar;
  fil: OLEVariant;
  names1, names2, names3, datastr, datastr1, s, spec, s1, spe1, spe2,
    sum1: string;
  zstr1, zstr2, zstr3, zstr4: widestring;
  i, j, kol: byte;
  da: boolean;
  t: OLEVariant;
  tnom: integer;
  dat: tdate;
  Templ, d, dd, ddd, what, which: OLEVariant;
  name: OLEVariant;
  l1, l2: byte;
  tipek: byte;
  priz, suma1, k, t6, priz1: integer;
  spr: string;
  props: string;
  dataroj: tdate;
  pust: boolean;
  special, special1: string;
  specspis, summ1, summ2, summ3: integer;
  schol, mes: string;
  Shape, Find: OLEVariant;
  pr1: OLEVariant;
  pr: integer;
  gn, gk: string;
  pr18: OLEVariant;
  pr181: integer;
  ms, den, ms1, den1, god, god1: string;
  sob: integer;
  educationStart: Extended;
  educationEnd: Extended;
  o: integer;
  f: integer;
  r: integer;
  vdd: tdate;
  specCode: integer;
  k1: double;
  year: Word;
  Query: TQuery;
begin
  // name_file:=PChar(folder+'\.doc');
  Name_file := PChar('c:\doc\�������.doc');
  // name_file := PChar(ExtractFileDir(Application.ExeName) + '\out_doc\�������.doc');
  fil := string(Name_file);
  CopyFile(PChar(ExtractFilePath(application.ExeName) + '\Doc\spravka16.doc'),
    Name_file, false);
  // CopyFile(PChar(ExtractFilePath(Application.ExeName) + '\Doc\spravka11_1.doc'), Name_file, false);
  newdoc.ConnectTo(WordApp.Documents.Open(fil, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam));
  // NEWDOC:=WordApp.Documents.Open(string(Name_file));
  WordApp.Selection.Find.ClearFormatting;
  WordApp.Selection.Find.forward := True;
  WordApp.Selection.Find.Wrap := 1; { wdFindContinue }
  WordApp.Selection.Find.Format := false;
  WordApp.Selection.Find.MatchCase := false;
  WordApp.Selection.Find.MatchWholeWord := True;
  WordApp.Selection.Find.MatchWildcards := True;
  WordApp.Selection.Find.MatchSoundsLike := false;
  WordApp.Selection.Find.MatchAllWordForms := false;

  d := wdFindStop; // �����
  dd := wdReplaceall; // ������
  Templ := '#fam#'; // ����� ������� ������
  ddd := DataModule1.Table_w1fio.asstring; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#fm#'; // ����� ������� ������
  ddd := DataModule1.Table_w1fio.asstring; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  d := wdFindStop; // �����
  dd := wdReplaceall; // ������
  Templ := '#fam'; // ����� ������� ������
  ddd := DataModule1.Table_w1fio.asstring; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#fm'; // ����� ������� ������
  ddd := DataModule1.Table_w1fio.asstring; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#kurs#';
  ddd := DataModule1.Table_w1kurs.asstring;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('select *  from acckadr where acc=' +
    DataModule1.Table_w1.fieldbyname('pin').asstring);
  DataModule1.Query1.Open;

  Templ := '#datr#'; // ����� ������� ������
  ddd := DataModule1.Query1.fieldbyname('dat_ro').asstring;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#datr'; // ����� ������� ������
  ddd := DataModule1.Query1.fieldbyname('dat_ro').asstring;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#form#'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '6' then
    ddd := '����� �����';
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '7' then
    ddd := '������� �����'; // �������
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '8' then
    ddd := '����������� ��������� ������� �����'; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#form'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '6' then
    ddd := '����� �����';
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '7' then
    ddd := '������� �����'; // �������
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '8' then
    ddd := '����������� ��������� ������� �����'; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#form_oi#'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '6' then
    ddd := '�����';
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '7' then
    ddd := '�������';
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '8' then
    ddd := '����������� ��������� �������'; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#fak#'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
    ddd := ' ����������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
    ddd := ' �����������-������������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    ddd := ' ���������� ������� ����� ��������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '33' then
    ddd := ' ��������������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '36' then
    ddd := ' �������-����������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '37' then
    ddd := ' ������������������ ����������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#fak'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
    ddd := ' ����������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
    ddd := ' �����������-������������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    ddd := ' ���������� ������� ����� ��������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '33' then
    ddd := ' ��������������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '36' then
    ddd := ' �������-����������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '37' then
    ddd := ' ������������������ ����������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#facult_name_ogo#'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
    ddd := '������������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
    ddd := '�����������-��������������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    ddd := '������� ����� ��������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#facult_name_om#'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
    ddd := '�����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
    ddd := '�����������-�������������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    ddd := '������� ����� ��������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#spec#'; // ����� ������� ������
  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('select *  from spspec where pin=' +
    DataModule1.Table_w1.fieldbyname('spspec').asstring);
  DataModule1.Query1.Open;
  if DataModule1.Query1.RecordCount > 0 then
  begin
    if DataModule1.Query1.fieldbyname('normsrok').AsFloat = 4 then
      ddd := ' �� ����������� ������������'; // �������
    if DataModule1.Query1.fieldbyname('normsrok').AsFloat <> 4 then
      ddd := ' �� �������������'; // �������
  end;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#spec'; // ����� ������� ������
  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('select *  from spspec where pin=' +
    DataModule1.Table_w1.fieldbyname('spspec').asstring);
  DataModule1.Query1.Open;
  if DataModule1.Query1.RecordCount > 0 then
  begin
    if DataModule1.Query1.fieldbyname('normsrok').AsFloat = 4 then
      ddd := ' �� ����������� ������������'; // �������
    if DataModule1.Query1.fieldbyname('normsrok').AsFloat <> 4 then
      ddd := ' �� �������������'; // �������
  end;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#program_name#'; // ����� ������� ������
  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('select *  from spspec where pin=' +
    DataModule1.Table_w1.fieldbyname('spspec').asstring);
  DataModule1.Query1.Open;
  if DataModule1.Query1.RecordCount > 0 then
    ddd := DataModule1.Query1.fieldbyname('name').asstring;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#vid';
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '10' then
    ddd := '���';
  if DataModule1.Table_w1.fieldbyname('spotd').asstring <> '10' then
    ddd := '��';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#nam'; // ����� ������� ������
  ddd := { datamodule1.Query1.FieldByName('shifr').AsString+'  '+ } '"' +
    DataModule1.Query1.fieldbyname('name').asstring + '"';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  DataModule1.Table_w6.First;
  gn := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate').AsDateTime));
  DataModule1.Table_w6.Last;
  gk := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate').AsDateTime));

  Templ := '#gn'; // ����� ������� ������
  ddd := gn;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);
  Templ := '#gk'; // ����� ������� ������
  ddd := gk;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  // education period estimates
  educationStart := 0;
  educationEnd := 0;

  o := DataModule1.Table_w1.fieldbyname('spotd').asinteger;
  f := DataModule1.Table_w1.fieldbyname('spfak').asinteger;
  specCode := DataModule1.Table_w1.fieldbyname('spspec').asinteger;
  if not DataModule1.Table_w36.FindKey([f, o, specCode]) then
    showmessage('����������� ������� �������������!!!!!')
  else
    k1 := DataModule1.Table_w36.fieldbyname('period').AsFloat;

  if (k1 > 1) and (k1 < 2) then
    k1 := 2;
  if (k1 > 2) and (k1 < 3) then
    k1 := 3;
  case DataModule1.Table_w1.fieldbyname('spfak').asinteger of
    57, 98:
      if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 10 then
      // ������-�����������
      begin
        s3 := '1 ��� 10 �������';
      end
      else // ������
      begin
        if k1 = 5 then
          s3 := '5 ���'
        else
          s3 := '4 ����';
      end;
    65:
      begin
        if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 7 then
        // ��������
        begin
          if k1 = 5 then
            s3 := '5 ���'
          else
            s3 := '6 ���';
          s4 := '';
        end;
        if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 8 then
        // ������������                                                //����������
        begin
          s3 := '3,5 ����';
        end;
        if DataModule1.Table_w1.fieldbyname('spotd').asinteger = 10 then
        // �������� ����
        begin
          s3 := '2 ���� 10 �������';
        end
      end;
  end;
  // t1.Cell(11 + rez, 2).Range.Text := s3;
  educationStart := EncodeDate(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
    .AsDateTime), 09, 01);
  // if dayof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime) < 10 then
  // dd := '0' + inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime))
  // else
  // dd := inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime));
  // if monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime) < 10 then
  // mm := '0' + inttostr(monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime))
  // else
  // mm := inttostr(monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime));

  // t1.Cell(13 + rez, 2).Range.Text := dd + '.' + mm + '.' + inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime)) + '�.';
  if (k1 > 3) and (k1 < 4) then
  begin
    if monthof(Date) = 1 then
      r := 0;
    vdd := strtodatetime('01.03.' + inttostr(yearof(Date) +
      (4 - DataModule1.Table_w1.fieldbyname('kurs').asinteger) + r)) - 1;
    educationEnd := EncodeDate(yearof(vdd), 02, dayof(vdd));
  end
  else
  begin
    if (n > 0) and (n < 8) then
      year := yearof(Date) + round(k1)
      // - DataModule1.Table_w1.fieldbyname('kurs').AsInteger
    else
    begin
      year := yearof(Date) +
        (round(k1) - DataModule1.Table_w1.fieldbyname('kurs').asinteger) + 1;
    end;
    educationEnd := EncodeDate(year, 8, 31)
  end;

  Templ := '#education_start#'; // ����� ������� ������
  ddd := DateToStr(educationStart);
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#education_end#'; // ����� ������� ������
  ddd := DateToStr(educationEnd);
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  // end of education period estimates

  Templ := '#xz'; // ����� ������� ������
  if DataModule1.Table_w1spstatus.asstring <> '4' then
    ddd := '�� '
  else
    ddd := '';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);
  DataModule1.Table_w6.First;

  while not DataModule1.Table_w6.Eof do
  begin
    den := inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvdate')
      .AsDateTime));
    case (monthof(DataModule1.Table_w6.fieldbyname('mvdate').AsDateTime)) of
      1:
        ms := '������';
      2:
        ms := '�������';
      3:
        ms := '�����';
      4:
        ms := '������';
      5:
        ms := '���';
      6:
        ms := '����';
      7:
        ms := '����';
      8:
        ms := '�������';
      9:
        ms := '��������';
      10:
        ms := '�������';
      11:
        ms := '������';
      12:
        ms := '�������';
    end;
    god := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
      .AsDateTime));

    den1 := inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvfakt')
      .AsDateTime));
    case (monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime)) of
      1:
        ms1 := '������';
      2:
        ms1 := '�������';
      3:
        ms1 := '�����';
      4:
        ms1 := '������';
      5:
        ms1 := '���';
      6:
        ms1 := '����';
      7:
        ms1 := '����';
      8:
        ms1 := '�������';
      9:
        ms1 := '��������';
      10:
        ms1 := '�������';
      11:
        ms1 := '������';
      12:
        ms1 := '�������';
    end;
    god1 := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
      .AsDateTime));

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 1) or
      (DataModule1.Table_w6.fieldbyname('spevent').asinteger = 2) or
      (DataModule1.Table_w6.fieldbyname('spevent').asinteger = 3)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  � ���������� � ����� ��������� 1-�� ����� � 01 �������� '
        + god + ' �. - �� ' + den + ' ' + ms + ' ' + god + ' �. � ' +
        DataModule1.Table_w6.fieldbyname('mvnum').asstring + '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 5)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      // DDD:='������ ���������  �� ���������� �� ��������� � ����� � ��� ���������� '+den1+' '+ms1+' '+god1+' �. - �� '+den+' '+ms+' '+god+' �. � '+datamodule1.Table_w6.fieldbyname('mvnum').AsString+'.'+#13+'#osn';
      ddd := '������ ���������  �� ���������� �� ��������� � ����� � ���������� ����������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 67)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  �� ���������� �� ��������� � ����� � ���������� ����������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 7)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  �� ���������� �� ��������� �� ������������� �������������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 8)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  �� ���������� �� ��������� �� ��������� ������� �������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    { if ((datamodule1.Table_w6.fieldbyname('spevent').AsInteger=8)) then
      begin
      Templ:='#osn'; // ����� ������� ������
      DDD:='������ ���������  �� ���������� �� ��������� �� ������������ ������� '+den1+' '+ms1+' '+god1+' �. - �� '+den+' '+ms+' '+god+' �. � '+datamodule1.Table_w6.fieldbyname('mvnum').AsString+#13+'#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,EmptyParam, EmptyParam, EmptyParam, D, EmptyParam,DDD, DD, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end; }

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 9)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  �� ���������� �� ��������� �� ������������ ������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;
    sob := DataModule1.Table_w6.fieldbyname('spevent').asinteger;

    if ((sob <> 1) and (sob <> 2) and (sob <> 3) and (sob <> 5) and (sob <> 7)
      and (sob <> 8) and (sob <> 9) and (sob <> 26) and (sob <> 67)) then
    begin
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add('select *  from spevent where pin=' +
        DataModule1.Table_w6.fieldbyname('spevent').asstring);
      DataModule1.Query1.Open;
      Templ := '#osn'; // ����� ������� ������
      if DataModule1.Query1.RecordCount > 0 then
        ddd := '������ ���������  � ' + DataModule1.Query1.fieldbyname('name')
          .asstring + ' ' + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den +
          ' ' + ms + ' ' + god + ' �. � ' + DataModule1.Table_w6.fieldbyname
          ('mvnum').asstring + '.' + #13 + '#osn'
      else
        ddd := '';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add('select *  from spevent where pin=' +
      DataModule1.Table_w6.fieldbyname('spevent').asstring);
    DataModule1.Query1.Open;

    if DataModule1.Query1.RecordCount > 0 then
    begin
      Templ := '#order_no#'; //
      ddd := DataModule1.Table_w6.fieldbyname('mvnum').asstring;
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);

      Templ := '#order_date#'; //
      ddd := DataModule1.Table_w6.fieldbyname('mvdate').asstring;
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    DataModule1.Table_w6.next;
  end;

  Templ := '#osn'; // ����� ������� ������
  ddd := ' ';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#rector_name#';
  ddd := '�.�. �������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#faculty_chief_name#'; //
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
    ddd := '�.�. �����';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
    ddd := '�.�. ������������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    ddd := '�.�. ��������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#license_no#';
  ddd := '� ' + DataModule1.Table_p4.fieldbyname('nomlits').asstring + ' �� ' +
    DataModule1.Table_p4.fieldbyname('datelits').asstring + '�.';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#accred_no#'; //
  ddd := '� ' + DataModule1.Table_p4.fieldbyname('nomakkr').asstring + ' �� ' +
    DataModule1.Table_p4.fieldbyname('dateakkr').asstring + '�.';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#current_date#'; //
  ddd := DateToStr(Now());
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#expiration_date#'; //
  { TODO : ������� ����� ��������� }
  ddd := '01.02.2016';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  // ������� ������ ������������
  Templ := '#group_name#';
  i := DataModule1.Table_w1.fieldbyname('spgrup').asinteger;
  Query := TQuery.Create(nil);
  Query.DatabaseName := 'Database2';
  Query.SQL.text := 'select name from spgrup where pin = ' + IntToStr(i);
  Query.Open;
  if Query.Active and (Query.RecordCount > 0) then
    ddd := Query.Fields[0].asstring
  else
    ddd := '----';
  Query.Free;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  for pr181 := 1 to WordApp.ActiveDocument.Shapes.Count do
  begin
    pr18 := pr181;
    Shape := WordApp.ActiveDocument.Shapes.Item(pr18);

    if Shape.type = 1 then
    begin
      Find := Shape.TextFrame.TextRange.Find;
      Find.text := '#fam';
      Find.Replacement.text := DataModule1.Table_w1fio.asstring;
      Find.forward := True;
      Find.Execute(Replace := wdReplaceall);
    end;
  end;

  application.Minimize;
  WordApp.Visible := True;
  WordApp.Activate;
  newdoc.SAVEas(fil);

  { WordApp.visible:=true;                                                                             zz
    if WordApp.visible=true then NEWDOC.SAVEas(fil); }
  if WordApp.Visible = false then
    WordApp.Quit;
  // WordApp:=unassigned;
end;

procedure Tsprav_acc.FormatDocument();
var
  d, dd, ddd: OLEVariant;
  Templ, Shape: OLEVariant;
  gn, gk: string;
  den, den1: string;
  ms, ms1: string;
  god, god1: string;
  sob: integer;
  i: integer;
  j, Find: OLEVariant;
begin
  // NEWDOC:=WordApp.Documents.Open(string(Name_file));
  WordApp.Selection.Find.ClearFormatting;
  WordApp.Selection.Find.forward := True;
  WordApp.Selection.Find.Wrap := 1; { wdFindContinue }
  WordApp.Selection.Find.Format := false;
  WordApp.Selection.Find.MatchCase := false;
  WordApp.Selection.Find.MatchWholeWord := True;
  WordApp.Selection.Find.MatchWildcards := True;
  WordApp.Selection.Find.MatchSoundsLike := false;
  WordApp.Selection.Find.MatchAllWordForms := false;

  d := wdFindStop; // �����
  dd := wdReplaceall; // ������

  Templ := '#fam'; // ����� ������� ������
  ddd := DataModule1.Table_w1fio.asstring; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#fm'; // ����� ������� ������
  ddd := DataModule1.Table_w1fio.asstring; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#kurs';
  ddd := DataModule1.Table_w1kurs.asstring;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('select *  from acckadr where acc=' +
    DataModule1.Table_w1.fieldbyname('pin').asstring);
  DataModule1.Query1.Open;

  Templ := '#datr'; // ����� ������� ������
  ddd := DataModule1.Query1.fieldbyname('dat_ro').asstring;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#form'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '6' then
    ddd := '����� �����';
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '7' then
    ddd := '������� �����'; // �������
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '8' then
    ddd := '����������� ��������� ������� �����'; // �������
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#fak'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
    ddd := ' ����������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
    ddd := ' �����������-������������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    ddd := ' ���������� ������� ����� ��������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '33' then
    ddd := ' ��������������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '36' then
    ddd := ' �������-����������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '37' then
    ddd := ' ������������������ ����������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#fak-w'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
    ddd := '������������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
    ddd := '�����������-��������������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    ddd := '������� ����� ��������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '33' then
    ddd := ' ��������������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '36' then
    ddd := ' �������-����������� ����������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '37' then
    ddd := ' ������������������ ����������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#spec'; // ����� ������� ������
  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('select *  from spspec where pin=' +
    DataModule1.Table_w1.fieldbyname('spspec').asstring);
  DataModule1.Query1.Open;
  if DataModule1.Query1.RecordCount > 0 then
  begin
    if DataModule1.Query1.fieldbyname('normsrok').AsFloat = 4 then
      ddd := ' �� ����������� ������������'; // �������
    if DataModule1.Query1.fieldbyname('normsrok').AsFloat <> 4 then
      ddd := ' �� �������������'; // �������
  end;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#program_name'; // ����� ������� ������
  DataModule1.Query1.SQL.Clear;
  DataModule1.Query1.SQL.Add('select *  from spspec where pin=' +
    DataModule1.Table_w1.fieldbyname('spspec').asstring);
  DataModule1.Query1.Open;
  if DataModule1.Query1.RecordCount > 0 then
    ddd := QuotedStr(DataModule1.Query1.fieldbyname('name').asstring);
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#vid'; // ����� ������� ������
  if DataModule1.Table_w1.fieldbyname('spotd').asstring = '10' then
    ddd := '���';
  if DataModule1.Table_w1.fieldbyname('spotd').asstring <> '10' then
    ddd := '��';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#nam'; // ����� ������� ������
  ddd := { datamodule1.Query1.FieldByName('shifr').AsString+'  '+ } '"' +
    DataModule1.Query1.fieldbyname('name').asstring + '"';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  DataModule1.Table_w6.First;
  gn := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate').AsDateTime));
  DataModule1.Table_w6.Last;
  gk := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate').AsDateTime));

  Templ := '#gn'; // ����� ������� ������
  ddd := gn;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);
  Templ := '#gk'; // ����� ������� ������
  ddd := gk;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#education_start'; // ����� ������� ������
  ddd := gn;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);
  Templ := '#education_end'; // ����� ������� ������
  ddd := gk;
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#xz'; // ����� ������� ������
  if DataModule1.Table_w1spstatus.asstring <> '4' then
    ddd := '�� '
  else
    ddd := '';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);
  DataModule1.Table_w6.First;

  while not DataModule1.Table_w6.Eof do
  begin
    den := inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvdate')
      .AsDateTime));
    case (monthof(DataModule1.Table_w6.fieldbyname('mvdate').AsDateTime)) of
      1:
        ms := '������';
      2:
        ms := '�������';
      3:
        ms := '�����';
      4:
        ms := '������';
      5:
        ms := '���';
      6:
        ms := '����';
      7:
        ms := '����';
      8:
        ms := '�������';
      9:
        ms := '��������';
      10:
        ms := '�������';
      11:
        ms := '������';
      12:
        ms := '�������';
    end;
    god := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
      .AsDateTime));

    den1 := inttostr(dayof(DataModule1.Table_w6.fieldbyname('mvfakt')
      .AsDateTime));
    case (monthof(DataModule1.Table_w6.fieldbyname('mvfakt').AsDateTime)) of
      1:
        ms1 := '������';
      2:
        ms1 := '�������';
      3:
        ms1 := '�����';
      4:
        ms1 := '������';
      5:
        ms1 := '���';
      6:
        ms1 := '����';
      7:
        ms1 := '����';
      8:
        ms1 := '�������';
      9:
        ms1 := '��������';
      10:
        ms1 := '�������';
      11:
        ms1 := '������';
      12:
        ms1 := '�������';
    end;
    god1 := inttostr(yearof(DataModule1.Table_w6.fieldbyname('mvdate')
      .AsDateTime));

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 1) or
      (DataModule1.Table_w6.fieldbyname('spevent').asinteger = 2) or
      (DataModule1.Table_w6.fieldbyname('spevent').asinteger = 3)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  � ���������� � ����� ��������� 1-�� ����� � 01 �������� '
        + god + ' �. - �� ' + den + ' ' + ms + ' ' + god + ' �. � ' +
        DataModule1.Table_w6.fieldbyname('mvnum').asstring + '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);

      Templ := '#'; // ����� ������� ������
      ddd := '������ ���������  � ���������� � ����� ��������� 1-�� ����� � 01 �������� '
        + god + ' �. - �� ' + den + ' ' + ms + ' ' + god + ' �. � ' +
        DataModule1.Table_w6.fieldbyname('mvnum').asstring + '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 5)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      // DDD:='������ ���������  �� ���������� �� ��������� � ����� � ��� ���������� '+den1+' '+ms1+' '+god1+' �. - �� '+den+' '+ms+' '+god+' �. � '+datamodule1.Table_w6.fieldbyname('mvnum').AsString+'.'+#13+'#osn';
      ddd := '������ ���������  �� ���������� �� ��������� � ����� � ���������� ����������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 67)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  �� ���������� �� ��������� � ����� � ���������� ����������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 7)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  �� ���������� �� ��������� �� ������������� �������������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 8)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  �� ���������� �� ��������� �� ��������� ������� �������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    { if ((datamodule1.Table_w6.fieldbyname('spevent').AsInteger=8)) then
      begin
      Templ:='#osn'; // ����� ������� ������
      DDD:='������ ���������  �� ���������� �� ��������� �� ������������ ������� '+den1+' '+ms1+' '+god1+' �. - �� '+den+' '+ms+' '+god+' �. � '+datamodule1.Table_w6.fieldbyname('mvnum').AsString+#13+'#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,EmptyParam, EmptyParam, EmptyParam, D, EmptyParam,DDD, DD, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      end; }

    if ((DataModule1.Table_w6.fieldbyname('spevent').asinteger = 9)) then
    begin
      Templ := '#osn'; // ����� ������� ������
      ddd := '������ ���������  �� ���������� �� ��������� �� ������������ ������� '
        + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den + ' ' + ms + ' ' +
        god + ' �. � ' + DataModule1.Table_w6.fieldbyname('mvnum').asstring +
        '.' + #13 + '#osn';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;
    sob := DataModule1.Table_w6.fieldbyname('spevent').asinteger;

    if ((sob <> 1) and (sob <> 2) and (sob <> 3) and (sob <> 5) and (sob <> 7)
      and (sob <> 8) and (sob <> 9) and (sob <> 26) and (sob <> 67)) then
    begin
      DataModule1.Query1.SQL.Clear;
      DataModule1.Query1.SQL.Add('select *  from spevent where pin=' +
        DataModule1.Table_w6.fieldbyname('spevent').asstring);
      DataModule1.Query1.Open;
      Templ := '#osn'; // ����� ������� ������
      if DataModule1.Query1.RecordCount > 0 then
        ddd := '������ ���������  � ' + DataModule1.Query1.fieldbyname('name')
          .asstring + ' ' + den1 + ' ' + ms1 + ' ' + god1 + ' �. - �� ' + den +
          ' ' + ms + ' ' + god + ' �. � ' + DataModule1.Table_w6.fieldbyname
          ('mvnum').asstring + '.' + #13 + '#osn'
      else
        ddd := '';
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    DataModule1.Query1.SQL.Clear;
    DataModule1.Query1.SQL.Add('select *  from spevent where pin=' +
      DataModule1.Table_w6.fieldbyname('spevent').asstring);
    DataModule1.Query1.Open;

    if DataModule1.Query1.RecordCount > 0 then
    begin
      Templ := '#order_no'; //
      ddd := DataModule1.Table_w6.fieldbyname('mvnum').asstring;
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);

      Templ := '#order_date'; //
      ddd := DataModule1.Table_w6.fieldbyname('mvdate').asstring;
      WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
        EmptyParam, EmptyParam, EmptyParam);
    end;

    DataModule1.Table_w6.next;
  end;

  Templ := '#rector_name';
  ddd := '�.�. �������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#current_date';
  ddd := DateToStr(Now());
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#faculty_chief_name'; //
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '98' then
    ddd := '�.�. �����';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '57' then
    ddd := '�.�. ������������';
  if DataModule1.Table_w1.fieldbyname('spfak').asstring = '65' then
    ddd := '�.�. ��������';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#license_no';
  ddd := '� ' + DataModule1.Table_p4.fieldbyname('nomlits').asstring + ' �� ' +
    DataModule1.Table_p4.fieldbyname('datelits').asstring + '�.';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#accred_no'; //
  ddd := '� ' + DataModule1.Table_p4.fieldbyname('nomakkr').asstring + ' �� ' +
    DataModule1.Table_p4.fieldbyname('dateakkr').asstring + '�.';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#current_date'; //
  ddd := DateToStr(Now());
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  Templ := '#osn'; // ����� ������� ������
  ddd := ' ';
  WordApp.Selection.Find.Execute(Templ, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, d, EmptyParam, ddd, dd, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam);

  for i := 1 to WordApp.ActiveDocument.Shapes.Count do
  begin
    j := i;
    Shape := WordApp.ActiveDocument.Shapes.Item(j);
    if Shape.type = 1 then
    begin
      Find := Shape.TextFrame.TextRange.Find;
      Find.text := '#fam';
      Find.Replacement.text := DataModule1.Table_w1fio.asstring;
      Find.forward := True;
      Find.Execute(Replace := wdReplaceall);
    end;
  end;
end;

end.
