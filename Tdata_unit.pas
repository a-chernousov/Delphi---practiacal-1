unit Tdata_unit;

interface
const
  nMax = 10;
  arrMax = 100;

Type
  Tarr = array[1..arrMax] of real;
  Tmatr = array[1..nMax] of Tarr;
  Tfunc = function (var arr : Tarr; n : integer) : real;


implementation

end.
