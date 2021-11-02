%Practice 8.4
%Modify function
function printcylvols(cyls)
for i=1:length(cyls)
    [vol,sA]=cylvol(cyls(i).dimensions);
    fprintf('Cylinder %c has a volume of %.1f in ^3,\n and a surface area of %.2f\n',cyls(i).code,vol,sA);
end
end



function [cvol,sArea]=cylvol(dims)

cvol=pi*dims.rad^2*dims.height;
sArea=(2*pi*dims.rad^2)+(2*pi*dims.rad*dims.height);


end

%Testdata
cyls(3)=struct('code','c','dimensions',struct('rad',3,'height',6),'weight',9);
cyls(1)=struct('code','a','dimensions',struct('rad',2,'height',3),'weight',5);
cyls(2)=struct('code','b','dimensions',struct('rad',4,'height',4),'weight',6);

