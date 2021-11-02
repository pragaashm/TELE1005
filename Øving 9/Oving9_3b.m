%Oppgave 3_b

function Oving9_3b %Dropper output-variabler

fprintf('Input a number, directly followed by a single letter.\n');
x=input('Number and single letter: ','s');

x1=x(1:end-1);
x2=x(end);

z1=~isstrprop(x1,'digit');
z2=isstrprop(x2,'alpha');

if sum(z1)>0 || sum(z2)==0
    while sum(z1)>0
        fprintf('Wrong. Try again. ');
        x=input('Number and single letter: ','s');
        x1=x(1:end-1);
        x2=x(end);
        z1=~isstrprop(x1,'digit');
        z2=isstrprop(x2,'alpha');
    
    while sum(z2)==0
        fprintf('Wrong. Try again. ');
        x=input('Number and single letter: ','s');
        x1=x(1:end-1);
        x2=x(end);
        z1=~isstrprop(x1,'digit');
        z2=isstrprop(x2,'alpha');
    end
    end
    
end
fprintf('Written number is: %d.\n',str2num(x1));
fprintf('Written alphabet is: %s.\n',x2);
   











    




    
        

    
