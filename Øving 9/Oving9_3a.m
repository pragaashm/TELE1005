%Oppgave 3_a

function Oving9_3a

x=input('Skriv ett villk�rlig ord: ','s');

fprintf('\n');
fprintf('Fra %s til %s.\n',x,x(randperm(length(x))))

end



