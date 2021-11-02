%Practice 6.1

l=input('Please enter the length of the rectangle: ');
w=input('Please enter the width of the rectangle: ');

[perim area] = perimarea(l,w);

fprintf('For the rectangle with a length of %.1fm and a width of %.1fm,\n',l,w);
fprintf('the perimeter is %.1fm and area is %.1fm^2.\n', perim,area);

clear all

