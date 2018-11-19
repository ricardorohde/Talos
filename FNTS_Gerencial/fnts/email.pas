unit email;

interface
uses SysUtils, IdMessage, IdSMTP,Classes, IdAttachment, IdAttachmentFile;
type
  TEmail = class
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    constructor Create;
  private

  public
    function EnviarEmail(De, Para, Titulo, Corpo, Arquivo: string; usuario: string; senha: string; servidor_smtp: string; porta: integer): boolean;
  end;

implementation

constructor TEmail.Create;
begin
  IdSMTP1 := TIdSMTP.Create(nil);
  IdMessage1 := TIdMessage.Create(nil);

end;

function TEmail.EnviarEmail(De, Para, Titulo, Corpo, Arquivo: string;  usuario: string; senha: string; servidor_smtp: string; porta: integer): boolean;
var
   Lista:TStrings;
  I: Integer;
begin
  try



// anexos
   Lista:=TStringList.Create;
   Lista.delimiter:='|';
   Lista.StrictDelimiter:=False;
   Lista.DelimitedText:=Arquivo;




    IdMessage1.Clear;
    IdMessage1.From.Text := De;
    IdMessage1.ReplyTo.EMailAddresses := De;
    IdMessage1.Recipients.EMailAddresses := Para;
    IdMessage1.Date := Now;
    IdMessage1.Subject := Titulo;
    IdMessage1.Priority := mpNormal;

    //anexando
     for I := 0 to lista.Count -1 do
     begin
          if (Lista.Strings[i] <> '') then
       TIdAttachmentFile.Create(IdMessage1.MessageParts, Lista.Strings[i]);

     end;


      IdMessage1.Body.Add(Corpo);
    //IdSMTP1.AuthenticationType := atLogin;
    IdSMTP1.Host := servidor_smtp;
    IdSMTP1.Port := porta;
    IdSMTP1.UserName := usuario;
    IdSMTP1.Password := senha;
    IdSMTP1.Connect;
    result := true;
    try
      try
        IdSMTP1.Send(IdMessage1);
      except
        result := false;
      end;
    finally
      IdSMTP1.Disconnect;
    end;
  except
    result := false;
  end
end;
end.
