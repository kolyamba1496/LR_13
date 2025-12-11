var z3_in, z3_out: text; str: string; max: integer;
begin
  assign(z3_in, 'zadacha_2in.txt');
  assign(z3_out, 'zadacha_2out.txt');
  reset(z3_in);
  max := 0;
  while not eof(z3_in) do
  begin
    readln(z3_in, str);
    if length(str) > max then
      max := length(str);
  end;
  reset(z3_in);
  rewrite(z3_out);
  while not eof(z3_in) do
  begin
    readln(z3_in, str);
    if length(str) = max then
      writeln(z3_out, str);
  end;
  close(z3_in);
  close(z3_out);
end.