%Practice
%5.1

for i =1:5
    fprintf('*\n')
end

clear all

%5.2
%script prodnnums
n=randi([3 10]);
runprod=[];
for i =1:n
    runprod(end+1)=input('Enter a number: ');
    
end
fprintf('The product is %.2f\n',prod(runprod))

clear all

%5.3
mat =[7,11,3;3:5]; %Lager en 2x4 matrise
[r, c] = size(mat); %Rekke og kolonne blir delt inn
for i = 1:r
    fprintf('The sum is %d\n',sum(mat(i,:))) %skriver ut summen av elementene i rekke [1:2]
end

clear all

for i=1:2 %Deklarerer ytre loop
    fprintf('%d: ',i) %Skriver ut verdien for i
    for j=1:4 %deklarerer indre loop
        fprintf('%d ',j) %Skriver ut verdiene 1:4 for hver iterasjon av i
    end
    fprintf('\n') %Ny linje
end

%5.4
function outtype = mymatmin(inputarg)

[r c] = size(inputarg);

for col=1:c
    colMin(col)=inf;
    for row=1:r
        if inputarg(row,col)<colMin(col)
            colMin(col)=inputarg(row,col);
        end
    end

fprintf('The min of col %d is %d\n',col,colMin(col));

end
fprintf('\n');
fprintf('The final vector for the minimum value is:\n')
disp(colMin);

end




