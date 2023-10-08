unit PutRez_unit;

interface

    procedure putRes(var fIn, fOut : TextFile);

implementation
  uses
    Tdata_unit,
    array_unit,
    vector_unit;
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

end.
