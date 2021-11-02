%Oppgave 2b

nCell={};
for n=1:4;
    x=input(['Input string with a length of ' num2str(n) ' elements: '],'s');
    if length(x)==n & isstrprop(x,'alpha')
        nCell(end+1)=cellstr(x);
    else if ~isstrprop(x,'alpha')
            error('Not a string. Try again');
        else
            while length(x)~=n
                disp('Wrong. Try again.');
                fprintf('\n');
                x=input(['Input string with a length of ' num2str(n) ' elements: '],'s');
            end
                nCell(end+1)=cellstr(x);
        end
    end
end
             
nCell

clear all

