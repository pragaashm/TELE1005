%Oppgave 4a


function outtype = isPrime(n)

result=true;

if n <=1
    result = false;
elseif n==2
    result = true;
end

for i=2:n-1
    if (rem(n,i)==0)
        result = false;
    end
end

outtype=result;

end



