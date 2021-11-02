function outsum = matrowsum(inp)

[r c] = size(inp)

outsum=zeros(r,1)

for i = 1:c
    totsum=0;
    for y = 1:r
        totsum=totsum+inp(i,y)
    end
    outsum(i)=totsum;
end
end
    
    