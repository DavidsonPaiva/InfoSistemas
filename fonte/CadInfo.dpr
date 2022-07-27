program CadInfo;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmCadCliente},
  uConsultaCEP in 'uConsultaCEP.pas',
  uEmail in 'uEmail.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.Run;
end.
