unit prakt_progress1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  Tprakt_progress = class(TForm)
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  prakt_progress: Tprakt_progress;

implementation

{$R *.dfm}

end.
