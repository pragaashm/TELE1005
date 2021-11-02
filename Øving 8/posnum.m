%Practice 6.6
%Prompts the user to enter a positive number. Error checks.

function num = posnum

num = input('Enter a positive number: ');

while num <0
    errorsubfn(num)
    num=input('Enter a positive number: ');
end
end

function errorsubfn(num)

persistent count;

if isempty(count)
    count=0;
end

count = count+1
fprintf('Error #%d..Follow instructions!\n',count);
fprintf('Does %.2f look like a positive number to you?\n',num);

end

