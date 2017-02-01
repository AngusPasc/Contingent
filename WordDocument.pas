unit WordDocument;

interface

uses Document, System.SysUtils;

type

  /// <summary>
  ///  Структура поля документа Word
  /// </summary>
  TWordField = record
    Name: string;
    Value: string;
  end;

  /// <summary>
  ///  Структура полей документа Word
  /// </summary>
  TWordFields = array of TWordField;

type

  /// <summary>
  ///  Класс документа Microsoft Word
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
    ///  Маркер имени поля - символ, которым обрамлены переменные в шаблоне документа
    /// </summary>
    property MarkerChar: string read FMarkerChar write SetMarkerChar;

    /// <summary>
    ///  Коллекция заполненных полей шаблона.
    ///  Стуктура поля:
    ///     Name - имя метки поля (название переменной в шаблоне, обрамленной маркером);
    ///     Value - значение, которым будет заменена метка в выходном документе;
    /// </summary>
    property Fields: TWordFields read FFields write SetFields;

    /// <summary>
    ///   Имя файла шаблона документа в формате "{%PATH%}\TemplateName.dot"
    /// </summary>
    property TemplateName: string read FTemplateName write SetTemplateName;

    /// <summary>
    ///   Генерация документа с выводом на дисплей
    /// </summary>
    procedure Generate();

  end;


implementation

{ TWordDocument }

function TWordDocument.FindAndReplace(const FindText,
  ReplaceText: WideString): Boolean;
// поиск и замена текстового фрагмента в документе
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
  FieldsCount: integer; //Количество полей
  MarkerName: string; //Текстовая метка в шаблоне документа
  TextValue: string; //Текст, вставляемый в документ
  i, j: integer; //переменные счетчика
begin

  //валидация шаблона
  if FTemplateName = '' then
    raise Exception.Create('Не был указан шаблон документа.');

  //создание документа
  DocumentApp.Documents.Add(FTemplateName);

  //выгрузка данных
  FieldsCount := Length(FFields);
  for i := 0 to FieldsCount - 1 do
  begin
    MarkerName := FMarkerChar + Self.FFields[i].Name + FMarkerChar;
    TextValue := Self.FFields[i].Value;
    FindAndReplace(MarkerName, TextValue);
  end;

  //вывод на дисплей
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
