%Oppgave 3a - Rekursive funksjoner
function outvar = minPot(a,n)

if n > 0
    outvar = a*minPot(a,n-1);
else
    outvar = 1;
end

end

%Oppgave 3b - Beskriv følgende funksjon

%function utvar = mysFunk(x,y)
%if y == 1
% utvar = x;
%else
% utvar = x + mysFunk(x,y-1);
%end

%x^y*x