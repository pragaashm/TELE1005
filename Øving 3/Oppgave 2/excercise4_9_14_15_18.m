%Excercise 9 parttol.m
x=load('parttolerance.dat');
w1=x(1,2);
w2=x(1,3);
p=input('Input the weight of part: ');
if p<w1 || p>w2
    fprintf('Weight not in range.\n')
else
    fprintf('Weight is in range.\n')
end

clear all

%Excercise 14/15 - divornot.m(modified)
x=input('Enter number: ');
if x==0
    error('Error! Number must be above 0')
else
    y=divit(x)
    fprintf('The number is: %.2f.\n',y)
end

clear all

%Excercise 18
letter = input('Enter your answer(y/n): ','s');
if letter=='y' || letter=='Y'
    fprintf('Ok, continuing\n');
elseif letter=='n' || letter=='N'
        fprintf('Ok,halting\n0');
    else
        error('Error. Check input');
end




