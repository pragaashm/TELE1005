mat=magic(6);
[r c] = size(mat);
sortMat=reshape(mat,1,r*c)
nMat=sort(sortMat)
reshape(nMat,r,c)
