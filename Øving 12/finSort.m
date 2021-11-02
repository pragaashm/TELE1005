%Oppgave 5
%Tar inn en vektor og returnerer to indeksvektorer, stigende og synkende.

function [indvec1,indvec2] = finSort(vec)

len=length(vec)
indvec1=1:len;
indvec2=1:len;


for i = 1:len-1
    indlow= i;
    indHigh = i;
    for j= i+1:len
        if vec(indvec1(j)) > vec(indvec1(indlow))
            indlow = j;
            else if vec(indvec2(j)) < vec(indvec2(indHigh))
                    indHigh = j;
                end
        end
    end                    
    temp1 = indvec1(i);
    temp2 = indvec2(i);
    indvec1(i) = indvec1(indlow);
    indvec2(i) = indvec2(indHigh);

    indvec1(indlow) = temp1;
    indvec2(indHigh) = temp2;
    
end
end
    


