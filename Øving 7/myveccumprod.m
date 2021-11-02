%Practice 5.7
%Cumprod-funksjon

function outvec = myveccumprod(x)

outvec=[];
runprod=1;

for i=1:length(x)
   runprod=runprod*x(i);
   outvec(end+1)=runprod;
    
end
end
