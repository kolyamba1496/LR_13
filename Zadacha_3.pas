var num, nechet_num, chet_num: text; i: integer;
begin
  assign(num, 'numbers.txt');
  assign(nechet_num, 'nechet.txt');
  assign(chet_num, 'chet.txt');
  rewrite(num);
  rewrite(nechet_num);
  rewrite(chet_num);
  for i := 1 to 10 do
  begin
    writeln(num, i);
    if i mod 2 = 1 then
      writeln(nechet_num, i)
    else
      writeln(chet_num, i);
  end;
  close(num);
  close(nechet_num);
  close(chet_num);
end.