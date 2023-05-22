unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    grp1: TGroupBox;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
var x,y,z : real;
begin
   x:=StrToFloat(edt1.Text);
  y:=StrToFloat(edt2.Text);
  z:=x+y;
  edt3.Text:=FloatToStr(z);
end;

procedure TForm1.btn3Click(Sender: TObject);
var x,y,z : real;
begin
 x:=StrToFloat(edt1.Text);
 y:=StrToFloat(edt2.Text);
 z:=x-y;
 edt4.Text:=FloatToStr(z);
end;

procedure TForm1.btn4Click(Sender: TObject);
var x,y,z : real;
begin
x:=StrToFloat(edt1.Text);
y:=StrToFloat(edt2.Text);
z:=x*y;
edt5.Text:=FloatToStr(z);
end;

procedure TForm1.btn5Click(Sender: TObject);
var x,y,z : real;
begin
 x:=StrToFloat(edt1.Text);
 y:=StrToFloat(edt2.Text);
 z:=x / y;
 edt6.Text:=FloatToStr(z);
end;

procedure TForm1.btn1Click(Sender: TObject);
var x,y,z : real;
begin
  x:=StrToFloat(edt1.Text);
  y:=StrToFloat(edt2.Text);
  z:=x+y;
  edt3.Text:=FloatToStr(z);

 x:=StrToFloat(edt1.Text);
 y:=StrToFloat(edt2.Text);
 z:=x-y;
 edt4.Text:=FloatToStr(z);

 x:=StrToFloat(edt1.Text);
y:=StrToFloat(edt2.Text);
z:=x*y;
edt5.Text:=FloatToStr(z);

 x:=StrToFloat(edt1.Text);
 y:=StrToFloat(edt2.Text);
 z:=x / y;
 edt6.Text:=FloatToStr(z);


end;

end.
