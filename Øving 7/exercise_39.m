%exercise 39
tic
for i = 1:1000
    for j = 1:4
       if j ==1
           resultat = 11;
       elseif j == 2
           resultat = 22;
       elseif j == 3
           resultat = 46;
       else
           resultat =6;
       end
    end
end
toc
clear all

tic
for i = 1:1000
    for j=1:4
       switch j
           case 1
               resultat=11;
           case 2
               resultat=22;
           case 3
               resultat=46;
           otherwise
               resultat=6;
       end
    end
end
toc
clear all

%Resultatet varierer, men bruken av if-else virker til å være den raskeste.
