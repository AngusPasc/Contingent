unit stud_usp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Spin, StdCtrls, DBCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Edit3: TEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    StringGrid1: TStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
