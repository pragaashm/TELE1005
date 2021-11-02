%Oppgave 1_a

x=input('Skriv inn en string: ','s');
y=length(x);

if isstrprop(x,'alpha');
    fprintf('Du skrev inn %s. Den består av %d elementer.\n',x,y);
    fprintf('Første element er %s. Siste er %s.\n', x(1),x(end));
else
    error('Du har enten tom string eller tall i stringen');
end
    
clear all

%Oppgave 1_b

x='hseeirai_ermoessetnebro_rigg!j!e!n';
y=length(x);

x1=[];
x2=[];
x1=x(1:2:y);
x2=x(2:2:y);

f=[x1;x2];

clear all

%Oppgave 1_c
i=[1:5]
    
z=sprintf('labfil%d\n',i)

clear all

%Oppgave 1_d
startStr = '1234567890';
minStr = ' abc xy';
nyStr = strtrim(minStr)
length(nyStr)
upper(nyStr(1:3))
sprintf('Tallet er %4.1f', 3.3)
sprintf('Tallet er %10.1f', 3.3)
sprintf('%s er %3.1f', upper(nyStr(end-2:end)),3.3)

clear all

%Oppgave 1_e
%Vi kan benytte oss av strcmpi-funksjonen. Den vil ikke være case-sensitiv.
%og vil skrive ut et logisk svar dersom tekststrengene er like.

strcmpi('TeIt', 'teIT');

%Vi kan også evt. formatere alle tekststrenger til enten lower/uppercase
%for å unngå case-sensitivity. 

x1=('DeTTE eR en Test');
x2=('Dette er EN test');

newx1=lower(x1);
newx2=lower(x2);
strcmp(newx1,newx2);

clear all

%Oppgave 1_f
x='hallo i luken';
y=isspace(x);
ans=sum(y);

clear all





