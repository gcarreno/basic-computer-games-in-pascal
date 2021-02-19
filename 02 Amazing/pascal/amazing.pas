program Amazing;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

uses
  Crt;

var
  Width: Integer;
  Height: Integer;
  MatrixW: Array of Array of Integer;
  MatrixV: Array of Array of Integer;

procedure PrintGreeting;
begin
  WriteLN(' ':28, 'AMAZING PROGRAM');
  WriteLN(' ':15, 'CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY');
  WriteLN;
  WriteLN;
  WriteLN;
  WriteLN;
end;

procedure GetDimensions;
begin
  repeat
    Write('WHAT ARE YOUR WIDTH AND LENGTH ');
    ReadLN(Width, Height);
    if (Width = 1) or (Height = 1) then
    begin
      WriteLN('MEANINGLESS DIMENSIONS.  TRY AGAIN.');
    end;
  until (Width > 1) and (Height > 1);
end;

procedure PrintMaze;
var
  Q: Integer;
  Z: Integer;
  X: Integer;
  C: Integer;
  R: Integer;
  S: Integer;
  I: Integer;
begin
  SetLength(MatrixW, Width, Height);
  SetLength(MatrixV, Width, Height);
  Q:= 0;
  Z:= 0;
  X:= Random(Width) + 1;
  for I:= 0 to Pred(Width) do
  begin
    if Succ(I) = X then
    begin
      Write('.  ');
    end
    else
    begin
      Write('.--');
    end;
  end;
  WriteLn('.');

  C:= 1;
  MatrixW[X,1]:= C;
  Inc(C);

  R:= X;
  S:= 1;

  if (R - 1) = 0 then  //260
  begin

  end;
end;

begin
  Randomize;
  //ClrScr;
  PrintGreeting;
  GetDimensions;
  PrintMaze;
end.

