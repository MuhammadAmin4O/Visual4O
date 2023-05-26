program JADWAL_PRAKTEK;

uses
  Forms,
  Uviewjadwal in 'Uviewjadwal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
