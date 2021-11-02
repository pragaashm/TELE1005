%4.3
function outtype = findargtype(inputarg)

[r c] = size(inputarg);
if r==1 && c==1
    outtype = 'scalar';
else if r>c
        outtype = 'row vector';
    else if c>r
            outtype = 'column vector';
        else 
            outtype ='matrix';
        end
    end
end

findargtype(33) %scalar
findargtype(2:3) %column vector
findargtype(3:2) %row vector
findargtype(randi(2,5)) %matrix