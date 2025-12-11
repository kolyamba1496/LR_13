var fil: text; a, b, c, lastMax: real; i: integer;
begin
  randomize;
  assign(fil, 'numbers5.txt');
  rewrite(fil);
  for i := 1 to 10 do
    writeln(fil, random(100) + 1);
  close(fil);
  assign(fil, 'numbers5.txt');
  reset(fil);
  readln(fil, a);
  readln(fil, b);
  while not eof(fil) do
  begin
    readln(fil, c);
    if (b > a) and (b > c) then
      lastMax := b;
    a := b;
    b := c;
  end;
  close(fil);
  writeln('Последний локальный максимум: ', lastMax);
end.