unit Document;

interface

uses
  Classes, ComObj;



type

/// <summary>
/// ������������ ����������, �������������� ��������� Microsoft Office
///  </summary>
  TDocumentHandler =
  (
  Excel,
  Word
  );


type

/// <summary>
/// ������� ����� ���������� Microsoft Office
/// </summary>
  TDocument = class(TObject)

  private

    //��� ����������-�����������
    FHandler: TDocumentHandler;

    //��������� ����������-�����������
    FDocumentApp: OleVariant;

  protected

    ///  <summary>
    /// ��������� ����������, ��������������� ��������
    ///  </summary>
    property DocumentApp: OleVariant read FDocumentApp;

  public

    /// <summary>
    ///  ��������� ��������� ����������
    /// </summary>
    /// <param name="Handler">
    /// ����������, �������������� ������ ��������
    /// </param>
    constructor Create(Handler: TDocumentHandler);

    /// <summary>
    ///   ��������� ��������� ����������
    /// </summary>
    destructor Destroy; override;

  end;

implementation

{ TDocument }

constructor TDocument.Create(Handler: TDocumentHandler);

const
  APPLICATION_NAME_Word = 'Word.Application';
  APPLICATION_NAME_Excel = 'ExcelApplication';

var
  ApplicationName: string;

begin

  Self.FHandler := Handler;

  case FHandler of
    Excel: ApplicationName := APPLICATION_NAME_Excel;
    Word: ApplicationName := APPLICATION_NAME_Word;
  end;

  Self.FDocumentApp := CreateOleObject(ApplicationName);
  Self.FDocumentApp.Visible := False;

end;

destructor TDocument.Destroy;
begin
  Self.FDocumentApp.Quit;
  inherited;
end;

end.
