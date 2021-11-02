%Oppgave 2a - min/max-funksjoner

function outtype = maxOut(x)

outtype=x(1)

for i=2:length(x)
    if x(i)>outtype
        outtype=x(i)
    end
end
end
