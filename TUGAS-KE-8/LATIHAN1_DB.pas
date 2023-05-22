unit LATIHAN1_DB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, TeEngine, Series, ExtCtrls,
  TeeProcs, Chart, frxClass, frxDBSet;

type
  TForm7 = class(TForm)
    con1: TADOConnection;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    qry1: TADOQuery;
    cht1: TChart;
    brsrsSeries1: TBarSeries;
    btn1: TButton;
    qry2: TADOQuery;
    btn2: TButton;
    btn3: TButton;
    frxjadwal: TfrxDBDataset;
    frxRPTJadwal: TfrxReport;
    frxDetailJadwal1: TfrxReport;
    frxDBDetailJadwal: TfrxDBDataset;
    btn4: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure frxRPTJadwalClickObject(view: TfrxView;
      Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses LATIHAN1_DBTambahData;

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
begin
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=30;
end;

procedure TForm7.btn1Click(Sender: TObject);
var i:Integer;
begin
qry2.SQL.Clear;
qry2.SQL.Add('select count(no)as jumlah_kelas,sum(total_kehadiran) as total_siswa,kelas as nama_kelas from jadwal_tabel group by kelas');
qry2.Open;
cht1.Series[0].Clear; //clear grafik
for i:=1 to qry2.RecordCount do
begin
cht1.Series[0].Add(StrToInt(qry2.fieldbyname('total_siswa').AsString),qry2.fieldbyname('nama_kelas').AsString);
qry2.Next;
end;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select * from jadwal_tabel');
qry1.Open;

dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=30;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
frxRPTJadwal.ShowReport();
end;

procedure TForm7.frxRPTJadwalClickObject(view: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.Name ='Memo7' then
     begin
       qry2.SQL.Clear;
       qry2.SQL.ADD('Select * from jadwal_tabel where kelas="'+view.TagStr+'"');
       qry2.Open;

      frxDetailJadwal1.showreport{};
     end;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
    Form8.ShowModal;
end;

end.
