%Practice 6.3
%Promts the user for a string of at least one character, error checks as
%well.

function outstr= checkit(str)

disp('Enter a string with at least one character: ');
outstr = input('Enter string here: ', 's');
if outstr =="";
    error('Error. At least one character needed');
else if ~isstrprop(outstr,'alpha')
        error('Error. At least one character needed');
    end
end


end


