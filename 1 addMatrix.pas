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

procedure Add(U, V: Complex; var W: Complex);
begin
  W.Re := U.Re + V.Re;
  W.Im := U.Im + V.Im;
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

procedure addMatrix(a, b: Matrix; var c: Matrix);
var
  i, j: integer;
begin
  for i := 1 to n do
    for j := 1 to n do
      Add(a[i, j], b[i, j], c[i, j]);
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
      GotoXY(5 * j, i + 19);
      Output(a[i, j]);
    end;
end;

var
  x, y, s: matrix;

begin
  Writeln('Введите 1 комплексную матрицу:');
  InputMatrix(x);
  Writeln('Введите 2 комплексную матрицу:');
  InputMatrix(y);
  addMatrix(x, y, s);
  Writeln('Сумма данных комплексных матриц:');
  OutputMatrix(s);
end.