%Oppgave 2c

function output = abc(x,n) %x is a single letter, n is an int

out=[];
output={};

for i=0:n-1
    c1=double(x)+i;
    c2=char(c1);
    
    out=[out,c2];
    output(end+1)=cellstr(out);
    
    
end

disp(output);

