%Function - Oppgave 3a
function volar(cyls)

for i=1:length(cyls)
    [vol,sA]=cylvol(cyls(i).dimensjon);
    fprintf('Cylinder %c has a volume of %.1f cm^3,\n and a surface area of %.2f cm.\n',cyls(i).kode,vol,sA);
end
end


function [cvol,sArea]=cylvol(dims)

cvol=(pi*dims.radius^2*dims.hoyde);
sArea=(2*pi*dims.radius^2)+(2*pi*dims.radius*dims.hoyde);


end