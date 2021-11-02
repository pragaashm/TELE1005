function num = posnum

num = input('Enter a positive number: ');
while num < 0
    errorsubfn(num)
    num = input('Enter a positive number: ');
end
end

function errorsubfn(num)
persistent eCount

if isempty(eCount)
    eCount=0;
end

if num <0
    eCount= eCount+1;
    fprintf('Error %d#...Follow instructions!\n',eCount);
    fprintf('Does %.2f look like a positive number to you?\n',num);
end
end

    