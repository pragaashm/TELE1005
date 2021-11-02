%Oppgave 3bc

function magisk = magtall(inputarg)

x=randi([1,12]);
lines=0;
itr=0;

if inputarg<1 || inputarg>12
    error('Gyldig magisk tall: 1-12. Prøv igjen')
end

while x ~=inputarg
    fprintf('Trukket tall er: %d\n',x);
    itr=itr+1;
    x=randi([1,12]);
    for i=1:inputarg
        if x==inputarg
            lines=lines+1;
            fprintf('Blinkskudd, Randi!--%d--\n',lines)
        end
    end
end
fprintf('Der kom ditt magiske tall %d!\n',inputarg);
fprintf('Etter %d forsøk kom endelig ditt magiske tall %d!\n',itr,inputarg);
clear all
