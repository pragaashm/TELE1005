function outmat = matIn(inp1,inp2)

outmat=zeros(inp1,inp2);
for i=1:inp1    
    for j=1:inp2
        outmat(i,j)=i*j;
    end
end

end
