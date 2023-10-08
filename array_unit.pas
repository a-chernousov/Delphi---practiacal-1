unit array_unit;

interface
  uses
    Tdata_unit;
  procedure PrintMatr(var fOut : textFile; var mass : Tmatr; n, m : integer);
  procedure inputMatr(var fIn : textFile; var mass : Tmatr; n, m : integer);
  implementation

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
end.
