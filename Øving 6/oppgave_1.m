%Practice 5.5
%avenegnum.m

x=input('Enter a negative number: ');
counter=[];
if x>=0
    error('No negative numbers to average.');
end
while x<=0
    counter(end+1)=x;
    x=input('Enter a negative number: ');
end
fprintf('The average was: %0.2f.\n',mean(counter));

clear all

%Practice 5.6

n=input('Input amount of loops: ');
fprintf('Enter %d positive integers\n\n',n)
tot=[];
for i=1:n
    inputnum = input('Enter a positive integer: ');
    num2 = int32(inputnum);
    while num2~=inputnum
        inputnum=input('Invalid!\nEnter a positive integer: ');
        num2 = int32(inputnum);
    end
    tot(end+1)=inputnum;
    fprintf('You entered %d\n',inputnum);
end
fprintf('You have %d integers. The complete list is as follows:\n',n);
disp(tot);

clear all

