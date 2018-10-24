program Clipper4Web;

uses
  Vcl.Forms,
  unt_principal in 'unt_principal.pas' {Frm_Main},
  UProjectUtils in 'UProjectUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Main, Frm_Main);
  Application.Run;
end.
