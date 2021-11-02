%Practice 8.1

%Creating two different cell arrays:
cellA={1:5,'Random input', 12; 5.43,"Random string", 9}
cellB={13,20;16,'March'};

%Creating expression
test1=cellA{randi(size(cellA,1)),randi(size(cellA,2))};

clear all 

%Practice 8.2

%Creating structure
onepart=struct('part_no',123,'quantity',4,'costper',33.95);

fprintf('$%.2f\n',onepart.costper);

clear all

%Practice 8.3

%Creating vector 'parts'

parts(3)=struct('partno',106,'quantity',20,'costper',7.5);
parts(1)=struct('partno',123,'quantity',4,'costper',33);
parts(2)=struct('partno',142,'quantity',1,'costper',150);

%Printing Item id and total cost
fprintf('\n  Item# Cost\n\n')
for i=1:length(parts)
    fprintf('%6d %6.2f\n',parts(i).partno,parts(i).costper*parts(i).quantity);
end

clear all















