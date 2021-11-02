%Oppgave 3 - switch..case

disp('Write your car brand and find out its nationality!');
fprintf('\n');
x = input('Input brand here: ','s');

if isempty(x)
    error('Please input a car brand');
else
    switch x
        case {'Ferrari','ferrari'}
            disp('Italia');
        case {'Toyota','toyota'}
            disp('Japan');
        case {'Tesla','tesla'}
            disp('USA');
        case {'Mercedes','VW','mercedes','Vw','vw','volkswagen','Volkswagen','bmw','BMW'}
            disp('Germany');
        otherwise
            error('Brand not found. Try again');
    end
end
