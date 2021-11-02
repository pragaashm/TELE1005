%4.4

function outtype = findargtypn(inputarg)

[r c] = size(inputarg);
if r==1 || c==1
    outtype = 'vector';
end
if r==1 && c==1
    outtype = 'scalar';
end
if r>1 && c>1
    outtype = 'matrix';
end

findargtypn(2:5) %'vector'
findargtypn(255) %'scalar'
findargtypn(randi(5,5)) %'matrix'
