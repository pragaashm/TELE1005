%Practice 6.2
function vectors(vec)

r=size(vec,2)
for i=1:r
    fprintf('Element %d is: %.1f.\n',i,vec(i));
end

