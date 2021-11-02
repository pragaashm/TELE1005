%Practice 5.8

function outsum = matrowsum(mat);

[r c] = size(mat);

outsum=[];

for row = 1:r
    runsum=0;
    for col = 1:c
        runsum=runsum+mat(row,col);
    end
    outsum(end+1)=runsum;
end
end
