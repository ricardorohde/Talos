unit AboutTalos;

interface

uses WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  dxGDIPlusClasses, Vcl.MPlayer;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    OKButton: TButton;
    MediaPlayer1: TMediaPlayer;
  private

  public
    procedure Tocar();
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

Procedure TAboutBox.Tocar();
var
  rStream: TResourceStream;
  fStream: TFileStream;
  fname: string;
begin
 {this part extracts the mp3 from exe}

 rStream := TResourceStream.Create
           (hInstance, 'Intro', RT_RCDATA);
  fname:=ExtractFilePath(Application.ExeName)+'Intro.mp3';
 try
  fStream := TFileStream.Create(fname, fmCreate);
  try
   rStream.SaveToStream(fStream);
  finally
   fStream.Free;
  end;
 finally
 end;
 {this part plays the mp3}
// MediaPlayer1.Close;
 MediaPlayer1.FileName:=fname;
 MediaPlayer1.Open;

end;

end.
 
