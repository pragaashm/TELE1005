%Oppgave 2
%Sortering til stigende matrise

function output = matSort(mat)

[r,c]=size(mat);
nmat=reshape(mat,[],1);
nnmat=sort(nmat);

output=reshape(nnmat,[r,c]);

end





