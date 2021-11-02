%4.1

x=input('Input total workhours: ');
if x>40
    fprintf('You have worked %d hours. You get overtime!\n',x)
end

clear all

%4.2

x=input('Input angle: ');
y=input('(r)adians (the default) or (d)egrees: ','s');
s=0;
if y==('d')
    s=sind(x);
else
    s=sin(x);
end
fprintf('The sin is %.2f.\n',s);

