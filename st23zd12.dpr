program megaProg;
{$APPTYPE CONSOLE}
uses
  SysUtils,
  Math,
  Windows,
  file_unit in 'file_unit.pas',
  Tdata_unit in 'Tdata_unit.pas',
  //vector_unit in 'vector_unit.pas',
  //array_unit in 'array_unit.pas',
  PutRez_unit in 'PutRez_unit.pas';
begin
  SetConsoleCP(1251);
  SetConsoleOutPutCP(1251);
  open_file_for_read(f1);
  open_file_for_write(f2);

  putRes(f1, f2);
  closeFile(f1);
  closeFile(f2);
  Writeln('Конец программы!');
  Readln;
end.

{
const
  nMax = 10;
  arrMax = 100;

Type
  Tarr = array[1..arrMax] of real;
  Tmatr = array[1..nMax] of Tarr;
  Tfunc = function (var arr : Tarr; n : integer) : real;
  
var
  s1 : string;
  f1, f2 : TextFile;
  n, m, count : integer;
}
{
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
  

 {
procedure open_file_for_read (var f:textfile);
  var name:string; ok:boolean;
begin
repeat
  write ('имя входного: '); readln(name);
  AssignFile (f, name);
  ok:=FileExists (name);
  if not ok then
    writeln ('файл не существует!');
 until ok;
 reset (f);
end;

procedure open_file_for_write (var f:textfile);
var name:string; ok:boolean; c:char;
begin
  repeat
    ok:=true;
    write ('Введите имя выходного файла: '); readln(name);
    AssignFile (f, name);
    if FileExists (name) then
      begin
        writeln ('Файл существует, перезаписать?: Y - ДА');
        readln (c);
        ok:=c in ['y','Y'];
      end;
  until ok;
  rewrite (f);
end;


  procedure PrintMatr(var fOut : textFile; var mass : Tmatr; n, m : integer);  //вывод матрицы
var
  i, j : integer;
begin
  writeln('Решение:');
  for i := 1 to n do
    begin
      for j := 1 to m do
        write(Fout, mass[i, j]:7:1);
      writeln(fOut);
    end;
end;

procedure inputMatr(var fIn : textFile; var mass : Tmatr; n, m : integer);
var
  i, j : integer;
begin
  for i := 1 to n do
      for j := 1 to m do
        read(fIn, mass[i, j]);
  readln(fIn);
end;

}
{
procedure putRes(var fIn, fOut : TextFile);
var
  n, m : integer;
  vec : Tarr;
  matr : Tmatr;
begin
  readln(fIn, n, m);
  while not Eof(fIn) do
    begin
      inputMatr(fIn, matr, n, m);
      Writeln(fOut, 'Норма 1');
      createVector(matr, n, m, SumaElementovKv, vec);
      PrintVector(fOut, vec, n);

      Writeln(fOut, 'Норма 2');
      createVector(matr, n, m, srArifm, vec);
      PrintVector(fOut, vec, n);

      Writeln(fOut, 'Норма 3');
      createVector(matr, n, m, srGeometr, vec);
      PrintVector(fOut, vec, n);
      Writeln(Fout);
      Writeln(Fout);
      if not Eof(fIn) then
        readln(fIn);
    end;
end;
}

