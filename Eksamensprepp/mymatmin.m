function mini=mymatmin(mat)

[r c] = size(mat)

mini=zeros(1,c)

for i = 1:r   
    minu=mat(1,i)
    for y = 1:c
        if mat(i,y)<minu
            mini(1,y)=mat(i,y)
                   
    end
    end

end

end

