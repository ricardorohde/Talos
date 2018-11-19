unit UtiSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, AdvOfficeImage, ExtCtrls,
  AdvReflectionLabel, RzLabel, RzBckgnd, RzPrgres, ExeInfo, pngimage, acPNG,
  dxGDIPlusClasses;

type
  TfrmUtiSplash = class(TForm)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmUtiSplash: TfrmUtiSplash;

implementation

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmUtiSplash.FormShow(Sender: TObject);
begin
  application.ProcessMessages;
end;

// -------------------------------------------------------------------------- //
end.
