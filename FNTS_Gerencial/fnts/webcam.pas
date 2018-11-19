unit webcam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Camera, ExtCtrls, PiconeBarreTache, Data.FMTBcd,
  Data.DB, Data.SqlExpr;
type
  TTabImage = array[0..230399] of byte;

type
  Tfrmwebcam = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Camera1: TCamera;
    SQLQuery1: TSQLQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwebcam: Tfrmwebcam;

implementation

uses produto, modulo;

{$R *.dfm}

procedure Tfrmwebcam.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmwebcam.FormCreate(Sender: TObject);
var p: ^TTabImage;
begin
  Camera1.Actif := True;
  New(p);
end;

procedure Tfrmwebcam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmwebcam.BitBtn1Click(Sender: TObject);
var
  ms:tmemorystream;
begin

  with frmproduto do begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    ms:=tmemorystream.create;
    ms.position:=0;
    Image2.picture.bitmap.savetostream(ms);
    ms.position:=0;
    if not (qrproduto.State in [dsedit,dsinsert]) then
        qrproduto.Edit;
    qrprodutofotobd.LoadFromStream(ms);
    freeandnil(ms);
  end;


  frmproduto.image2.picture.loadfromfile(caminho_fotos_produtos + '\ft' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + '.BMP');
  FRMPRODUTO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING := caminho_fotos_produtos + '\ft' + frmmodulo.qrproduto.fieldbyname('codigo').asstring + '.BMP';
  close;
end;

end.
