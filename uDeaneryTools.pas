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
  if RightStr(LastName, 1) = 'а' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName) - 1))+'ой';
  end;
  if RightStr(LastName, 1) = 'в' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName) - 1))+'ву';
  end;
  if RightStr(LastName, 1) = 'я' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName) - 2))+'ой';
  end;
  if RightStr(LastName, 1) = 'й' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName) - 2))+'ому';
  end;
  if RightStr(LastName, 1) = 'н' then
  begin
  pLastName := LeftStr(LastName, (Length(LastName)))+'у';
  end;
  if RightStr(Name, 1) = 'а' then
  begin
  pName := LeftStr(Name, Length(Name)-1)+'е';
  end;
  if RightStr(Name, 1) = 'я' then
  begin
  pName := LeftStr(Name, Length(Name)-1)+'и';
  end;
  if RightStr(Name, 1) = 'н' then
  begin
  pName := LeftStr(Name, Length(Name))+'у';
  end;
  if RightStr(Name, 1) = 'й' then
  begin
  pName := LeftStr(Name, Length(Name)-1)+'ю';
  end;
  if RightStr(Name, 1) = 'р' then
  begin
  pName := LeftStr(Name, Length(Name))+'у';
  end;
  if RightStr(Name, 1) = 'д' then
  begin
  pName := LeftStr(Name, Length(Name))+'у';
  end;
  if RightStr(Name, 1) = 'т' then
  begin
  pName := LeftStr(Name, Length(Name))+'у';
  end;
  if RightStr(Name, 1) = 'л' then
  begin
  pName := LeftStr(Name, Length(Name))+'у';
  end;
  if RightStr(Name, 1) = 'к' then
  begin
  pName := LeftStr(Name, Length(Name))+'у';
  end;
  if RightStr(Name, 1) = 'в' then
  begin
  pName := LeftStr(Name, Length(Name))+'у';
  end;
  if RightStr(MiddleName, 1) = 'ч' then
  begin
  pMiddleName := LeftStr(MiddleName, Length(MiddleName)-1) + 'чу';
  end;
  if RightStr(MiddleName, 1) = 'а' then
  begin
  pMiddleName := LeftStr(MiddleName, Length(MiddleName)-1) + 'е';
  end;
  Result := pLastName + ' ' + pName + ' ' + pMiddleName;
  end; }

end.
