%2.19 - Generate 2x3 matrix of random:
%Random real numbers:
1+(0-1)*rand(2,3)
5+(0-5)*rand(2,3)
%Random integers:
randi([10,50],2,3)

clear all

%2.20 - Create random matrix
nrow=[];
rows=randi([1,5],1);
cols=randi([1,5],1);
nrow=[rows cols]
zeros(nrow)

clear all

%2.39 - Max value
rmat=randi(10,3,5)
%Max value in each row:
[value1,row]=max(rmat,[],2)
%Max value in each column:
[value2,column]=max(rmat)
%Max value in the entire matrix:
mValue=max(rmat)
%Cumulativ maximum:
cMax=cummax(rmat)

clear all

%2.44 - logical indexing and measurement of volume
r=[5.499,5.498,5.5,5.5,5.52,5.51,5.5,5.48];
h=[11.1,11.12,11.09,11.11,11.11,11.1,11.08,11.11];
%finding the volume:
volume=pi*(r.^2.*h)
%checking answers with logical array:
lIndexing=volume>0