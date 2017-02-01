unit WordDocument;

interface

uses Document, System.SysUtils;

type

  /// <summary>
  ///  ��������� ���� ��������� Word
  /// </summary>
  TWordField = record
    Name: string;
    Value: string;
  end;

  /// <summary>
  ///  ��������� ����� ��������� Word
  /// </summary>
  TWordFields = array of TWordField;

type

  /// <summary>
  ///  ����� ��������� Microsoft Word
  /// </summary>
  TWordDocument = class(TDocument)
  private


    FFields: TWordFields;
    FTemplateName: string;
    FMarkerChar: string;


    function FindAndReplace(const FindText, ReplaceText: WideString): Boolean;


    procedure SetMarkerChar(const Value: string = '%');
    procedure SetFields(const Value: TWordFields);
    procedure SetTemplateName(const Value: string);

  public

    /// <summary>
    ///  ������ ����� ���� - ������, ������� ��������� ���������� � ������� ���������
    /// </summary>
    property MarkerChar: string read FMarkerChar write SetMarkerChar;

    /// <summary>
    ///  ��������� ����������� ����� �������.
    ///  �������� ����:
    ///     Name - ��� ����� ���� (�������� ���������� � �������, ����������� ��������);
    ///     Value - ��������, ������� ����� �������� ����� � �������� ���������;
    /// </summary>
    property Fields: TWordFields read FFields write SetFields;

    /// <summary>
    ///   ��� ����� ������� ��������� � ������� "{%PATH%}\TemplateName.dot"
    /// </summary>
    property TemplateName: string read FTemplateName write SetTemplateName;

    /// <summary>
    ///   ��������� ��������� � ������� �� �������
    /// </summary>
    procedure Generate();

  end;


implementation

{ TWordDocument }

function TWordDocument.FindAndReplace(const FindText,
  ReplaceText: WideString): Boolean;
// ����� � ������ ���������� ��������� � ���������
const
  wdReplaceAll = 2;
begin  Self.DocumentApp.Selection.Find.MatchSoundsLike := false;
  Self.DocumentApp.Selection.Find.MatchAllSelf.DocumentAppForms := false;
  Self.DocumentApp.Selection.Find.MatchWholeSelf.DocumentApp := false;
  Self.DocumentApp.Selection.Find.Format := false;
  Self.DocumentApp.Selection.Find.Forward := true;
  Self.DocumentApp.Selection.Find.ClearFormatting;
  Self.DocumentApp.Selection.Find.Text := FindText;
  Self.DocumentApp.Selection.Find.Replacement.Text := ReplaceText;
  FindAndReplace := Self.DocumentApp.Selection.Find.Execute(Replace := wdReplaceAll);
end;

procedure TWordDocument.Generate;
var
  FieldsCount: integer; //���������� �����
  MarkerName: string; //��������� ����� � ������� ���������
  TextValue: string; //�����, ����������� � ��������
  i, j: integer; //���������� ��������
begin

  //��������� �������
  if FTemplateName = '' then
    raise Exception.Create('�� ��� ������ ������ ���������.');

  //�������� ���������
  DocumentApp.Documents.Add(FTemplateName);

  //�������� ������
  FieldsCount := Length(FFields);
  for i := 0 to FieldsCount - 1 do
  begin
    MarkerName := FMarkerChar + Self.FFields[i].Name + FMarkerChar;
    TextValue := Self.FFields[i].Value;
    FindAndReplace(MarkerName, TextValue);
  end;

  //����� �� �������
  DocumentApp.Visible := True;
end;

procedure TWordDocument.SetFields(const Value: TWordFields);
begin
  FFields := Value;
end;

procedure TWordDocument.SetMarkerChar(const Value: string = '%');
begin
  FMarkerChar := Value;
end;

procedure TWordDocument.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

end.
