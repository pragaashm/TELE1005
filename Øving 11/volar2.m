%Function - Oppgave 2
function volar2(cyls)

for i=1:length(cyls)
    [vol,sA]=cylvol(cyls(i).dimensjon);
    [kost1,kost2]=cylvol1(cyls(i).kost);
    fprintf('Cylinder %c has a volume of %.1f cm^3,\n and a surface area of %.2f cm.\n',cyls(i).kode,vol,sA);
    fprintf('Std. cost is: %d. Exclusive cost is: %d.\n',kost1,kost2);
end
end


function [cvol,sArea]=cylvol(dims)

cvol=(pi*dims.radius^2*dims.hoyde);
sArea=(2*pi*dims.radius^2)+(2*pi*dims.radius*dims.hoyde);


end

function [kost1,kost2]=cylvol1(kost)

kost1=kost.std;
kost2=kost.eksklusiv;

end
