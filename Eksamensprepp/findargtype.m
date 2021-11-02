%P4.3

function outtype = findargtype(inp)

[r c] = size(inp);

if r==1 && c==1
            outtype = 'Scalar';
else if c==1
    outtype = 'Column vector';
else if r==1
        outtype = 'Row vector';
        else
            outtype = 'Matrix';
        end
    end
end

end