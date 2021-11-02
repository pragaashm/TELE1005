function printpackin(packstruct, indvec)

fprintf('Item: Cost: Price: Code:);
for i=1:length(packstruct)
    fprintf('%d, %.2f, %.2f, %c\n', packstruct(indvec(i)).item,packstruct(indvec(i)).cost,packstruct(indvec(i)).price,packstruct(indvec(i)).code);
end
end

 
function outvec=indvec(vec)

outvec=1:length(vec)

for i=1:length(vec)-1
    nvec=i;
    for y=i+1:length(vec)
        if vec(outvec(y)).cost < vec(outvec(nvec)).cost
            nvec=y;
        end
    end
    temp = outvec(i);
    outvec(i)=outvec(nvec)
    outvec(nvec)=temp;
end
end

    