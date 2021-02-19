program Amazing;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$ENDIF}

uses
  Crt;

var
  Width: Integer;   // H
  Height: Integer;  // V
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
  J: Integer;
begin
  SetLength(MatrixW, Width, Height);
  SetLength(MatrixV, Width, Height);
  Q:= 0;
  Z:= 0;
  X:= Random(Width) + 1;

  // Top wall with entry on X
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
  MatrixW[Pred(X), Pred(1)]:= C;
  Inc(C);

  R:= X;
  S:= 1;

  {while True do
  begin
    // THIS IS INSIDE LOOP OF SORTS
    if Pred(R) = 0 then  //                        260 -> 530
    begin
      if Pred(S) = 0 then //                       530 -> 670
      begin
        if R = Width then //                       670 -> 740
        begin
          if S <> Height then //                   740 -> 760
          begin
            if MatrixW[Pred(R), Pred(S + 1)] <> 0 then //     760 -> 780
            begin
              continue;
            end
            else
            begin
              //  770 -> 910
              if Q = 1 then //  910 -> 960
              begin
                Z:= 1;
                if MatrixV[Pred(R), Pred(S)] = 0 then // 970 -> 980
                begin
                  MatrixV[Pred(R), Pred(S)]:= 1;
                  Q:= 0;
                  R:= 1;
                  S:= 1;// GOTO 250
                end
                else
                begin
                  MatrixV[Pred(R), Pred(S)]:= 3;
                  Q:= 0;
                  continue;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
    // THIS IS INSIDE LOOP OF SORTS
  end;}

  for J:= 0 to Pred(Height) do
  begin
    Write('I');
    for I:= 0 to Pred(Width) do
    begin
      if MatrixV[I, J] < 2 then
      begin
        Write('  I');
      end
      else
      begin
        Write('   ');
      end;
    end;
    WriteLN;
    for I:= 0 to Pred(Width) do
    begin
      if (MatrixV[I, J] = 0) or (MatrixV[I, J] = 2) then
      begin
        Write(':  ');
      end
      else
      begin
        Write(':--');
      end;
    end;
    WriteLN('.');
  end;
end;

begin
  Randomize;
  //ClrScr;
  PrintGreeting;
  GetDimensions;
  PrintMaze;
end.

