%Practice

%3.1

%This script calculates the circumferrence of a circle
r=5; %Radius is assigned
c=2*pi*r %Circumference is calculated

clear all

%3.2

%This script prompts the user for a lenght and dimension
l=input('Enter length: ');
d=input('Is that f(eet) or m(eters)?: ','s');
fprintf('The length is %d%s.\n',l,d);

clear all

%3.3

x=input('Input single character: ','s');
y=input('Input single number: ');
fprintf('   %3s\n%-8.3f\n',x,y)

clear all

%3.4

%Modifying 'plotonpoint.m'

x=input('Input time: ');
y=input('Input temperature: ');
plot(x,y,'r*')

axis([x-2 x+2 y-10 y+10])
xlabel('Time');
ylabel('Temperature');
title('Time and temp');

clear all

%3.5

%Using the axis function


x=1:5;
y1=[2,11,6,9,3];
y2=[4,5,8,6,2];
figure(1)
bar(x,y1)
figure(2)
plot(x,y1,'k')
hold on
plot(x,y2,'ko')
axis([0.5 5.5 1 11]) 
grid on
legend('y1','y2')
hold off

clear all

%3.6
clf
x=[0:0.5:3.5];
y1=exp(x)
y2=log(x)
plot(x,y1)
hold on
plot(x,y2)
axis([0 3.5 0 35])
grid on
hold off

clear all

%3.7
%Prompt user for amount of rows and columns

z=input('Input max value for integer: ');%Adding prompt for max value
x=input('Input #rows: ');
y=input('Input #columns: ');
randi(z,x,y)

clear all

%3.8

x=[1:4];
y=load('salesfigs.dat');
%seperate matrix into 2 vectors:
x1=y(1,:);
x2=y(2,:);
plot(x,x1,'ko')
hold on
plot(x,x2,'k*')
axis([1 4 1.2 3])
xlabel('Quarter');
ylabel('Sales(in billions)');
title('ABC corporation sales: 2013');

 

