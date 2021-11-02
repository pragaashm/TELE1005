%Practice 3.2

x=input('Enter the length:');
y=input('Is that (f)eet or (m)eters?:','s');

if y=='f' | y=='m'
    fprintf('You stored the value %.2f%s\n',x,y);
else
    fprintf('Wrong value input. Try again\n');
end

