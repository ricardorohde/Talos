unit sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvReflectionImage, ExtCtrls, StdCtrls, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, dxGDIPlusClasses, RzLabel, AboutTalos;

type
  TForm_sobre = class(TForm)
    Image1: TImage;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label56: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_sobre: TForm_sobre;
  sequencia: Integer;

implementation

uses
  UnitVersao;

{$R *.dfm}

procedure TForm_sobre.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_sobre.FormCreate(Sender: TObject);
var
frmversao: TFrmVersao;
begin
   frmversao:= TFrmVersao.Create(Self);
   Label1.Caption:='TALOS '+frmversao.GetBuildInfoAsString();
   Label56.Caption:='Sobre o Sistema TALOS '+frmversao.GetBuildInfoAsString();
end;

procedure TForm_sobre.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  tecla: Integer;
  AboutTalos: TAboutBox;


  begin
 tecla:=ord(key);


 if (tecla=38) and (sequencia=0) then
 Inc(sequencia);
  if (tecla=38) and (sequencia=1) then
   Inc(sequencia);
  if (tecla=40) and (sequencia=2) then
   Inc(sequencia);
    if (tecla=40) and (sequencia=3) then
     Inc(sequencia);
      if (tecla=37) and (sequencia=4) then
       Inc(sequencia);
        if (tecla=39) and (sequencia=5) then
         Inc(sequencia);
          if (tecla=37) and (sequencia=6) then
           Inc(sequencia);
            if (tecla=39) and (sequencia=7) then
             Inc(sequencia);
              if (tecla=66) and (sequencia=8) then
               Inc(sequencia);
                if (tecla=65) and (sequencia=9) then
                begin
                AboutTalos := TAboutBox.Create(self);
                AboutTalos.Tocar;
                AboutTalos.ShowModal;
                end;

end;

end.

