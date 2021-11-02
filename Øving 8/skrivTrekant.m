%Utskrift av svaret.
function skrivTrekant(hyp,vink)
[a b]=kalkAB(hyp,vink);

fprintf('\n')
fprintf('For en rettvinklet trekant med hypotenus %.1f\n',hyp);
fprintf('og en vinkel på %.2f radianer mellom side a og hypotenusen,\n',vink);
fprintf('så er side a = %.2f og side b= %.2f.\n',a,b);

end

function [a,b]=kalkAB(hyp,vink)
%Beregner sidene

a=hyp*cos(vink);
b=hyp*sin(vink);

end


