%Oppgave 4b

function primev = primeNums(x)


mNum=[];

for i=1:1000
    if isPrime(i)==true & size(mNum)<x
        mNum(end+1)=i;
        
        
    end
  
end
        
disp(mNum)
size(mNum,2)


end
