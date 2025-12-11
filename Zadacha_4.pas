var f: text; i: integer; sum: integer;
begin
  assign(f, 'numbers.txt');
  rewrite(f);
  sum := 0;
  for i := 1 to 10 do
  begin
    writeln(f, i); 
    if i mod 2 = 0 then
      sum := sum + i;
  end;
  close(f);
  writeln('Сумма: ', sum);
end.