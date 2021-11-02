%Oppgave 3
function bool = har_nullere(vek)

bool = false;
for i = 1 : length(vek)
    if(vek(i)==0)
        bool=true;
    else
        bool=false;
    end
end
end

%Denne koden vil vise feil dersom siste elementet i vektoren ikke = 0.
%Dette er fordi koden kjøres sekvensielt i sammenheng med siste
%statementen i if-else-setningen. En alternativ løsning kan være å fjerne
%siste statement.