var f: file of char; i: integer;
begin
  assign(f, 'text7.txt');
  reset(f);
  i := 0;
  while i < filesize(f) do
  begin
    if i mod 2 = 1 then
    begin
      seek(f, i);
      write(f, '!');
    end;
    i := i + 1;
  end;
  
  close(f);
end.