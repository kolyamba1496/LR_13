var fil: text; i, minPos, maxPos, count: integer; num, minVal, maxVal: integer; nums: array[1..100] of integer;
begin
  assign(fil, 'numbers6.txt');
  rewrite(fil);
  writeln(fil, '15');
  writeln(fil, '23');
  writeln(fil, '8');
  writeln(fil, '42');
  writeln(fil, '18');
  writeln(fil, '35');
  writeln(fil, '12');
  close(fil);
  reset(fil);
  count := 0;
  minVal := 1000;
  maxVal := -1000;
  while not eof(fil) do
  begin
    count := count + 1;
    readln(fil, nums[count]);
    if nums[count] < minVal then
    begin
      minVal := nums[count];
      minPos := count;
    end;
    if nums[count] > maxVal then
    begin
      maxVal := nums[count];
      maxPos := count;
    end;
  end;
  close(fil);
  nums[minPos] := maxVal;
  nums[maxPos] := minVal;
  rewrite(fil);
  for i := 1 to count do
    writeln(fil, nums[i]);
  close(fil);
end.