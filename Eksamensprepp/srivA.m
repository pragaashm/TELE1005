function [o1 o2] = srivA(rd,hd)

o1 = pi*rd^2*hd;
r1= 2*pi*rd^2;
r2=2*pi*rd*hd;
o2=r1+r2;