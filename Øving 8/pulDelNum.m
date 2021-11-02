%Oppgave 2
%Skriver ut og holder rede på pulje og deltager for hvert kjør.

function pulDelNum

persistent count
persistent pulj

if isempty(pulj) || isempty(count)
    count=1;
    pulj=1;
elseif count>=10
    count=1;
    pulj=pulj+1;
else
    count=count+1;  
end

fprintf('Pulje: %d. Deltaker: %d.\n',pulj,count);
end
