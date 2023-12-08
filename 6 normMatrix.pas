uses
  crt;

const
  n = 2;

type
  Complex = record
    Re, Im: real;
  end;

type
  Matrix = array [1..n, 1..n] of Complex;

function Modul(Z: Complex): real;
  begin
    Modul := sqrt(sqr(Z.Re) + sqr(Z.Im))
  end;

procedure Input(var U: complex);
begin
  read(U.Re, U.Im);
end;

procedure Output(W: complex);
begin
  if W.Im >= 0 then
    write(W.Re, '+', W.Im, 'i')
  else
    write(W.Re, W.Im, 'i');
  writeln;
end;

function NormMatrix(a: matrix): real; 
var
  i, j: Integer; p, s: real;
begin
  p := 0;
  for i := 1 to n do                            
  begin
    s := 0;
    for j := 1 to n do
    begin
      s := s + Modul(a[i, j]);
      if s >= p then p := s;
    end; 
  end;
  NormMatrix := p;
end;

procedure InputMatrix(var a: matrix);
var
  i, j: integer;
begin
  for i := 1 to n do
    for j := 1 to n do
      Input(a[i, j]);
end;

procedure OutputMatrix(a: matrix);
var
  i, j: integer;
begin
  for i := 1 to n do
    for j := 1 to n do
      Output(a[i, j]);
end;

var
  x: matrix;

begin
  Writeln('Введите комплексную матрицу:');
  InputMatrix(x);
  Writeln('Норма матрицы: ', normMatrix(x));
end.