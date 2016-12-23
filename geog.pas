unit geog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, DBCtrls, Buttons,
  ExtCtrls, Mask;

type
  TFgeog = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBLookupComboBox6: TDBLookupComboBox;
    SpeedButton6: TSpeedButton;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure DBLookupComboBox6Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ulica();
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    // function GetBefore(substr, str:string):string;
    // function GetAfter(substr, str:string):string;

    // procedure DBLookupComboBox6CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  Dbas = 'Database3';
  Dbas1 = 'Database2';

var
  Fgeog: TFgeog;
  Quergeo1: Tquery;
  Quergeo2: Tquery;
  Quergeo3: Tquery;
  Quergeo4: Tquery;
  Quergeo5: Tquery;
  Quergeo6: Tquery;
  Querzap: Tquery;
  Querdob: Tquery;
  Querwok: Tquery;
  DataQuerzap: TDataSource;
  DataQuergeo1: TDataSource;
  DataQuergeo2: TDataSource;
  DataQuergeo3: TDataSource;
  DataQuergeo4: TDataSource;
  DataQuergeo5: TDataSource;
  DataQuergeo6: TDataSource;
  DataQuerdob: TDataSource;
  DataQuerwok: TDataSource;
  qstran, qreg, qrain, qgor, qnasp, qul, tp: Integer;
  stradr, strdom, strkv, strobr, nameul: string;
  prover: boolean;

implementation

uses datamodule, main1, password1, stud_acc1;
{$R *.dfm}

function GetBefore(substr, str: string): string;
{ ©Drkb v.3(2007): <a href="http://www.drkb.ru" title="www.drkb.ru">www.drkb.ru</a>,
  ®Vit (Vitaly Nevzorov) - nevzorov@yahoo.com }
begin
  if pos(substr, str) > 0 then
    result := copy(str, 1, pos(substr, str) - 1)
  else
    result := '';
end;

function GetAfter(substr, str: string): string;
{ ©Drkb v.3(2007): <a href="http://www.drkb.ru" title="www.drkb.ru">www.drkb.ru</a>,
  ®Vit (Vitaly Nevzorov) - nevzorov@yahoo.com }
begin
  if pos(substr, str) > 0 then
    result := copy(str, pos(substr, str) + length(substr), length(str))
  else
    result := '';
end;

procedure TFgeog.FormActivate(Sender: TObject);
begin

  { Quergeo1.SQL.Clear;
    Quergeo1.SQL.Add('select pin,name, tip,rod, priz  from geography where tip=1 and priz=1');
    Quergeo1.Open;
    Quergeo2.SQL.Clear;
    Quergeo2.SQL.Add('select pin,name, tip,rod, priz  from geography where tip=2 and priz=1 and rod=1 order by name');
    Quergeo2.Open;
    Quergeo3.SQL.Clear;
    Quergeo3.SQL.Add('select pin,name, tip,rod, priz  from geography where tip=3 and priz=1 order by name');
    Quergeo3.Open;
    Quergeo4.SQL.Clear;
    Quergeo4.SQL.Add('select pin,name, tip,rod, priz  from geography where tip=4 and priz=1 order by name');
    Quergeo4.Open;
    Quergeo5.SQL.Clear;
    Quergeo5.SQL.Add('select pin,name, tip,rod, priz  from geography where tip=5 and priz=1 order by name');
    Quergeo5.Open;
    Quergeo5.SQL.Clear;
    Quergeo5.SQL.Add('select pin,name, tip,rod, priz  from geography where tip=6 and priz=1 order by name');
    Quergeo5.Open; }

  if ageog = 1 then
  begin
    qreg := Datamodule1.Table_w2aregion1.AsInteger;
    qrain := Datamodule1.Table_w2aregion2.AsInteger;
    qgor := Datamodule1.Table_w2aregion3.AsInteger;
    qnasp := Datamodule1.Table_w2aregion4.AsInteger;
  end;

  if ((DBLookupComboBox2.text <> '') and (ageog = 1)) then
  begin
    Quergeo1.SQL.Clear;
    Quergeo1.SQL.Add
      ('select pin,name, tip,rod, priz  from geography where tip=1 and priz=1 and pin='
      + Quergeo2.Fieldbyname('rod').AsString);
    Quergeo1.Open;
    DBLookupComboBox1.KeyValue := DBLookupComboBox1.ListSource.DataSet.
      Fieldbyname(DBLookupComboBox1.KeyField).Value;
  end;
end;

procedure TFgeog.ulica();
var
  i: Integer;
  uli: string;
begin
  if (DBLookupComboBox6.text <> '') then
  begin
    uli := DBLookupComboBox6.text;
    for i := length(uli) downto 1 do
      if uli[i] = ' ' then
        break;
    if copy(uli, i + 1, length(uli)) = 'аал' then
      ComboBox1.itemindex := 0;
    if copy(uli, i + 1, length(uli)) = 'аллея' then
      ComboBox1.itemindex := 1;
    if copy(uli, i + 1, length(uli)) = 'б-р' then
      ComboBox1.itemindex := 2;
    if copy(uli, i + 1, length(uli)) = 'въезд' then
      ComboBox1.itemindex := 3;
    if copy(uli, i + 1, length(uli)) = 'высел' then
      ComboBox1.itemindex := 4;
    if copy(uli, i + 1, length(uli)) = 'дор' then
      ComboBox1.itemindex := 5;
    if copy(uli, i + 1, length(uli)) = 'заезд' then
      ComboBox1.itemindex := 6;
    if copy(uli, i + 1, length(uli)) = 'кв-л' then
      ComboBox1.itemindex := 7;
    if copy(uli, i + 1, length(uli)) = 'мкр' then
      ComboBox1.itemindex := 8;
    if copy(uli, i + 1, length(uli)) = 'парк' then
      ComboBox1.itemindex := 9;
    if copy(uli, i + 1, length(uli)) = 'пер' then
      ComboBox1.itemindex := 10;
    if copy(uli, i + 1, length(uli)) = 'переезд' then
      ComboBox1.itemindex := 11;
    if copy(uli, i + 1, length(uli)) = 'пл' then
      ComboBox1.itemindex := 12;
    if copy(uli, i + 1, length(uli)) = 'платф' then
      ComboBox1.itemindex := 13;
    if copy(uli, i + 1, length(uli)) = 'полустанок' then
      ComboBox1.itemindex := 14;
    if copy(uli, i + 1, length(uli)) = 'пр-кт' then
      ComboBox1.itemindex := 15;
    if copy(uli, i + 1, length(uli)) = 'проезд' then
      ComboBox1.itemindex := 16;
    if copy(uli, i + 1, length(uli)) = 'проулок' then
      ComboBox1.itemindex := 17;
    if copy(uli, i + 1, length(uli)) = 'рзд' then
      ComboBox1.itemindex := 18;
    if copy(uli, i + 1, length(uli)) = 'сквер' then
      ComboBox1.itemindex := 19;
    if copy(uli, i + 1, length(uli)) = 'спуск' then
      ComboBox1.itemindex := 20;
    if copy(uli, i + 1, length(uli)) = 'ст' then
      ComboBox1.itemindex := 21;
    if copy(uli, i + 1, length(uli)) = 'стр' then
      ComboBox1.itemindex := 22;
    if copy(uli, i + 1, length(uli)) = 'тер' then
      ComboBox1.itemindex := 23;
    if copy(uli, i + 1, length(uli)) = 'тракт' then
      ComboBox1.itemindex := 24;
    if copy(uli, i + 1, length(uli)) = 'туп' then
      ComboBox1.itemindex := 25;
    if copy(uli, i + 1, length(uli)) = 'ул' then
      ComboBox1.itemindex := 26;
    if copy(uli, i + 1, length(uli)) = 'ш' then
      ComboBox1.itemindex := 27;
    Edit2.text := copy(uli, 1, i);
  end;
end;

procedure TFgeog.DBLookupComboBox2Click(Sender: TObject);
begin
  Quergeo3.SQL.Clear;
  Quergeo3.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=3 and priz=1');
  Quergeo3.SQL.Add(' and rod=' + Quergeo2.Fieldbyname('pin').AsString +
    ' order by name');
  Quergeo3.Open;
  Quergeo4.SQL.Clear;
  Quergeo4.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=4 and priz=1');
  Quergeo4.SQL.Add(' and rod=' + Quergeo2.Fieldbyname('pin').AsString +
    ' order by name');
  Quergeo4.Open;
  qreg := Quergeo2.Fieldbyname('pin').AsInteger;
end;

procedure TFgeog.DBLookupComboBox1Click(Sender: TObject);
begin
  Quergeo2.SQL.Clear;
  Quergeo2.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=2 and priz=1');
  Quergeo2.SQL.Add(' and rod=' + Quergeo1.Fieldbyname('pin').AsString);
  Quergeo2.SQL.Add(' order by name');
  Quergeo2.Open;
  Quergeo3.SQL.Clear;
  Quergeo3.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=3 and priz=1');
  Quergeo3.SQL.Add(' and rod=' + Quergeo1.Fieldbyname('pin').AsString);
  Quergeo3.SQL.Add(' order by name');
  Quergeo3.Open;
  Quergeo4.SQL.Clear;
  Quergeo4.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=4 and priz=1');
  Quergeo4.SQL.Add(' and rod=' + Quergeo1.Fieldbyname('pin').AsString);
  Quergeo4.SQL.Add(' order by name');
  Quergeo4.Open;

  qstran := Quergeo1.Fieldbyname('pin').AsInteger;
  DBLookupComboBox2.KeyValue := 0;
  DBLookupComboBox3.KeyValue := 0;
  DBLookupComboBox4.KeyValue := 0;
end;

procedure TFgeog.DBLookupComboBox3Click(Sender: TObject);
begin
  Quergeo4.SQL.Clear;
  Quergeo4.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=4 and priz=1');
  Quergeo4.SQL.Add(' and rod=' + Quergeo3.Fieldbyname('pin').AsString +
    ' order by name');
  Quergeo4.Open;
  Quergeo5.SQL.Clear;
  Quergeo5.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=5 and priz=1');
  Quergeo5.SQL.Add(' and rod=' + Quergeo3.Fieldbyname('pin').AsString +
    ' order by name');
  Quergeo5.Open;
  Quergeo4.Close;
  if (ageog <> 4) then
  begin
    DBLookupComboBox5.Visible := true;
    Label5.Visible := true;
  end;
  qgor := 0;
  qrain := Quergeo3.Fieldbyname('pin').AsInteger;

end;

procedure TFgeog.DBLookupComboBox4Click(Sender: TObject);
begin
  Quergeo6.SQL.Clear;
  Quergeo6.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=6 and priz=1');
  Quergeo6.SQL.Add(' and rod=' + Quergeo4.Fieldbyname('pin').AsString +
    ' order by name');
  Quergeo6.Open;
  if ageog <> 4 then
  begin
    DBLookupComboBox5.Visible := false;
    Label5.Visible := false;
    DBLookupComboBox6.Visible := true;
    Label6.Visible := true;
  end;
  Quergeo3.Close;
  Quergeo5.Close;
  qrain := 0;
  qnasp := 0;
  qgor := Quergeo4.Fieldbyname('pin').AsInteger;
  // DBLookupComboBox4.KeyValue := DBLookupComboBox4.ListSource.DataSet.FieldByName(DBLookupComboBox4.KeyField).Value;
end;

procedure TFgeog.SpeedButton1Click(Sender: TObject);
begin
  tp := 1;
  ClientWidth := 794;
  Querzap.SQL.Clear;
  Querzap.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=1 and priz=1');
  Querzap.Open;
  DBGrid1.Columns[0].Title.Caption := 'Страна';
  Edit1.SetFocus;

end;

procedure TFgeog.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  s: string[120];
begin
  s := trim(Edit1.text);
  if (Key = #13) or (Key = #9) or (Key = #40) then
  begin
    if Edit1.text <> '' then
      BitBtn1.Enabled := true;
    BitBtn1.SetFocus;
    Key := #0;
  end;
  if (length(trim(Edit1.text)) = 0) or (Edit1.SelLength = length(Edit1.text)) or
    (s[length(s)] = '-') then
  begin
    if Key = 'ё' then
      Key := 'Ё'
    else if ((Key >= 'а') and (Key <= 'п')) then
      Key := chr(ord(Key) - 32)
    else if ((Key >= 'р') and (Key <= 'я')) then
      Key := chr(ord(Key) - 32)
    else if not(((Key >= 'А') and (Key <= 'П')) or
      ((Key >= 'Р') and (Key <= 'Я')) or (Key = 'ё') OR (Key = #8) or
      ((Key >= '0') and (Key <= '9'))) then
      Key := #0;
  end
  else if Key = 'Ё' then
    Key := 'ё'
  else if ((Key >= 'А') and (Key <= 'П')) then
    Key := chr(ord(Key) + 32)
  else if ((Key >= 'Р') and (Key <= 'Я')) then
    Key := chr(ord(Key) + 32)
  else if not(((Key >= 'а') and (Key <= 'п')) or ((Key >= 'р') and (Key <= 'я'))
    or (Key = 'ё') OR (Key = #8) or (Key = '-') or
    ((Key >= '0') and (Key <= '9')) or (Key <= ' ')) then
    Key := #0;

end;

procedure TFgeog.BitBtn2Click(Sender: TObject);
begin
  ClientWidth := 420;
end;

procedure TFgeog.BitBtn1Click(Sender: TObject);
begin

  if tp = 1 then
  begin
    Querdob.SQL.Clear;
    Querdob.SQL.Add
      ('select pin,name, tip,rod, priz from geography where tip=1 and priz=1 and name="'
      + Edit1.text + '"');
    Querdob.Open;
    if Querdob.recordcount > 0 then
    begin
      showmessage('Данная страна уже есть в справочнике!');
      BitBtn2.click;
    end
    else
    begin
      Querdob.SQL.Clear;
      Querdob.SQL.Add('insert into geography(name,tip,rod,priz) values ("' +
        Edit1.text + '",1,0,1)');
      Querdob.ExecSQL;
    end;
    SpeedButton1.click;
  end;

  if tp = 2 then
  begin
    Querdob.SQL.Clear;
    Querdob.SQL.Add
      ('select pin,name, tip,rod, priz from geography where tip=2 and priz=1 and name="'
      + Edit1.text + '"');
    Querdob.Open;
    if Querdob.recordcount > 0 then
    begin
      showmessage('Данная регион уже есть в справочнике!');
      BitBtn2.click;
    end
    else
    begin
      Querdob.SQL.Clear;
      Querdob.SQL.Add('insert into geography(name,tip,rod,priz) values ("' +
        Edit1.text + '",2,' + Quergeo1.Fieldbyname('pin').AsString + ',1)');
      Querdob.ExecSQL;
    end;
    SpeedButton2.click;
    Quergeo2.Refresh;
    DBLookupComboBox1Click(Sender);
  end;

  if tp = 3 then
  begin
    Querdob.SQL.Clear;
    Querdob.SQL.Add
      ('select pin,name, tip,rod, priz from geography where tip=3 and priz=1');
    Querdob.SQL.Add(' and (rod=' + Quergeo2.Fieldbyname('pin').AsString +
      ' or rod=' + Quergeo1.Fieldbyname('pin').AsString + ')');
    Querdob.SQL.Add(' and name="' + Edit1.text + '"');
    Querdob.SQL.Add(' order by name');
    Querdob.Open;
    DBGrid1.Columns[0].Title.Caption := 'Район';
    if Querdob.recordcount > 0 then
    begin
      showmessage('Данный район уже есть в справочнике!');
      BitBtn2.click;
    end
    else
    begin
      Querdob.SQL.Clear;
      Querdob.SQL.Add('insert into geography(name,tip,rod,priz) values ("' +
        Edit1.text + '",3,'); // +Quergeo1.fieldbyname('pin').AsString+',1)');
      if DBLookupComboBox2.text <> '' then
        Querdob.SQL.Add(Quergeo2.Fieldbyname('pin').AsString + ',1)');
      if ((DBLookupComboBox2.text = '') and (DBLookupComboBox1.text <> '')) then
        Querdob.SQL.Add(Quergeo1.Fieldbyname('pin').AsString + ',1)');
      if ((DBLookupComboBox2.text = '') and (DBLookupComboBox1.text = '')) then
        Querdob.SQL.Add('36,1)');
      Querdob.ExecSQL;
      SpeedButton3.click;
      DBLookupComboBox2Click(Sender);

    end;
  end;

  if tp = 4 then
  begin
    Querdob.SQL.Clear;
    Querdob.SQL.Add
      ('select pin,name, tip,rod, priz from geography where tip=3 and priz=1');
    Querdob.SQL.Add(' and (rod=' + Quergeo2.Fieldbyname('pin').AsString +
      ' or rod=' + Quergeo1.Fieldbyname('pin').AsString + ' or rod=' +
      Quergeo3.Fieldbyname('pin').AsString + ')');
    Querdob.SQL.Add(' and name="' + Edit1.text + '"');
    Querdob.SQL.Add(' order by name');
    Querdob.Open;
    DBGrid1.Columns[0].Title.Caption := 'Город';
    if Querdob.recordcount > 0 then
    begin
      showmessage('Данный город уже есть в справочнике!');
      BitBtn2.click;
    end
    else
    begin
      Querdob.SQL.Clear;
      Querdob.SQL.Add('insert into geography(name,tip,rod,priz) values ("' +
        Edit1.text + '",4,'); // +Quergeo1.fieldbyname('pin').AsString+',1)');
      if ((DBLookupComboBox2.text <> '') and (DBLookupComboBox3.text = '')) then
        Querdob.SQL.Add(Quergeo2.Fieldbyname('pin').AsString + ',1)');
      if ((DBLookupComboBox2.text = '') and (DBLookupComboBox1.text <> '') and
        (DBLookupComboBox3.text = '')) then
        Querdob.SQL.Add(Quergeo1.Fieldbyname('pin').AsString + ',1)');
      if ((DBLookupComboBox2.text = '') and (DBLookupComboBox1.text = '') and
        (DBLookupComboBox3.text = '')) then
        Querdob.SQL.Add('36,1)');
      if ((DBLookupComboBox3.text <> '')) then
        Querdob.SQL.Add(Quergeo3.Fieldbyname('pin').AsString + ',1)');
      showmessage(Quergeo3.Fieldbyname('pin').AsString);
      Querdob.ExecSQL;
      SpeedButton4.click;
      DBLookupComboBox2Click(Sender);

    end;
  end;

  if tp = 5 then
  begin
    Querdob.SQL.Clear;
    Querdob.SQL.Add
      ('select pin,name, tip,rod, priz from geography where tip=5 and priz=1');
    Querdob.SQL.Add(' and (rod=' + Quergeo3.Fieldbyname('pin').AsString +
      ' or rod=' + Quergeo2.Fieldbyname('pin').AsString + ' or rod=' +
      Quergeo1.Fieldbyname('pin').AsString + ')');
    Querdob.SQL.Add(' and name="' + Edit1.text + '"');
    Querdob.SQL.Add(' order by name');
    Querdob.Open;
    DBGrid1.Columns[0].Title.Caption := 'населенный пункт';
    if Querdob.recordcount > 0 then
    begin
      showmessage('Данный населенный пункт уже есть в справочнике!');
      BitBtn2.click;
    end
    else
    begin
      Querdob.SQL.Clear;
      Querdob.SQL.Add('insert into geography(name,tip,rod,priz) values ("' +
        Edit1.text + '",5,'); // +Quergeo1.fieldbyname('pin').AsString+',1)');
      if ((DBLookupComboBox2.text <> '') and (DBLookupComboBox3.text = '')) then
        Querdob.SQL.Add(Quergeo2.Fieldbyname('pin').AsString + ',1)');
      if ((DBLookupComboBox2.text = '') and (DBLookupComboBox1.text <> '') and
        (DBLookupComboBox3.text = '')) then
        Querdob.SQL.Add(Quergeo1.Fieldbyname('pin').AsString + ',1)');
      if ((DBLookupComboBox2.text = '') and (DBLookupComboBox1.text = '') and
        (DBLookupComboBox3.text = '')) then
        Querdob.SQL.Add('36,1)');
      if ((DBLookupComboBox3.text <> '')) then
        Querdob.SQL.Add(Quergeo3.Fieldbyname('pin').AsString + ',1)');

      Querdob.ExecSQL;
      SpeedButton5.click;
      DBLookupComboBox3Click(Sender);

    end;
  end;

  if tp = 6 then
  begin
    Querdob.SQL.Clear;
    Querdob.SQL.Add
      ('select pin,name, tip,rod, priz from geography where tip=6 and priz=1 ');
    if DBLookupComboBox4.text <> '' then
      Querdob.SQL.Add(' and (rod=' + Quergeo4.Fieldbyname('pin')
        .AsString + ')');
    if DBLookupComboBox5.text <> '' then
      Querdob.SQL.Add(' and (rod=' + Quergeo5.Fieldbyname('pin')
        .AsString + ')');
    Querdob.SQL.Add(' and name="' + Edit1.text + '"');
    Querdob.SQL.Add(' order by name');
    Querdob.Open;
    if Querdob.recordcount > 0 then
    begin
      showmessage('Данная страна уже есть в справочнике!');
      BitBtn2.click;
    end
    else
    begin
      Querdob.SQL.Clear;
      Querdob.SQL.Add('insert into geography(name,tip,rod,priz) values ("' +
        Edit1.text + '",6,');
      if (DBLookupComboBox4.text <> '') then
        Querdob.SQL.Add(Quergeo4.Fieldbyname('pin').AsString + ',1)');
      if (DBLookupComboBox5.text <> '') then
        Querdob.SQL.Add(Quergeo5.Fieldbyname('pin').AsString + ',1)');
      Querdob.ExecSQL;
      SpeedButton6.click;
      DBLookupComboBox3Click(Sender);
    end;

  end;

  Edit1.text := '';
end;

procedure TFgeog.SpeedButton2Click(Sender: TObject);
begin
  tp := 2;
  ClientWidth := 794;
  Querzap.SQL.Clear;
  Querzap.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=2 and priz=1');
  Querzap.SQL.Add(' and rod=' + Quergeo1.Fieldbyname('pin').AsString);
  Querzap.SQL.Add(' order by name');
  Querzap.Open;
  DBGrid1.Columns[0].Title.Caption := 'Регион';
  Edit1.SetFocus;
end;

procedure TFgeog.SpeedButton3Click(Sender: TObject);
begin
  tp := 3;
  ClientWidth := 794;
  Querzap.SQL.Clear;
  Querzap.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=3 and priz=1');
  Querzap.SQL.Add(' and (rod=' + Quergeo2.Fieldbyname('pin').AsString +
    ' or rod=' + Quergeo1.Fieldbyname('pin').AsString + ')');
  Querzap.SQL.Add(' order by name');
  Querzap.Open;
  DBGrid1.Columns[0].Title.Caption := 'Район';
  Edit1.SetFocus;
end;

procedure TFgeog.SpeedButton4Click(Sender: TObject);
begin
  tp := 4;
  ClientWidth := 794;
  Querzap.SQL.Clear;
  Querzap.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=4 and priz=1');
  Querzap.SQL.Add(' and (rod=' + Quergeo3.Fieldbyname('pin').AsString +
    ' or rod=' + Quergeo2.Fieldbyname('pin').AsString + ' or rod=' +
    Quergeo1.Fieldbyname('pin').AsString + ')');
  Querzap.SQL.Add(' order by name');
  Querzap.Open;
  DBGrid1.Columns[0].Title.Caption := 'Город';
  Edit1.SetFocus;
end;

procedure TFgeog.SpeedButton5Click(Sender: TObject);
begin
  tp := 5;
  ClientWidth := 794;
  Querzap.SQL.Clear;
  Querzap.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=5 and priz=1');
  Querzap.SQL.Add(' and (rod=' + Quergeo3.Fieldbyname('pin').AsString +
    ' or rod=' + Quergeo2.Fieldbyname('pin').AsString + ' or rod=' +
    Quergeo1.Fieldbyname('pin').AsString + ')');
  Querzap.SQL.Add(' order by name');
  Querzap.Open;
  DBGrid1.Columns[0].Title.Caption := 'Населенный пункт';
  Edit1.SetFocus;
end;

procedure TFgeog.DBLookupComboBox5Click(Sender: TObject);
begin
  Quergeo6.SQL.Clear;
  Quergeo6.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=6 and priz=1');
  Quergeo6.SQL.Add(' and rod=' + Quergeo5.Fieldbyname('pin').AsString);
  Quergeo6.Open;
  DBLookupComboBox4.Visible := false;
  Label4.Visible := false;
  DBLookupComboBox6.Visible := true;
  Label6.Visible := true;
  Quergeo4.Close;
  // Quergeo5.close;

  qnasp := Quergeo5.Fieldbyname('pin').AsInteger;
end;

procedure TFgeog.DBLookupComboBox6Click(Sender: TObject);
begin
  Quergeo6.SQL.Clear;
  Quergeo6.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=6 and priz=1');
  if DBLookupComboBox5.text <> '' then
    Quergeo6.SQL.Add(' and rod=' + Quergeo5.Fieldbyname('pin').AsString);
  if DBLookupComboBox4.text <> '' then
    Quergeo6.SQL.Add(' and rod=' + Quergeo4.Fieldbyname('pin').AsString);
  Quergeo6.Open;
  ulica();
  Edit3.SetFocus;
end;

procedure TFgeog.SpeedButton6Click(Sender: TObject);
begin
  tp := 6;
  ClientWidth := 794;
  Querzap.SQL.Clear;
  Querzap.SQL.Add
    ('select pin,name, tip,rod, priz from geography where tip=6 and priz=1');
  if DBLookupComboBox5.text <> '' then
    Querzap.SQL.Add(' and (rod=' + Quergeo5.Fieldbyname('pin').AsString + ')');
  if DBLookupComboBox4.text <> '' then
    Querzap.SQL.Add(' and (rod=' + Quergeo4.Fieldbyname('pin').AsString + ')');

  Querzap.SQL.Add(' order by name');
  Querzap.Open;
  if DBLookupComboBox4.text = '' then
    DBGrid1.Columns[0].Title.Caption := 'Населенный пункт'
  else
    DBGrid1.Columns[0].Title.Caption := 'Город';

  Edit1.SetFocus;
end;

procedure TFgeog.BitBtn5Click(Sender: TObject);
begin
  SpeedButton1.Visible := true;
  SpeedButton2.Visible := true;
  SpeedButton3.Visible := true;
  SpeedButton4.Visible := true;
  SpeedButton5.Visible := true;
  SpeedButton6.Visible := true;
end;

procedure TFgeog.BitBtn6Click(Sender: TObject);
begin
  DBLookupComboBox1.KeyValue := 0;
  DBLookupComboBox2.KeyValue := 0;
  DBLookupComboBox3.KeyValue := 0;
  DBLookupComboBox4.KeyValue := 0;
  DBLookupComboBox5.KeyValue := 0;
  DBLookupComboBox6.KeyValue := 0;
end;

procedure TFgeog.BitBtn4Click(Sender: TObject);
begin
  qreg := areg1;
  qrain := areg2;
  qgor := areg3;
  qnasp := areg4;
  Close;
end;

procedure TFgeog.FormCreate(Sender: TObject);
begin

  Quergeo1 := Tquery.Create(Self);
  Quergeo1.DatabaseName := Dbas;
  Quergeo2 := Tquery.Create(Self);
  Quergeo2.DatabaseName := Dbas;
  Quergeo3 := Tquery.Create(Self);
  Quergeo3.DatabaseName := Dbas;
  Quergeo4 := Tquery.Create(Self);
  Quergeo4.DatabaseName := Dbas;
  Quergeo5 := Tquery.Create(Self);
  Quergeo5.DatabaseName := Dbas;
  Quergeo6 := Tquery.Create(Self);
  Quergeo6.DatabaseName := Dbas;
  Querzap := Tquery.Create(Self);
  Querzap.DatabaseName := Dbas;
  Querdob := Tquery.Create(Self);
  Querdob.DatabaseName := Dbas;
  Querwok := Tquery.Create(Self);
  Querwok.DatabaseName := Dbas1;

  DataQuergeo1 := TDataSource.Create(Self);
  DataQuergeo1.DataSet := Quergeo1;
  DataQuergeo2 := TDataSource.Create(Self);
  DataQuergeo2.DataSet := Quergeo2;
  DataQuergeo3 := TDataSource.Create(Self);
  DataQuergeo3.DataSet := Quergeo3;
  DataQuergeo4 := TDataSource.Create(Self);
  DataQuergeo4.DataSet := Quergeo4;
  DataQuergeo5 := TDataSource.Create(Self);
  DataQuergeo5.DataSet := Quergeo5;
  DataQuergeo6 := TDataSource.Create(Self);
  DataQuergeo6.DataSet := Quergeo6;
  DataQuerzap := TDataSource.Create(Self);
  DataQuerzap.DataSet := Querzap;
  DataQuerdob := TDataSource.Create(Self);
  DataQuerdob.DataSet := Querdob;
  DataQuerwok := TDataSource.Create(Self);
  DataQuerwok.DataSet := Querwok;

  DBLookupComboBox1.ListSource := DataQuergeo1;
  DBLookupComboBox1.KeyField := 'pin';
  DBLookupComboBox1.ListField := 'name';

  DBLookupComboBox2.ListSource := DataQuergeo2;
  DBLookupComboBox2.KeyField := 'pin';
  DBLookupComboBox2.ListField := 'name';

  DBLookupComboBox3.ListSource := DataQuergeo3;
  DBLookupComboBox3.KeyField := 'pin';
  DBLookupComboBox3.ListField := 'name';

  DBLookupComboBox4.ListSource := DataQuergeo4;
  DBLookupComboBox4.KeyField := 'pin';
  DBLookupComboBox4.ListField := 'name';

  DBLookupComboBox5.ListSource := DataQuergeo5;
  DBLookupComboBox5.KeyField := 'pin';
  DBLookupComboBox5.ListField := 'name';

  DBLookupComboBox6.ListSource := DataQuergeo6;
  DBLookupComboBox6.KeyField := 'pin';
  DBLookupComboBox6.ListField := 'name';

  DBGrid1.DataSource := DataQuerzap;

  Quergeo1.SQL.Clear;
  Quergeo1.SQL.Add
    ('select pin,name, tip,rod, priz  from geography where tip=1 and priz=1');
  Quergeo1.Open;
  Quergeo2.SQL.Clear;
  Quergeo2.SQL.Add
    ('select pin,name, tip,rod, priz  from geography where tip=2 and priz=1 and rod=1 order by name');
  Quergeo2.Open;
  Quergeo3.SQL.Clear;
  Quergeo3.SQL.Add
    ('select pin,name, tip,rod, priz  from geography where tip=3 and priz=1 order by name');
  Quergeo3.Open;
  Quergeo4.SQL.Clear;
  Quergeo4.SQL.Add
    ('select pin,name, tip,rod, priz  from geography where tip=4 and priz=1 order by name');
  Quergeo4.Open;
  Quergeo5.SQL.Clear;
  Quergeo5.SQL.Add
    ('select pin,name, tip,rod, priz  from geography where tip=5 and priz=1 order by name');
  Quergeo5.Open;
  Quergeo5.SQL.Clear;
  Quergeo5.SQL.Add
    ('select pin,name, tip,rod, priz  from geography where tip=6 and priz=1 order by name');
  Quergeo5.Open;

end;

procedure TFgeog.BitBtn3Click(Sender: TObject);
begin
  if ageog = 1 then
  begin
    if DBLookupComboBox1.text <> '' then
      stradr := DBLookupComboBox1.text + ',';
    if DBLookupComboBox2.text <> '' then
      stradr := stradr + DBLookupComboBox2.text + ',';
    if DBLookupComboBox3.text <> '' then
      stradr := stradr + DBLookupComboBox3.text + ',';
    if DBLookupComboBox4.text <> '' then
      stradr := stradr + DBLookupComboBox4.text + ',';
    if DBLookupComboBox5.text <> '' then
      stradr := stradr + DBLookupComboBox5.text + ',';

    if ((ComboBox1.text <> '') and (Edit2.text <> '')) then
      stradr := stradr + ComboBox1.text + '.' + Edit2.text + ','
    else
      stradr := stradr + DBLookupComboBox6.text;

    if Edit3.text <> '' then
      stradr := stradr + Edit3.text + ',';
    if Edit4.text <> '' then
      stradr := stradr + Edit4.text;
    nameul := ComboBox1.text + '.' + Edit2.text;

    Stud_acc.Edit13.text := '';
    Stud_acc.Edit13.text := stradr;
    if CheckBox1.Checked then
      Stud_acc.Edit14.text := stradr;
  end;

  if ageog = 4 then
  begin
    Datamodule1.spschool.Filtered := false;
    if ((DBLookupComboBox5.text <> '') and (DBLookupComboBox4.text = '')) then
    begin
      Datamodule1.spschool.Filter := '';
      Datamodule1.spschool.Filter := 'mest4=' + Quergeo5.Fieldbyname
        ('pin').AsString;
    end;
    if ((DBLookupComboBox4.text <> '') and (DBLookupComboBox5.text = '')) then
    begin
      Datamodule1.spschool.Filter := '';
      Datamodule1.spschool.Filter := 'mest3=' + Quergeo4.Fieldbyname
        ('pin').AsString;
    end;
    if ((DBLookupComboBox3.text <> '') and (DBLookupComboBox5.text = '') and
      (DBLookupComboBox4.text = '')) then
    begin
      Datamodule1.spschool.Filter := '';
      Datamodule1.spschool.Filter := 'mest2=' + Quergeo3.Fieldbyname
        ('pin').AsString;
    end;
    if ((DBLookupComboBox2.text <> '') and (DBLookupComboBox3.text = '') and
      (DBLookupComboBox5.text = '') and (DBLookupComboBox4.text = '')) then
    begin
      Datamodule1.spschool.Filter := '';
      Datamodule1.spschool.Filter := 'mest1=' + Quergeo2.Fieldbyname
        ('pin').AsString;
    end;
    if ((DBLookupComboBox1.text <> '') and (DBLookupComboBox2.text = '') and
      (DBLookupComboBox3.text = '') and (DBLookupComboBox5.text = '') and
      (DBLookupComboBox4.text = '')) then
    begin
      Datamodule1.spschool.Filter := '';
      Datamodule1.spschool.Filter := 'mest0=' + Quergeo1.Fieldbyname
        ('pin').AsString;
    end;
    Datamodule1.spschool.IndexName := 'tipob';
    Datamodule1.spschool.Filtered := true;
  end;
  Close;

end;

procedure TFgeog.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Edit3.SetFocus;
end;

procedure TFgeog.DBLookupComboBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Quergeo1.SQL.Clear;
  Quergeo1.SQL.Add
    ('select pin,name, tip,rod, priz  from geography where tip=1 and priz=1');
  Quergeo1.Open;
end;

procedure TFgeog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Quergeo1.SQL.Clear;
  Quergeo1.Close;
  Quergeo2.SQL.Clear;
  Quergeo2.Close;
  Quergeo3.SQL.Clear;
  Quergeo3.Close;
  Quergeo4.SQL.Clear;
  Quergeo4.Close;
  Quergeo5.SQL.Clear;
  Quergeo5.Close;
  Quergeo5.SQL.Clear;
  Quergeo5.Close;
  Querwok.SQL.Clear;
  Querwok.Close;
  if prover = true then
  begin
    qreg := areg1;
    qrain := areg2;
    qgor := areg3;
    qnasp := areg4;
  end;
end;

end.
