function outtype = mymatmin(inputarg)

[r c] = size(inputarg);

for col=1:c
    colMin(col)=inf;
    for row=1:r
        if inputarg(row,col)<colMin(col)
            colMin(col)=inputarg(row,col);
        end
    end

fprintf('The min of col %d is %d\n',col,colMin(col));

end
fprintf('\n');
fprintf('The final vector for the minimum value is:\n')
disp(colMin);

end
