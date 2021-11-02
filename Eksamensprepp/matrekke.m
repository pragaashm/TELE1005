function out=matrekke(mx)

out=0;
for i = 3:mx
    f2=0;
    for y = 1:(i-1)
        f2=f2+y
        
    end
    out=i*f2
end

end
