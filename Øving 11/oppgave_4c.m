%Oppgave 4c

x=input('Please enter the amount of voltage values wanted: ');

for i=1:x
    y=input('Enter voltage values: ');
    while y<0 || y>24
        y=input('Value out of bonds. Please enter new value: ');
    end
    fprintf('\n');
    fprintf('R = 100 Ohm. Calculating effect for value #%d.\n',i);
    eff=(y^2/100);
    
    fid = fopen('calculations.txt', 'at');
    if fid ~= -1
        
        fprintf(fid,'The voltage value is %dV. The effect is %0.2fW.\n',y,eff);
        ex=fclose(fid);
        if ex==0
            disp('Values saved to file. File is now closed.')
        else
            disp('File was not closed')
        end
                              
    end
           
    
end




