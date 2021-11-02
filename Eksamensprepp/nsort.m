function outv = nsort(vec)

for i=1:length(vec)-1
    fLow=i;
    for y=i+1:length(vec)
        if vec(y)>vec(fLow)
            fLow=y;
        end
    end
    
    temp = vec(i);
    vec(i) = vec(fLow);
    vec(fLow)=temp;
end
outv=vec;
end
