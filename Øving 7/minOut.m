%Oppgave 2a - min/max-funksjoner

function outvalue = minOut(x)

outvalue=x(1);

for i = 2:length(x)
    if x(i)<outvalue
        outvalue=x(i)
    end
end
end

    
    