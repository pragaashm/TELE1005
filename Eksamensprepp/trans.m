function outp = trans(x)

[r c] = size(x);

outp=zeros(r,c);

for i=1:r
    for y=1:c
        outp(y,i)=x(i,y)
    end
end
x