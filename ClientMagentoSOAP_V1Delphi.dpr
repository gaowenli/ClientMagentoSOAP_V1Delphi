program ClientMagentoSOAP_V1Delphi;

uses
  Forms,
  Themes,
  Styles,
  untMain in 'untMain.pas' {FormMain},
  untClientResponseAPIMagento in 'untClientResponseAPIMagento.pas' {FormClientResponseAPIMagento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Light');
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
