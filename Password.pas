unit Password;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TypInfo, WinSock, DB, DBTables, DateUtils,
  ExtCtrls, NB30;

type
  TFPassword = class(TForm)
    Label1: TLabel;
    LoginEdit: TEdit;
    Label2: TLabel;
    PassEdit: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBRights: TDatabase;
    QPass: TQuery;
    QLogs: TQuery;
    QRights: TQuery;
    Label3: TLabel;
    Timer1: TTimer;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplyRights(const parent: Twincontrol);
    procedure FormCreate(Sender: TObject);
    procedure LoginEditKeyPress(Sender: TObject; var Key: Char);
    procedure PassEditKeyPress(Sender: TObject; var Key: Char);
    procedure AppendLog(soft: integer; user: integer; tip: integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  logSuccssEnter = 1; // ������� ����
  logFailedEnter = 2; // ��������� ����
  logExit = 3; // �����
  logBanned = 6; // ������������
  logUnBan = 7; // �������������

const
  exitParamError = 1; // �� ������ ��������� checker.exe
  exitMacFailed = 2; // �� ������ MAC - �����
  exitCrcFailed = 3; // �� ������ crc
  exitSuccess = 6; // ������ ��������
  exitUndefError = 9; // ������ ������ checker.exe

const
  errorCheck = 1;
  errorConnect = 2;

const
  CountFailedEnter = 6;
  // ���������� ���������� ������� ����� ������ �� ����������

const
  CheckerPath = '\\servcnit\work\crc\checker.exe';

  // CheckerPath = '\\192.168.0.209\work\crc\checker.exe';
const
  a = 'abcdefghijklmnopqrstuvwxyz_1234567890';

const
  SoftCod = 2; // ��� ��������� �� �����������

var
  FPassword: TFPassword;
  UserCod: integer; // ��� ������������
  UserGrup: integer; // ��� ������ �������������
  PodrCod: string; // ��� �������������
  Rules: TStringList; // ������ ���� � ����������
  IP: string;
  Kto: string;

implementation

uses DataModule, Main1;

{$R *.dfm}
// ����������������� ��� �������
{$DEFINE DEBUG}

// ���������� ���� � Win - �����
procedure TFPassword.ApplyRights(const parent: Twincontrol);
var
  s: string;
  p: integer;
  i: integer;
  CompName: string;
  PropName: string;
  PropVal: string;
  rights: string;
  Val: integer;
  iter: integer;
  x: integer;
  ParentName: string;

  // ������� �������� �� ������� �������� � ����������
  function hasProperties(Component: TComponent; PropName: String): boolean;
  var
    Count, Size, i: integer;
    List: PPropList;
    PropInfo: PPropInfo;
    find: boolean;
  begin
    find := false;
    Count := GetPropList(Component.ClassInfo, tkAny, nil);
    Size := Count * SizeOf(Pointer);
    GetMem(List, Size);
    try
      Count := GetPropList(Component.ClassInfo, tkAny, List);
      for i := 0 to Count - 1 do
      begin
        PropInfo := List^[i];
        if not(PropInfo^.PropType^.Kind in tkMethods) then
          if (LowerCase(PropInfo^.Name) = PropName) then
            find := true;
      end;
    finally
      FreeMem(List);
    end;
    Result := find;
  end;

begin
  if Rules.Count = 0 then
    exit;
  for iter := 0 to Rules.Count - 1 do
  begin
    rights := Rules.Strings[iter];
    // ���� ����� ������. �� �������
    if rights = '' then
      Continue;

    // ��������� � ������ �������
    rights := LowerCase(rights) + #13;

    // ������� ��������
    while (pos('//', rights) > 0) do
    begin
      x := pos('//', rights);
      while (rights[x] <> #13) do
        delete(rights, x, 1);
    end;
    // ������� �������
    while pos(' ', rights) > 0 do
      delete(rights, pos(' ', rights), 1);
    while pos(#09, rights) > 0 do
      delete(rights, pos(#09, rights), 1);
    while pos(#13, rights) > 0 do
      delete(rights, pos(#13, rights), 1);

    if rights = '' then
      Continue;

    // ������������� �����������
    if rights[1] <> ';' then
      rights := ';' + rights;

    ParentName := parent.ClassName;

    // ���� � ������ ������ �����
    s := ';' + LowerCase(ParentName) + '{';
    p := pos(s, rights);

    // ���� �� �����. �������
    if (p = 0) then
      Continue;

    // ���������� �� ���� �������� ����� � ������
    delete(rights, 1, p + length(ParentName) + 1);
    p := pos('}', rights);
    // � � �����
    delete(rights, p, length(rights) - p + 1);

    // ���������� � ������ ������� � � ����� �������
    if length(rights) > 0 then
      if rights[length(rights)] <> ';' then
        rights := rights + ';';

    // ��������� �� ���� ����������� � �������
    while rights <> '' do
    begin
      try
        // ���������� ��� ����������
        p := pos('.', rights);
        CompName := copy(rights, 1, p - 1);
        delete(rights, 1, p);
        // ���������� ��� ��������
        p := pos('=', rights);
        PropName := copy(rights, 1, p - 1);
        delete(rights, 1, p);
        // ���������� �������� ��������
        p := pos(';', rights);
        PropVal := copy(rights, 1, p - 1);
        delete(rights, 1, p);
      except
        Continue;
      end;
      if PropVal = 'true' then
        PropVal := '1';
      if PropVal = 'false' then
        PropVal := '0';
      if pos('''', PropVal) = 0 then
      begin
        // ----------------------------------
        // ��� ����� � ���������� �������
        // ----------------------------------
        Val := StrToInt(PropVal);
        // ������������� ��������
        try
          if CompName = 'self' then
          begin
            if hasProperties(parent, PropName) then
              SetOrdProp(parent, PropName, Val);
          end
          else if CompName = 'all' then
            for i := 0 to parent.ComponentCount - 1 do
              try
                if hasProperties(parent.Components[i], PropName) then
                  SetOrdProp(parent.Components[i], PropName, Val)
              except
                Continue;
              end
          else if hasProperties(parent.FindComponent(CompName), PropName) then
            SetOrdProp(parent.FindComponent(CompName), PropName, Val);
        except
          Continue;
        end;
      end
      else
      begin
        if (PropVal[1] <> '''') or (PropVal[length(PropVal)] <> '''') then
          Continue;
        // --------------------------------
        // ��� �����
        // --------------------------------
        // ������������� ��������
        delete(PropVal, 1, 1);
        delete(PropVal, length(PropVal), 1);
        try
          if CompName = 'self' then
          begin
            if hasProperties(parent, PropName) then
              SetStrProp(parent, PropName, PropVal);
          end
          else if CompName = 'all' then
            for i := 0 to parent.ComponentCount - 1 do
              try
                if hasProperties(parent.Components[i], PropName) then
                  SetStrProp(parent.Components[i], PropName, PropVal)
              except
                Continue;
              end
          else if hasProperties(parent.FindComponent(CompName), PropName) then
            SetStrProp(parent.FindComponent(CompName), PropName, PropVal)
        except
          Continue;
        end;
      end;
      // --------------------------------
    end;
  end;
end;

// ����������� IP ������ ������� ������
function GetIP: String;
const
  WSVer = $101;
var
  wsaData: TWSAData;
  p: PHostEnt;
  Buf: array [0 .. 127] of Char;
begin
  Result := '';
  if WSAStartup(WSVer, wsaData) = 0 then
  begin
    if GetHostName(@Buf, 128) = 0 then
    begin
      p := GetHostByName(@Buf);
      if p <> nil then
        Result := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
    end;
    WSACleanup;
  end;
end;

// ���������� ������ � ���
procedure TFPassword.AppendLog(soft: integer; user: integer; tip: integer);
var
  BeginDate: TDateTime;
begin
{$IFNDEF DEBUG}
  QLogs.Close;
  QLogs.SQL.Clear;
  QLogs.SQL.Append('INSERT INTO');
  QLogs.SQL.Append('  logs');
  QLogs.SQL.Append('  (codpr, coduser, tip, ip)');
  QLogs.SQL.Append('VALUES');
  QLogs.SQL.Append('  (:scod, :ucod, :tip, :ip)');
  QLogs.ParamByName('ucod').AsInteger := user;
  QLogs.ParamByName('scod').AsInteger := soft;
  QLogs.ParamByName('tip').AsInteger := tip;
  QLogs.ParamByName('ip').AsString := IP;
  QLogs.ExecSQL;
  QLogs.Close;
  if tip = logFailedEnter then
  begin
    // ���������� ������� ���� �� �������
    QLogs.Close;
    QLogs.SQL.Clear;
    QLogs.SQL.Append('SELECT');
    QLogs.SQL.Append('  NOW() AS nowdate');
    QLogs.Open;
    BeginDate := StrToDateTime(DateToStr(QLogs.Fields[0].AsDateTime) +
      ' 0:00:01');
    QLogs.Close;
    // ���������� ����� ���������� �������� �����
    QLogs.SQL.Clear;
    QLogs.SQL.Append('SELECT');
    QLogs.SQL.Append('  MAX(logs.dtime) AS lastsuccess');
    QLogs.SQL.Append('FROM');
    QLogs.SQL.Append('  logs');
    QLogs.SQL.Append('WHERE');
    QLogs.SQL.Append('  logs.coduser = :ucod AND');
    QLogs.SQL.Append('  (logs.tip = :tip1 OR logs.tip = :tip2) AND');
    QLogs.SQL.Append('  logs.dtime >= :nowdate');
    QLogs.SQL.Append('GROUP BY');
    QLogs.SQL.Append('  logs.coduser');
    QLogs.ParamByName('ucod').AsInteger := user;
    QLogs.ParamByName('tip1').AsInteger := logSuccssEnter;
    QLogs.ParamByName('tip2').AsInteger := logUnBan;
    QLogs.ParamByName('nowdate').AsString := IntToStr(YearOf(BeginDate)) + '-' +
      IntToStr(MonthOf(BeginDate)) + '-' + IntToStr(DayOf(BeginDate));
    QLogs.Open;
    if QLogs.RecordCount > 0 then
      BeginDate := QLogs.Fields[0].AsDateTime;
    QLogs.Close;
    // ���������� ���������� ��������� �������
    QLogs.SQL.Clear;
    QLogs.SQL.Append('SELECT');
    QLogs.SQL.Append('  COUNT(*) AS cnt');
    QLogs.SQL.Append('FROM');
    QLogs.SQL.Append('  logs');
    QLogs.SQL.Append('WHERE');
    QLogs.SQL.Append('  logs.dtime >= :lastdt AND');
    QLogs.SQL.Append('  logs.coduser = :ucod AND');
    QLogs.SQL.Append('  logs.tip = :tip');
    QLogs.ParamByName('ucod').AsInteger := user;
    QLogs.ParamByName('tip').AsInteger := logFailedEnter;
    QLogs.ParamByName('lastdt').AsString := IntToStr(YearOf(BeginDate)) + '-' +
      IntToStr(MonthOf(BeginDate)) + '-' + IntToStr(DayOf(BeginDate)) + ' ' +
      IntToStr(HourOf(BeginDate)) + ':' + IntToStr(MinuteOf(BeginDate)) + ':' +
      IntToStr(SecondOf(BeginDate));
    QLogs.Open;
    if QLogs.Fields[0].AsInteger >= CountFailedEnter then
    begin
      QLogs.Close;
      QLogs.SQL.Clear;
      QLogs.SQL.Append('INSERT INTO');
      QLogs.SQL.Append('  logs');
      QLogs.SQL.Append('  (codpr, coduser, tip, ip)');
      QLogs.SQL.Append('VALUES');
      QLogs.SQL.Append('  (:soft, :user, :tip, :ip)');
      QLogs.ParamByName('soft').AsInteger := soft;
      QLogs.ParamByName('user').AsInteger := user;
      QLogs.ParamByName('tip').AsInteger := logBanned;
      QLogs.ParamByName('ip').AsString := IP;
      QLogs.ExecSQL;
      // MessageBox(Handle, '������������ ������������', '������!', MB_OK);
    end;
    QLogs.Close;
  end;
{$ENDIF}
end;

procedure TFPassword.BitBtn2Click(Sender: TObject);
var
  t1, t2: TDateTime;
begin
  if (LoginEdit.Text = '') or (PassEdit.Text = '') then
    exit;

  BitBtn2.Enabled := false;
  // ���������, ���� �� ����� ������������
  QPass.SQL.Clear;
  QPass.SQL.Append('SELECT');
  QPass.SQL.Append('  spuser.cod AS cod');
  QPass.SQL.Append('FROM');
  QPass.SQL.Append('  spuser');
  QPass.SQL.Append('WHERE');
  QPass.SQL.Append('  spuser.login = :login');
  QPass.ParamByName('login').AsString := LoginEdit.Text;
  QPass.Open;
  if QPass.RecordCount = 0 then // ���� ��������� ����� �� ������
  begin
    QPass.Close;
    MessageBox(Handle, '��� ������ ������������', '������ �����',
      MB_ICONERROR + MB_OK);
    BitBtn2.Enabled := true;
    exit;
  end;
  // ���� ����� ������������, ���������� ��� ���
  UserCod := QPass.FieldByName('cod').AsInteger;
  /// ////////��
  if UserCod = 60 then
  begin
    spfak := 98;
    krfak := '��';
    fak_name := '�����������';
    // rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString);
  end;
  /// ////////////////��
  // �������� �� ���������
  QPass.Close;
  QPass.SQL.Clear;
  QPass.SQL.Append('SELECT');
  QPass.SQL.Append('  MAX(logs.dtime), logs.tip');
  QPass.SQL.Append('FROM');
  QPass.SQL.Append('  logs');
  QPass.SQL.Append('WHERE');
  QPass.SQL.Append('  logs.coduser = :ucod AND');
  QPass.SQL.Append('  logs.tip = :tip1 AND');
  QPass.SQL.Append('  logs.dtime >= DATE(NOW())');
  QPass.SQL.Append('GROUP BY');
  QPass.SQL.Append('  logs.dtime');
  QPass.SQL.Append('UNION');
  QPass.SQL.Append('SELECT');
  QPass.SQL.Append('  MAX(logs.dtime), logs.tip');
  QPass.SQL.Append('FROM');
  QPass.SQL.Append('  logs');
  QPass.SQL.Append('WHERE');
  QPass.SQL.Append('  logs.coduser = :ucod AND');
  QPass.SQL.Append('  logs.tip = :tip2 AND');
  QPass.SQL.Append('  logs.dtime >= DATE(NOW())');
  QPass.SQL.Append('GROUP BY');
  QPass.SQL.Append('  logs.dtime');
  QPass.ParamByName('ucod').AsInteger := UserCod;
  QPass.ParamByName('tip1').AsInteger := logBanned;
  QPass.ParamByName('tip2').AsInteger := logUnBan;
  QPass.Open;
  if QPass.RecordCount > 0 then // ���� ��������� ����� �� ������
  begin
    if (QPass.RecordCount = 1) and (QPass.Fields.Fields[1].AsInteger = logBanned)
    then
    begin
      QPass.Close;
      MessageBox(Handle, '������������ ������������', '������!',
        MB_ICONERROR + MB_OK);
      BitBtn2.Enabled := true;
      exit;
    end;
    if (QPass.RecordCount = 2) then
    begin
      QPass.First;
      t1 := QPass.Fields.Fields[0].AsDateTime;
      QPass.Last;
      t2 := QPass.Fields.Fields[0].AsDateTime;
      if t1 > t2 then
      begin
        QPass.Close;
        MessageBox(Handle, '������������ ������������', '������!',
          MB_ICONERROR + MB_OK);
        BitBtn2.Enabled := true;
        exit;
      end;
    end;
  end;
  // �������� ������
  QPass.Close;
  QPass.SQL.Clear;
  QPass.SQL.Append('SELECT');
  QPass.SQL.Append('  spuser.codgr AS codgr,');
  QPass.SQL.Append('  spuser.codk AS codk');
  QPass.SQL.Append('FROM');
  QPass.SQL.Append('  spuser');
  QPass.SQL.Append('WHERE');
  QPass.SQL.Append('  spuser.cod = :cod AND');
  QPass.SQL.Append('  spuser.pass = PASSWORD(:pass)');
  QPass.ParamByName('cod').AsInteger := UserCod;
  QPass.ParamByName('pass').AsString := PassEdit.Text;
  QPass.Open;
  if QPass.RecordCount = 0 then // ���� ������ ������������
  begin
    QPass.Close;
    MessageBox(Handle, '�������� ������', '������ �����', MB_ICONERROR + MB_OK);
    // ������ � ��� �������� ������� �����
    AppendLog(SoftCod, UserCod, logFailedEnter);
    BitBtn2.Enabled := true;
    exit;
  end;
  // ���������� ������ ������������, ��� �������������
  UserGrup := QPass.FieldByName('codgr').AsInteger;
  PodrCod := QPass.FieldByName('codk').AsString;
  /// /////////////////////////////////////////////
  Kto := QPass.FieldByName('codk').AsString;
  { if QPass.FieldByName('codgr').AsInteger=60 then begin spfak:=98; krfak:='��'; fak_name:='�����������'; rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString)end;//��
    if QPass.FieldByName('codgr').AsInteger= then begin spfak:=57; krfak:='���'; fak_name:='�����������-�������������'; rukfak:=trim(DataModule1.Table101.FieldByName('fiorin').AsString)end;//��� }

  /// ////////////////////////////////////////////
  QPass.Close;
  // ����� � ��� ��� �����
  AppendLog(SoftCod, UserCod, logSuccssEnter);
  FPassword.LoginEdit.Clear;
  FPassword.PassEdit.Clear;
  // ������ �� ���� ������� � ���������� ��� ������������
  QRights.Close;
  QRights.SQL.Clear;
  QRights.SQL.Append('SELECT');
  QRights.SQL.Append('  userrights.rights AS rule');
  QRights.SQL.Append('FROM');
  QRights.SQL.Append('  userrights');
  QRights.SQL.Append('WHERE');
  QRights.SQL.Append('  userrights.codpr = :scod AND');
  QRights.SQL.Append('  userrights.codgr = :codgr');
  QRights.ParamByName('scod').AsInteger := SoftCod;
  QRights.ParamByName('codgr').AsInteger := UserGrup;
  QRights.Open;
  if QRights.RecordCount = 0 then
  // ���� ���� �� ����������, ������� ������ � ���������
  begin
    AppendLog(SoftCod, UserCod, logExit);
    MessageBox(Handle, '� ��� ��� ���� ������� � ������ ���������', '������',
      MB_ICONERROR + MB_OK);
    exit;
  end;
  // ���������� ��� ����� ������� � ������
  Rules.Clear;
  while not QRights.Eof do
  begin
    Rules.Append(QRights.FieldByName('rule').AsString);
    QRights.Next;
  end;
  QRights.Close;
  // ������� ����� �����������
  FPassword.Hide;
  { ==================================== }
  { ������ �������� ����� }
  { ==================================== }
  Application.CreateForm(Tmain, main);
  main.Show;
  { ==================================== }
end;

procedure TFPassword.BitBtn1Click(Sender: TObject);
begin
  DBRights.Connected := false;
  // ���������� ������
  Close;
end;

procedure TFPassword.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
  // ������ � ��� ����� ������������ �� ���������
  if UserCod > 0 then
  begin
    AppendLog(SoftCod, UserCod, logExit);
    UserCod := 0;
    Close;
  end;
end;

procedure TFPassword.FormCreate(Sender: TObject);

  function CryptLogin: string;
  begin
    Result := 'guest_rights';
  end;

  function CryptPass: string;
  const
    pwd: array [1 .. 3] of byte = (51, 50, 49);
  var
    s: string;
    i: integer;
  begin
    s := '';
    for i := 1 to length(pwd) do
      s := s + Chr(pwd[i]);
    Result := s;
  end;

  function CheckerStart: integer;
  var
    Rlst: LongBool;
    StartUpInfo: TStartUpInfo;
    ProcessInfo: TProcessInformation;
    ECode: Cardinal;
  begin
    try
      ECode := exitUndefError;
      FillChar(StartUpInfo, SizeOf(TStartUpInfo), 0);
      with StartUpInfo do
      begin
        cb := SizeOf(TStartUpInfo);
        dwFlags := STARTF_USESHOWWINDOW or STARTF_FORCEONFEEDBACK;
        wShowWindow := SW_HIDE;
        // wShowWindow := SW_SHOWNORMAL;
      end;
      Rlst := CreateProcess(nil, PChar(CheckerPath + ' "' + ParamStr(0) + '" ' +
        IntToStr(SoftCod)), nil, nil, false, NORMAL_PRIORITY_CLASS, nil, nil,
        StartUpInfo, ProcessInfo);
      if Rlst then
        with ProcessInfo do
        begin
          WaitForInputIdle(hProcess, INFINITE);
          WaitforSingleObject(ProcessInfo.hProcess, INFINITE);
          GetExitCodeProcess(ProcessInfo.hProcess, ECode);
          CloseHandle(hThread);
          CloseHandle(hProcess);
        end
      else
        RaiseLastOSError;
      Result := ECode;
    except
      Result := exitUndefError;
    end;
  end;

var
  CheckResult: integer;

begin
  try
    // �������� �� ����������� � ����������� ������� �� ������ ������
{$IFNDEF DEBUG}
    CheckResult := CheckerStart;
{$ELSE}
    CheckResult := exitSuccess;
{$ENDIF}
    if CheckResult <> exitSuccess then
    begin
      case CheckResult of
        exitUndefError:
          MessageBox(Handle, '���� �������� �������', '�������� �������',
            MB_ICONERROR + MB_OK);
        exitCrcFailed:
          MessageBox(Handle, '���������� ��������� ����������� ����������',
            '�������� �������', MB_ICONERROR + MB_OK);
        exitMacFailed:
          MessageBox(Handle, '������ � ��������� � ������� ���������� ��������',
            '�������� �������', MB_ICONERROR + MB_OK);
      else
        MessageBox(Handle,
          '�������� ������� �������� �����������. ������ ��������',
          '�������� �������', MB_ICONERROR + MB_OK);
      end;
      ExitProcess(errorCheck);
      // Application.Terminate;
    end;
    // ������ � ������ ���� ������� ��� �������������
    DBRights.Params.Clear;
    DBRights.Params.Append('USER NAME=');
    DBRights.Params.Append('PASSWORD=');
    DBRights.Params.Strings[1] := DBRights.Params.Strings[1] + CryptPass;
    DBRights.Params.Strings[0] := DBRights.Params.Strings[0] + CryptLogin;
    DBRights.Connected := true;
    IP := GetIP;
    Rules := TStringList.Create;
  except
    ExitProcess(errorConnect);
    // Application.Terminate;
  end;
end;

procedure TFPassword.LoginEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PassEdit.SetFocus;
end;

procedure TFPassword.PassEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BitBtn2.SetFocus;
end;

procedure TFPassword.Timer1Timer(Sender: TObject);
begin
  // ��������� ����������
  if GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow, nil)) = 67699721
  then
  begin
    Label3.Color := clNavy;
    Label3.Caption := 'EN';
  end;
  // ��������� �������
  if GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow, nil)) = 68748313
  then
  begin
    Label3.Color := clMaroon;
    Label3.Caption := 'RU';
  end;
end;

procedure TFPassword.FormHide(Sender: TObject);
begin
  Timer1.Enabled := false;
end;

end.
