%Oppgave 2_a

x1=input('Skriv filnavn: ','s');
x2=input('Skriv filtype: ','s');

outp=sprintf('%s%s',x1,x2)


%Oppgave 2_b

%Henter data fra forrige oppgave

b=isstrprop(outp(end-3),'punct');
c=isstrprop(outp(end-2:end),'alpha');

if b==1 & c==1
    x=true;
    fprintf('Filnavn verifisert. Denne er riktig.');
else
    x=false;
    fprintf('Filnavn verifisert. Denne er feil.');
    
end

clear all





