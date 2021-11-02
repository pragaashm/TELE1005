%Oppgave 4

function  vaer = weatherStats(inputarg)
x=load(inputarg);
[r c] = size(x);
minD=0;
maxD=0; 

for col=1:c
    
    colMax(col)=-inf;
    colMin(col)=inf;
    totN=0;
  
    for row=1:r
        if col==3
            totN=totN+x(row,col);
            else if x(row,col)<colMin(col)
                    colMin(col)=x(row,col);
                    minD=row;
                    else if x(row,col)>colMax(col)
                            colMax(col)=x(row,col);
                            maxD=row;
                        end
                end
        end
    end
end

fprintf('\nThere are %d days in the period\n',r);
fprintf('The highest temperature was %.1fC, on day number %d.\n', colMax(1,1),maxD);
fprintf('The lowest temperature was %.1fC, on day number %d.\n', colMin(1,2), minD);
fprintf('There was a total of %.1fmm rain in the period of %d days.\n', totN,r);

end
