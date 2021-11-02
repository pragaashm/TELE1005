%Oppgave 2a

function nCell= celleT(iCel)

nCell=iCel;
for i=1:size(iCel,1)
    for y=1:size(iCel,2)
        if iCel{i,y}=='n'
            nCell=lower(cellstr(iCel));
            elseif iCel{i,y}=='o'
                nCell=upper(cellstr(iCel));
        end
    end
end
                
        
    
            





