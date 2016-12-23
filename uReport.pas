unit uReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview;

type
  TfReportForm = class(TForm)
    ReportForm: TfrxReport;
    PreviewReport: TfrxPreview;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReportForm: TfReportForm;

implementation

{$R *.dfm}

end.
