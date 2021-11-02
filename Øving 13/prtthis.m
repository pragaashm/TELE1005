%Oppgave 1 - Practice 10.3
function prtthis(inp)

x = 1:0.25:6;
conv=str2func(inp);
y = conv(x)
plot(x,y,'ko')
xlabel('x');
ylabel('y');
title(inp)
end
