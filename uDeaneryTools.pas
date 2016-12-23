unit uDeaneryTools;

interface

uses

  StrUtils;

// function DativeFullName(const LastName: string; const Name: string; const MiddleName: string = ''): string;

implementation

{ function DativeFullName(const LastName: string; const Name: string; const MiddleName: string = ''): string;
  var
  pLastName, pName, pMiddleName: string;
  str: string;
  i, j: integer;
  begin
  pLastName := LastName;
  pName := Name;
  pMiddleName := MiddleName;
  if RightStr(LastName, 1) = '�' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName) - 1))+'��';
  end;
  if RightStr(LastName, 1) = '�' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName) - 1))+'��';
  end;
  if RightStr(LastName, 1) = '�' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName) - 2))+'��';
  end;
  if RightStr(LastName, 1) = '�' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName) - 2))+'���';
  end;
  if RightStr(LastName, 1) = '�' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName)))+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name)-1)+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name)-1)+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name))+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name)-1)+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name))+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name))+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name))+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name))+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name))+'�';
  end;
  if RightStr(Name, 1) = '�' then
  begin
  pName := LeftStr(Name, Length(Name))+'�';
  end;
  if RightStr(MiddleName, 1) = '�' then
  begin
  pMiddleName := LeftStr(MiddleName, Length(MiddleName)-1) + '��';
  end;
  if RightStr(MiddleName, 1) = '�' then
  begin
  pMiddleName := LeftStr(MiddleName, Length(MiddleName)-1) + '�';
  end;
  Result := pLastName + ' ' + pName + ' ' + pMiddleName;
  end; }

end.
