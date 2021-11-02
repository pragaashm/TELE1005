%Oppgave 3
%Sortering til synkende matrise


function output = synSort(mat)
[r,c] = size(mat);

nmat=reshape(mat,[],r*c);

for i=1:length(nmat)
    [mmat(i),ix]=max(nmat);
    nmat(ix)=[];
end

output = reshape(mmat,[],c);

end






    
        