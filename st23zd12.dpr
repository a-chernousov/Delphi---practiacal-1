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

var
  s1 : string;
  f1, f2 : TextFile;
  n, m, count : integer;

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



