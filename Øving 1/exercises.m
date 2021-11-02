%Exercises

%1

myage=25
myage=myage+2
myage=myage-3

clear all

%3
%Forskjellen er enkel. Ene resultatet lagres og skrives ut. Andre kun
%lagres.

%9 - Order of operation
25/5*3 
4+2^3
(4+1)^2
2\12+5 %\=divided into
4-1*5

clear all

%10 - miles to km
tekst='Amount of miles: ';
aMiles=input(tekst);
kilometers=aMiles*1.6093

clear all

%11 - Fahrenheit to Celsius
tekst='Amount of Fahrenheit(F): ';
ftemp=input(tekst);
disp('Converted to C:')
ctemp=(ftemp-32)*5/9

clear all

%12 - Error fixing
%check document

%14 - Constants and variables
%-fixed numerical value/non-fixed value. 

%15 - Random numbers
low1=0;
high1=30;
low2=10;
high2=100;
r1=rand*(high1-low1)+low1
r2=rand*(high2-low2)+low2
r3=randi(20)
r4=randi([0,20])
r5=randi([30,80])

clear all

%17 - Variable vs character
%See text: One is a variable, other a string

%18 - see 17

%19 - Rt

r1=3
r2=1
r3=6

rt=1/((1/r1)+(1/r2)+(1/r3))

clear all

%20 - Logical pt1.
'b'>='c'-1
3==2+1
(3==2)+1
xor(5<6,8>4)

clear all

%21 - Logical pt.2
5>4>1
%Logical error. First expression from left to right will either be 1/0.

%24 - Equality operator
4*10^3==4e3
%logical answer
clear all

%28 - Cast-function
a=uint16(45)
b=uint8(3)
whos
%casting
b=cast(b,'like',a);
whos

clear all

%34 - Vectors

x=r*cos(t)
y=r*sin(t)










