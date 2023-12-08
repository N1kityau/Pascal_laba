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

procedure Prod(a: real; Z: Complex; var W: Complex);
begin
  W.Re := a * Z.Re;
  W.Im := a * Z.Im;
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

procedure ProdMatrix(a: real; B: Matrix; var C: Matrix);
var
  i, j: integer;
begin
  for i := 1 to n do  
    for j := 1 to n do
      Prod(a, B[i, j], c[i, j]);           
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
    begin
      GotoXY(5 * j, i + 12);
      Output(a[i, j]);
    end;
end;

var
  x: real; y, s: matrix;

begin
  Writeln('Введите число:');
  read(x);
  Writeln('Введите комплексную матрицу:');
  InputMatrix(y);
  prodMatrix(x, y, s);
  Writeln('Произведение матрицы на число:');
  OutputMatrix(s);
end.