%Oppgave 2_c
function tallSjekk %Dropper input-parameter.

N=input('Skriv inn et villkårlig heltall: ');
fprintf('Skriv inn et tall mellom 1-%d: ',N);
nT=input('');

x=[1:N];

while nT~=x
    if nT~=x
        fprintf('Ugyldig tall. Vennligst prøv igjen.\n');
        fprintf('Skriv inn et tall mellom 1-%d: ',N);
        nT=input('');
    end

end
    fprintf('Takk, du har matet inn %d.\n',nT);

end
