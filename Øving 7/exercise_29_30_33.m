%Exercise 29

vec = [1:5];

for i = 1:length(vec)
    vec(i) = vec(i)*3;
end

clear all

%Vectorizing
vec = [1:5];
newvec=vec*3;

clear all

%Exercise 30
vec = [-1:3];

for i=1:length(vec)
    if vec(i)<0
        res(i)=-1
    elseif vec(i)==0
        res(i)=0;
    else
        res(i)=1;
    end
end

%Vectorizing

newres=sign(vec);

clear all

%Exercise 33
v=[5,4,11,3,-4,5,-10,2]

newv = [];
i=1;
while v(i) >=0
    newv(i) = v(i)
    i = i +1
end
clear all

%Vectorizing

v=[5,4,11,3,-4,5,-10,2]

l=find(v <0,1) %Finds where first negative element is (restricted to 1
a=v(1:l-1) %Plots the positive elements untill first negative element occurs.
