%Oppgave 1

navn={'Kari','Per','Ola','Helga'};
verb={'liker','spiser'};
substantiv={'handball','tang','aviser'};

n1=navn(randi(length(navn)));
v1=verb(randi(length(verb)));
s1=substantiv(randi(length(substantiv)));

fprintf('%s %s %s.\n',n1{:},v1{1},s1{:});

clear all