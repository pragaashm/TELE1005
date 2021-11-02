%Oppgave 2c)

x1=input('Input min value for vector: \n');
x2=input('Input max value for vector: \n');
x3=input('Input max length for vector: \n');
y=randi([x1,x2],1,x3)

out=[];
for i=1:length(y)
    if negativSjekk(y(i))==1
        out(end+1)=absoluttverdi(y(i));
    else
        out(end+1)=y(i);
    end
end
disp(out);
