unit LongPressEvent;

interface

uses
  Classes, Controls, Messages, Windows, Forms, ExtCtrls;

type
  TLongPressEvent = procedure(Control: TControl) of object;

  TLongPressTracker = class(TComponent)
  private
    FChild: TControl;
    FClickPos: TPoint;
    FForm: TCustomForm;
    FOldChildOnMouseUp: TMouseEvent;
    FOldFormWndProc: TFarProc;
    FOnLongPress: TLongPressEvent;
    FPrevActiveControl: TWinControl;
    FTimer: TTimer;
    procedure AttachForm;
    procedure DetachForm;
    function GetDuration: Cardinal;
    procedure LongPressed(Sender: TObject);
    procedure NewChildMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NewFormWndProc(var Message: TMessage);
    procedure SetDuration(Value: Cardinal);
    procedure SetForm(Value: TCustomForm);
    procedure StartTracking;
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation);
      override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Form: TCustomForm read FForm write SetForm;
  published
    property Duration: Cardinal read GetDuration write SetDuration
      default 1000;
    property OnLongPress: TLongPressEvent read FOnLongPress
      write FOnLongPress;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TLongPressTracker]);
end;

function FindControlAtPos(Window: TWinControl;
  const ScreenPos: TPoint): TControl;
var
  I: Integer;
  C: TControl;
begin
  for I := Window.ControlCount - 1 downto 0 do
  begin
    C := Window.Controls[I];
    if C.Visible and PtInRect(C.ClientRect, C.ScreenToClient(ScreenPos)) then
    begin
      if C is TWinControl then
        Result := FindControlAtPos(TWinControl(C), ScreenPos)
      else
        Result := C;
      Exit;
    end;
  end;
  Result := Window;
end;

{ TLongPressTracker }

type
  TControlAccess = class(TControl);

procedure TLongPressTracker.AttachForm;
begin
  if FForm <> nil then
  begin
    FForm.HandleNeeded;
    FOldFormWndProc := Pointer(GetWindowLong(FForm.Handle, GWL_WNDPROC));
    SetWindowLong(FForm.Handle, GWL_WNDPROC,
      Integer(MakeObjectInstance(NewFormWndProc)));
  end;
end;

constructor TLongPressTracker.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FTimer := TTimer.Create(Self);
  FTimer.Enabled := False;
  FTimer.Interval := 1000;
  FTimer.OnTimer := LongPressed;
  if AOwner is TCustomForm then
    SetForm(TCustomForm(AOwner));
end;

destructor TLongPressTracker.Destroy;
begin
  if FTimer.Enabled then
  begin
    FTimer.Enabled := False;
    TControlAccess(FChild).OnMouseUp := FOldChildOnMouseUp;
  end;
  DetachForm;
  inherited Destroy;
end;

procedure TLongPressTracker.DetachForm;
begin
  if FForm <> nil then
  begin
    if FForm.HandleAllocated then
      SetWindowLong(FForm.Handle, GWL_WNDPROC, Integer(FOldFormWndProc));
    FForm := nil;
  end;
end;

function TLongPressTracker.GetDuration: Cardinal;
begin
  Result := FTimer.Interval;
end;

procedure TLongPressTracker.LongPressed(Sender: TObject);
begin
  FTimer.Enabled := False;
  try
    if (Abs(FClickPos.X - Mouse.CursorPos.X) < Mouse.DragThreshold) and
      (Abs(FClickPos.Y - Mouse.CursorPos.Y) < Mouse.DragThreshold) and
      (((FChild is TWinControl) and TWinControl(FChild).Focused) or
        (TControlAccess(FChild).MouseCapture or (not FChild.Enabled))) then
    begin
      FForm.ActiveControl := FPrevActiveControl;
      if Assigned(FOnLongPress) then
        FOnLongPress(FChild);
    end;
    TControlAccess(FChild).OnMouseUp := FOldChildOnMouseUp;
  except
  end;
end;

procedure TLongPressTracker.NewChildMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FTimer.Enabled := False;
  if Assigned(FOldChildOnMouseUp) then
    FOldChildOnMouseUp(Sender, Button, Shift, X, Y);
  TControlAccess(FChild).OnMouseUp := FOldChildOnMouseUp;
end;

procedure TLongPressTracker.NewFormWndProc(var Message: TMessage);
begin
  case Message.Msg of
    WM_PARENTNOTIFY:
      if TWMParentNotify(Message).Event = WM_LBUTTONDOWN then
        StartTracking;
    WM_LBUTTONDOWN:
      StartTracking;
  end;
  with Message do
    Result := CallWindowProc(FOldFormWndProc, FForm.Handle, Msg, WParam,
      LParam);
end;

procedure TLongPressTracker.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = FForm) and (Operation = opRemove) then
    DetachForm;
  if (AComponent = FChild) and (Operation = opRemove) then
  begin
    FTimer.Enabled := False;
    FChild := nil;
  end;
end;

procedure TLongPressTracker.SetDuration(Value: Cardinal);
begin
  FTimer.Interval := Value;
end;

procedure TLongPressTracker.SetForm(Value: TCustomForm);
begin
  if FForm <> Value then
  begin
    DetachForm;
    FForm := Value;
    FForm.FreeNotification(Self);
    AttachForm;
  end;
end;

procedure TLongPressTracker.StartTracking;
begin
  FClickPos := Mouse.CursorPos;
  FChild := FindControlAtPos(FForm, FClickPos);
  FChild.FreeNotification(Self);
  FPrevActiveControl := FForm.ActiveControl;
  FOldChildOnMouseUp := TControlAccess(FChild).OnMouseUp;
  TControlAccess(FChild).OnMouseUp := NewChildMouseUp;
  FTimer.Enabled := True;
end;

end.
