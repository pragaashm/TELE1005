%Oppgave 2a

%Her vil det kjøres en kontinuerlig loop til n>3. Printer ut n.
%Ser at endelig utskrift for c (som er antall iterasjoner)
%blir 3. Kjører kodesnuttet.

c=0;
n=8;
while n>3
    fprintf('n er %d\n',n)
    n=n-2;
    c=c+1;
end
fprintf('c er %d\n',c)

%n er 8
%n er 6
%n er 4
%c er 3

clear all

%Oppgave 2b

%Her vil kodesnutten printe ut verdien k så lenge k<=j. Ettersom begge økes
%like mye, vil maks antall utskrift kjøres. Endelige utskriften blir en
%trappevis opptelling til 10, som er antall iterasjoner gitt for-setningen.
%Kjører koden:

j=1;
for i = [1:10]
    k=1;
    while k <=j
        fprintf('%d',k);
        k=k+1;
        i=i+1;
    end
    j=j+1;
    fprintf('\n');
end

%1
%12
%123
%1234
%12345
%123456
%1234567
%12345678
%123456789
%12345678910