unit untClientResponseAPIMagento;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  TFormClientResponseAPIMagento = class(TForm)
    wbResponseAPIMagento: TWebBrowser;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientResponseAPIMagento: TFormClientResponseAPIMagento;

implementation

{$R *.dfm}

procedure TFormClientResponseAPIMagento.FormShow(Sender: TObject);
begin
  wbResponseAPIMagento.Navigate('file:///' + ExtractFilePath(Application.ExeName) + 'response_api_magento_v1.html');
end;

end.
