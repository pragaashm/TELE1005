function utvar = mysFunk(x,y)
if y == 1
 utvar = x;
else
 utvar = x + mysFunk(x,y-1);
end