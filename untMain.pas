unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Rtti, IdHttp, Controls, Forms, Dialogs, StdCtrls, ExtCtrls;

type
  TFormMain = class(TForm)
    gbRequest: TGroupBox;
    btnLogin: TButton;
    edtPassword: TLabeledEdit;
    edtUsername: TLabeledEdit;
    gbResponse: TGroupBox;
    memPrincipal: TMemo;
    cbMetodoAPIMagento: TComboBox;
    Label1: TLabel;
    edtPortaApache: TLabeledEdit;
    edtCustomerId: TLabeledEdit;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
  untClientResponseAPIMagento;

procedure TFormMain.btnLoginClick(Sender: TObject);
var
  sURL,
  sTopoHTML,
  sSessionID: string;
  ihIdHttp: TIdHttp;
  ssStringStream: TStringStream;
  slDadosResposta: TStringList;
begin
  slDadosResposta := TStringList.Create;
  ssStringStream := TStringStream.Create;
  ihIdHttp := TIdHTTP.Create(nil);
  try
    try
      sTopoHTML := '<!DOCTYPE HTML>' + sLineBreak +
                   '<html lang="pt-br">' + sLineBreak +
                   '	<head>' + sLineBreak +
                   '		<meta charset="UTF-8">' + sLineBreak +
                   '		<title>' + sLineBreak +
                   '			Magento Delphi SOAP V: 1' + sLineBreak +
                   '		</title>' + sLineBreak +
                   '		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />' + sLineBreak +
                   '	</head>' + sLineBreak +
                   '	<body>';

      memPrincipal.Clear;
      memPrincipal.Lines.Add('Método call executado conforme link >> http://devdocs.magento.com/guides/m1x/api/soap/customer/customer.html');

      sURL := 'http://localhost:' + edtPortaApache.Text +
              '/magento_delphi_soap_v1.php?username=' + Trim(edtUsername.Text) +
              '&password=' + Trim(edtPassword.Text) +
              '&customerId=' + Trim(edtCustomerId.Text) +
              '&metodoAPI=' + cbMetodoAPIMagento.Items[cbMetodoAPIMagento.ItemIndex];

      ihIdHttp.Get(sURL, ssStringStream);

      slDadosResposta.Add(sTopoHTML);
      slDadosResposta.Add(ssStringStream.DataString);
      slDadosResposta.Add('  </body>');
      slDadosResposta.Add('</html>');

      slDadosResposta.SaveToFile(ExtractFilePath(Application.ExeName) + 'response_api_magento_v1.html');
      memPrincipal.Lines.Add('Função call executada com sucesso.');

      if FormClientResponseAPIMagento = nil then
        Application.CreateForm(TFormClientResponseAPIMagento, FormClientResponseAPIMagento);

      FormClientResponseAPIMagento.ShowModal;

    except
      on E:Exception do
        memPrincipal.Lines.Add('Mensagem de retorno da API Magento Webservice SOAP Versão 1: ' + E.Message);
    end;

  finally
    FreeAndNil(slDadosResposta);
    FreeAndNil(ssStringStream);
    FreeAndNil(ihIdHttp);
    FreeAndNil(FormClientResponseAPIMagento);
  end;
end;

end.
