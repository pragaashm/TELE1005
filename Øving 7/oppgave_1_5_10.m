% 5.10 Vectorize(Efficient code writing)

i=0;
for inc = 0:0.5:3
    i=i+1;
    myvec(i)=sqrt(inc)
end

clear all

fprintf('Vectorize given function\n');

inc = 0:0.5:3;
sqrt(inc)

clear all

disp("----------------------------------------------------------------------")

mat=[-3:3]
[r c] = size(mat);
newmat=zeros(r,c);
for i =1:r
    for j =1:c
        newmat(i,j) = sign(mat(i,j))
    end
end

clear all

fprintf('Vectorize given function\n');

mat=[-3:3];
sign(mat)
