unit vector_unit;

interface
  uses
    Tdata_unit;
{
const
  nMax = 10;
  arrMax = 100;
Type
  Tarr = array[1..arrMax] of real;
  Tmatr = array[1..nMax] of Tarr;
  Tfunc = function (var arr : Tarr; n : integer) : real;
}
  procedure createVector(var matr : Tmatr; n, m : integer; fn : Tfunc; var vec : Tarr);
  procedure printVector(var fOut : TextFile; var arr : Tarr; n : integer);
  function SumaElementovKv(var arr : Tarr; n : integer) : real;
  function srArifm(var arr : Tarr; n : integer) : real;
  function srGeometr(var arr : Tarr; n : integer) : real;

implementation
uses
   SysUtils,
  Windows,
  Math;

function SumaElementovKv(var arr : Tarr; n : integer) : real;
var
  i : integer;
  sum : real;
begin
  sum := 0;
  for i := 1 to n do
    sum := sum + sqr(arr[i]);
  //writeln('kekw');
    sum := sqrt(sum);
   SumaElementovKv := Sum;
end;

function srArifm(var arr : Tarr; n : integer) : real;
var
  i : integer;
  sr : real;
begin
  sr := 0;
  for i := 1 to n do
    sr := sr + arr[i];
  sr := sr / n;
  srArifm := sr;
end;

function srGeometr(var arr : Tarr; n : integer) : real;
var
  i : integer;
  sr : real;
begin
  sr := 1;
  for i := 1 to n do
    sr := sr * arr[i];
  sr := Power(sr, 1/n);
  srGeometr := sr;
end;

procedure createVector(var matr : Tmatr; n, m : integer; fn : Tfunc; var vec : Tarr);
var
  i, j : integer;
begin
  for i := 1 to n do
    vec[i] := fn(matr[i], m);
end;

procedure printVector(var fOut : TextFile; var arr : Tarr; n : integer);
var
  i : integer;
begin
  for i := 1 to n do
    Write(fOut, arr[i]:7:1);
  Writeln(fOut);
end;

end.
