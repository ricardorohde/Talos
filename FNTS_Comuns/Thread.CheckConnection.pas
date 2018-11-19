unit Thread.CheckConnection;

interface

uses
  WiniNet,System.Classes;

type
  TLANStatus                   = (tlNULL,tlWorking,tlNotWorking);
  TInternetStatus              = (tiNULL,tiOnline,tiOffline);
  TConnectionOnChangeStatus    = procedure(LANStatus:TLANStatus;InternetStatus:TInternetStatus;xMsg:String='') of object;
  TConnectionOnException       = procedure(EClassName,EMessage:string;xMsg:String='') of object;

  TThreadCheckConnection = class(TThread)
  private
    CONST
      PING_GOOGLE_DOMAIN_BR   = 'https://www.google.com.br';
      PING_FACEBOOK_DOMAIN_BR = 'https://www.facebook.com.br';
      PING_GOOGLE_IPV4_BR     = '173.194.42.152';
      PING_GOOGLE_IPV4_USA    = '173.194.42.148';
      ERR_LOCAL_NETWORK       = 'Cabo de rede desconectado ou rede local mal-configurada';
      ERR_INTERNET_OFFLINE    = 'Sem conexão com a internet.';
    class var
      FInstance : TThreadCheckConnection;
    var
      FInternetStatus : TInternetStatus;
      FLANStatus      : TLANStatus;
      FTimeCheck      : Cardinal;
      FOnException    : TConnectionOnException;
      FLastUpdate     : Cardinal;

      FOnChangeStatus : TConnectionOnChangeStatus;
    procedure setStatus(NewLANStatus:TLANStatus;NewInternetStatus:TInternetStatus;xMsg:String='');

  protected
    function CheckInternet()      : Boolean;
    function CheckConexaoLocal()  : Boolean;
    constructor Create;
    procedure Execute; override;
  public
    destructor Destroy;override;
    class function getInstance()  : TThreadCheckConnection;
    property OnStatusChange:TConnectionOnChangeStatus read FOnChangeStatus write FOnChangeStatus;
    property OnException:TConnectionOnException read FOnException write FOnException;
    property LANStatus : TLANStatus read FLANStatus;
    property InternetStatus : TInternetStatus read FInternetStatus;
    property IntervaloVerificacao:Cardinal read FTimeCheck write FTimeCheck default 5;
    procedure CheckConnection;
  end;

implementation

uses
  System.SysUtils, System.Types;

{ TThreadCheckConnection }

constructor TThreadCheckConnection.Create;
BEGIN
  inherited Create(True);
  Priority        :=  tpLower;
  FTimeCheck      :=  5;        //Checar a cada 5 Segundos
  FLastUpdate     :=  0;
  FInternetStatus :=  tiNULL;
  FLANStatus      :=  tlNULL;
END;

destructor TThreadCheckConnection.Destroy;
BEGIN
  FInstance :=  nil;
  inherited;
END;

class function TThreadCheckConnection.getInstance: TThreadCheckConnection;
BEGIN
  if not Assigned(FInstance) then
    FInstance :=  TThreadCheckConnection.Create;
  Result  :=  FInstance;
END;

procedure TThreadCheckConnection.setStatus(NewLANStatus:TLANStatus;NewInternetStatus:TInternetStatus;xMsg:String);
BEGIN
  FInternetStatus :=  NewInternetStatus;
  FLANStatus      :=  NewLANStatus;
  if Assigned(FOnChangeStatus) then
   FOnChangeStatus(NewLANStatus,NewInternetStatus,xMsg);
END;

function TThreadCheckConnection.CheckInternet() : Boolean;
var test1,test2,test3,test4:LongBool;
BEGIN
  Try
    Result  :=  False;
    test1   :=  InternetCheckConnection(PING_GOOGLE_DOMAIN_BR,1,0);
    Result  :=  test1;
    if not ( test1 ) then
    Begin
      test2   :=  InternetCheckConnection(PING_GOOGLE_IPV4_BR,1,0);
      test3   :=  InternetCheckConnection(PING_GOOGLE_IPV4_USA,1,0);
      test4   :=  InternetCheckConnection(PING_FACEBOOK_DOMAIN_BR,1,0);
      Result  :=  (test2 OR test3 OR test4);
    End;
  Except
    ON E:Exception DO
    begin
      if Assigned(FOnException) then
        FOnException(E.ClassName,E.Message);
    end;
  End;
END;

function TThreadCheckConnection.CheckConexaoLocal() : Boolean;
var status:dword;
BEGIN
  if InternetGetConnectedState(@status,0) then
  Begin
    if ( status AND INTERNET_CONNECTION_LAN <> 0 )   or
       ( status AND INTERNET_CONNECTION_MODEM <> 0 ) or
       ( status AND INTERNET_CONNECTION_PROXY <> 0 ) then
      Result  :=  True;
  End
  Else
    Result  :=  False;
END;

procedure TThreadCheckConnection.CheckConnection;
BEGIN
  if ( CheckConexaoLocal ) then
  Begin
    if ( CheckInternet ) then
      setStatus(tlWorking,tiOnline)
    else
      setStatus(tlWorking,tiOffline,ERR_INTERNET_OFFLINE);
  End
  Else
    setStatus(tlNotWorking,tiOffline,ERR_LOCAL_NETWORK);
END;

procedure TThreadCheckConnection.Execute;
BEGIN
  NameThreadForDebugging('ThreadCheckConnection');

  while not Terminated do
  Begin

    if Terminated then
      Exit;

    if ( FTimeCheck >= 1000 ) then
      FTimeCheck := FTimeCheck div 1000;

    FTimeCheck  :=  FTimeCheck * 1000;

    if ( GetTickCount >= (FLastUpdate + FTimeCheck) ) OR
       ( FLastUpdate = 0 )  then
    Begin
      CheckConnection;
      FLastUpdate       :=  GetTickCount;
    End;

  End;

END;

end.
