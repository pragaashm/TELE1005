%Oppgave 2b

function outtype = testVec(vec,n)

outtype=[];

for i = 1:length(vec)
    if vec(i)<n
        outtype(i)=true;
    else
        outtype(i)=false;
    end
end
vec<n;
end

