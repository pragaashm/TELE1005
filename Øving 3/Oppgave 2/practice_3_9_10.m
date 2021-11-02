%3.9

radius=input('Input radius: ');
height=input('Input height: ');

x=conevol(radius,height);
fprintf('The cone volume is %.2f\n',x)

clear all

%3.10

l=input('Input length in inches: ');
w=input('Input width in inches: ');

x=calcrectarea(l,w)
fprintf('We need ca: %d sq in.\n',ceil(x))