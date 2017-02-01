unit Document;

interface

uses
  Classes, ComObj;



type

/// <summary>
/// ѕеречисление приложений, обрабатывающих документы Microsoft Office
///  </summary>
  TDocumentHandler =
  (
  Excel,
  Word
  );


type

/// <summary>
/// Ѕазовый класс документов Microsoft Office
/// </summary>
  TDocument = class(TObject)

  private

    //“ип приложени€-обработчика
    FHandler: TDocumentHandler;

    //экзампл€р приложени€-обработчика
    FDocumentApp: OleVariant;

  protected

    ///  <summary>
    /// Ёкземпл€р приложени€, обрабатывающего документ
    ///  </summary>
    property DocumentApp: OleVariant read FDocumentApp;

  public

    /// <summary>
    ///  ќткрывает экземпл€р приложени€
    /// </summary>
    /// <param name="Handler">
    /// ѕриложение, обрабатывающее данный документ
    /// </param>
    constructor Create(Handler: TDocumentHandler);

    /// <summary>
    ///   «акрывает экземпл€р приложени€
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
