unit stud_usp3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DataModule;

type
  Tstud_hissessia = class(TForm)
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stud_hissessia: Tstud_hissessia;

implementation

uses main1, stud_sess2;
{$R *.dfm}

procedure Tstud_hissessia.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tstud_hissessia.FormActivate(Sender: TObject);
var
  s: string;
begin
  stud_pin := accpin[Stud_usp.StringGrid1.Row];
  s := 'acc=' + inttostr(stud_pin) + ' and uchsessia=' + inttostr(disc) +
    ' and spkontr=' + inttostr(kont);
  DataModule1.Table_w12h.filter := s;
  DataModule1.Table_w12h.Filtered := True;
end;

procedure Tstud_hissessia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.Table_w12h.Filtered := false;
  Stud_usp.Enabled := True;
end;

end.
