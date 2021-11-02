%3.24
r1=randi(50,5)
r2=r1(2:4,2:4)
%save script_3 r2 -ascii
dlmwrite('script_3.dat',r2)
