var fil: text; str: string; i: integer;
begin
  assign(fil, 'zadacha_1.txt');
  reset(fil);
  read(fil, str);
  close(fil);
  
  for i := length(str) downto 1 do
    if str[i] = ' ' then
    begin
      delete(str, i, length(str) - i + 1);
      break;
    end;
  
  rewrite(fil);
  write(fil, str);
  close(fil);
end.