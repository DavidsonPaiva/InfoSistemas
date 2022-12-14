unit uConsultaCEP;

interface

uses
  System.Classes, Rest.Response.Adapter, Rest.Types, Rest.Client, System.IniFiles,
  System.SysUtils, Vcl.Forms, Data.DB, Rest.Json, Winapi.Windows, Winapi.Messages, StrUtils, DateUtils,

  FireDAC.Stan.ExprFuncs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Phys.ODBCBase;

type
  TRetornoCEP = record
    cep: string;
    logradouro: string;
    complemento: string;
    bairro: string;
    localidade: string;
    uf: string;
    ibge: string;
    gia: string;
    ddd: string;
    siafi: string;
  end;

  IConsultaCEP = interface
    ['{C3B596D1-F2E3-4C39-921E-15F1B5676436}']
    function Execute: TRetornoCEP;
  end;

  TConsultaCEP = class(TInterfacedObject, IConsultaCEP)
  private
    { private declarations }
    FCEP: String;

    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;

    function ConsultarCep: TRetornoCEP;
  protected
    { protected declarations }
    procedure Init;
  public
    { public declarations }
    constructor Create(const pCEP: String);
    destructor Destroy; override;
    class function New(const pCEP: String): IConsultaCEP;
    function Execute: TRetornoCEP;
  end;

implementation

uses System.Json;

const
  BaseURL = 'https://viacep.com.br/ws/';

  { TConsultaCEP }

class function TConsultaCEP.New(const pCEP: String): IConsultaCEP;
begin
  Result := Self.Create(pCEP);
end;

function TConsultaCEP.ConsultarCep: TRetornoCEP;
var
  FRetorno: TRetornoCEP;
  JSonString: string;
  JSValue: TJSONValue;
begin
  try
    RESTRequest.Method := rmGET;
    RESTRequest.Resource := Format('%s/json', [FCEP]);
    RESTRequest.Execute;

    if not RESTResponse.Status.Success then
      exit;

    JSonString := RESTResponse.Content;
    JSValue := TJSONObject.ParseJSONValue(JSonString);

    if JSonString.Contains('erro') then
    begin
      const
        ComErro = 'true';

        if JSValue.GetValue<string>('erro') = ComErro then
          raise Exception.CreateFmt('CEP %s n?o foi encontrado na base de dados!', [FCEP]);
    end;

    FRetorno.cep := JSValue.GetValue<string>('cep');
    FRetorno.logradouro := JSValue.GetValue<string>('logradouro');
    FRetorno.complemento := JSValue.GetValue<string>('complemento');
    FRetorno.bairro := JSValue.GetValue<string>('bairro');
    FRetorno.localidade := JSValue.GetValue<string>('localidade');
    FRetorno.uf := JSValue.GetValue<string>('uf');
    FRetorno.ibge := JSValue.GetValue<string>('ibge');
    FRetorno.gia := JSValue.GetValue<string>('gia');
    FRetorno.ddd := JSValue.GetValue<string>('ddd');
    FRetorno.siafi := JSValue.GetValue<string>('siafi');

    Result := FRetorno;
  except
    on E: Exception do
      raise Exception.Create('Ocorreu um erro ao sincronizar os dados com Viacep. ' + sLineBreak + sLineBreak + E.Message);
  end;
end;

constructor TConsultaCEP.Create(const pCEP: String);
begin
  FCEP := pCEP.Trim;

  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);
  RESTResponseDataSetAdapter := TRESTResponseDataSetAdapter.Create(nil);

  Init;
end;

destructor TConsultaCEP.Destroy;
begin
  inherited;
  RESTResponseDataSetAdapter.Free;
  RESTClient.Free;
  RESTRequest.Free;
  RESTResponse.Free;
end;

function TConsultaCEP.Execute: TRetornoCEP;
begin
  if FCEP.IsEmpty then
    raise Exception.Create('Favor preencher um cep v?lido!');

  Result := ConsultarCep;
end;

procedure TConsultaCEP.Init;
begin
  RESTClient.Accept := '*/*';
  RESTClient.AcceptCharset := 'utf-8, *;q=0.8';
  RESTClient.ContentType := 'application/json';
  RESTClient.Params.Clear;
  RESTClient.BaseURL := BaseURL;

  RESTResponse.ContentType := 'application/json';

  RESTRequest.Client := RESTClient;
  RESTRequest.Response := RESTResponse;
  RESTRequest.Timeout := 0;

  RESTResponseDataSetAdapter.StringFieldSize := 10000;
  RESTResponseDataSetAdapter.Response := RESTResponse;
end;

end.
