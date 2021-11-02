%Oppgave 1 - Practice 10.4
%Before writing the function down, we'll try to define what the function
%would return. We see that the function will return a a looped number given
%the input. Ex.: recurfn(2) will give us 4+4+4+2, as outvar = 4 +
%recurfn(num-1) as long as num < 0. 


function outvar = recurfn(num)

if num < 0
    outvar = 2;
else outvar = 4 + recurfn(num-1);

end

end
