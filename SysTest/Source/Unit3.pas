unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IBX.IBStoredProc, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  TForm3 = class(TForm)
    IBDatabase1: TIBDatabase;
    DataSource1: TDataSource;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    IBQuery2: TIBQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
if not IBQuery1.Bof then begin
  IBQuery1.First;
  Edit1.Text:= IBQuery1.FieldByName('Discipline_id').AsString;
  Edit2.Text:= IBQuery1.FieldByName('Discipline_Name').AsString;
  end else
  ShowMessage('В начале!');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if not IBQuery1.Eof then begin
  IBQuery1.Next;
  Edit1.Text:= IBQuery1.FieldByName('Discipline_id').AsString;
  Edit2.Text:= IBQuery1.FieldByName('Discipline_Name').AsString;
  end else
  ShowMessage('В Конце!');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if not IBQuery1.Eof then begin
  IBQuery1.Last;
  Edit1.Text:= IBQuery1.FieldByName('Discipline_id').AsString;
  Edit2.Text:= IBQuery1.FieldByName('Discipline_Name').AsString;
  end else
  ShowMessage('В Конце!');
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
if not IBQuery1.Bof then begin
  IBQuery1.Prior;
  Edit1.Text:= IBQuery1.FieldByName('Discipline_id').AsString;
  Edit2.Text:= IBQuery1.FieldByName('Discipline_Name').AsString;
  end else
  ShowMessage('В начале!');
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
ibquery2.Active:=false;
ibquery2.SQL.Clear;
ibquery2.SQL.Add('insert into disciplines(discipline_id,discipline_name) values(gen_id(disciplinesgen,1),'+
''''+edit2.Text+''''+');');
ibquery2.open;
IBTransaction1.Commit;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  IBQuery1.Last;
  Edit1.Text:=IntToStr(IBQuery1.FieldByName('Discipline_id').AsInteger + 1);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  if IBQuery1.Bof then begin
  IBQuery1.First;
  Edit1.Text:= IBQuery1.FieldByName('Discipline_id').AsString;
  Edit2.Text:= IBQuery1.FieldByName('Discipline_Name').AsString;
  end;
end;

end.
