unit LATIHAN1_DBTambahData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm8 = class(TForm)
    grp1: TGroupBox;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  updt:string;

implementation
uses LATIHAN1_DB, Latihan1;
{$R *.dfm}


procedure TForm8.bersih;
begin
Edit1.Text := '00:00';
Edit2.Text := '00:00';
cbb1.Text := '--PilihHari--';
Edit3.Text := '-';
Edit4.Text := '-';
Edit5.Text := '-';
Edit6.Text := '0';

Form7.qry1.SQL.Clear;
form7.qry1.SQL.Add('select * from jadwal_tabel');
Form7.qry1.Open;
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=30;
end;

procedure TForm8.btn1Click(Sender: TObject);
var a:integer;
begin
  if (Edit1.text='') or (Edit1.text='00.00') or (Edit2.Text='') or (Edit2.text='00.00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (Edit3.text='') or (Edit3.text='-') or (Edit4.Text='') or (Edit4.text='-')then
  begin
    ShowMessage('Inputan Ruangan atau Mata Kuliah masih belum sesuai');
  end else
  if (Edit5.text='') or (Edit5.text='-') or (Edit6.Text='') or (Edit6.text='0')then
  begin
    ShowMessage('Inputan Kelas atau Total Kehadian masih belum sesuai');
  end else
  if  (form7.qry1.Locate('hari',cbb1.text,[]))AND (form7.qry1.Locate('jam_awal',Edit1.text,[]))then
  begin
    ShowMessage('DATA SUDAH ADA DIDALAM SISTEM');
    Edit1.SetFocus;
  end else
  begin
    a:=form7.qry1.RecordCount+1;
with Form7.qry1  do
begin
  SQL.Clear;
  SQL.Add('insert into jadwal_tabel values("'+inttostr(a)+'","'+Edit1.Text+'","'+Edit2.Text+'","'+cbb1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from jadwal_tabel');
  Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  bersih;
end;
end;
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
try
updt:=form7.qry1.Fields[0].AsString;
Edit1.Text:= form7.qry1.fields[1].AsString;
Edit2.Text:= form7.qry1.fields[2].AsString;
cbb1.Text:= form7.qry1.fields[3].AsString;
dtp1.date:= form7.qry1.fields[4].AsDateTime;
Edit3.Text:= form7.qry1.fields[5].AsString;
Edit4.Text:= form7.qry1.fields[6].AsString;
Edit5.Text:= form7.qry1.fields[7].AsString;
Edit6.Text:= form7.qry1.fields[8].AsString;
except

end;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
Form7.qry1.SQL.Clear;
form7.qry1.SQL.Add('select * from jadwal_tabel');
Form7.qry1.Open;
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=30;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if (Edit1.text='') or (Edit1.text='00.00') or (Edit2.Text='') or (Edit2.text='00.00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (Edit3.text='') or (Edit3.text='-') or (Edit4.Text='') or (Edit4.text='-')then
  begin
    ShowMessage('Inputan Ruangan atau Mata Kuliah masih belum sesuai');
  end else
  if (Edit5.text='') or (Edit5.text='-') or (Edit6.Text='') or (Edit6.text='0')then
  begin
    ShowMessage('Inputan Kelas atau Total Kehadian masih belum sesuai');
  end else
  if(Edit1.Text= form7.qry1.fields[1].AsString) and (cbb1.Text= Form7.qry1.fields[3].AsString)then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end
  else
  begin
    //Kode Update
    with form7.qry1 do
    begin
      sql.clear;
      SQL.Add('update jadwal_tabel set jam_awal= "'+ edit1.Text +'", jam_akhir= "' + edit2.Text + '" where "'+ updt +'"');
      ExecSQL;

      
      ShowMessage('Data Berhasil Di Update');
      bersih;
    end;
    end;
end;
procedure TForm8.btn3Click(Sender: TObject);
begin
  if (Edit1.text='') or (Edit1.text='00.00') or (Edit2.Text='') or (Edit2.text='00.00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
  end else
  if (Edit3.text='') or (Edit3.text='-') or (Edit4.Text='') or (Edit4.text='-')then
  begin
    ShowMessage('Inputan Ruangan atau Mata Kuliah masih belum sesuai');
  end else
  if (Edit5.text='') or (Edit5.text='-') or (Edit6.Text='') or (Edit6.text='0')then
  begin
    ShowMessage('Inputan Kelas atau Total Kehadian masih belum sesuai');
  end else
  begin
    //kode Delete
    if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mrYes then
    begin
      with Form7.qry1 do
      begin
        SQL.Clear;
        SQL.Add('delete from jadwal_tabel where "'+updt+'"');
        ExecSQL;

        sql.Clear;
        sql.add('select * from jadwal_tabel');
        Open;
        ShowMessage('Data Berhasil DI Hapus');
        bersih;
    end;
    end else
    begin
      ShowMessage('Data Batal Dihapus');
  end;
end;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
bersih;
end;

end.
