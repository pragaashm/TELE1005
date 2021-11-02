%Oppgave 4b
%data opprettet under navnent 'wrate.dat'

fid = fopen('wrate.dat');

rate=[];
if fid == -1
    disp('Filename not found. Try again.');
    
else if fid ~= -1
    disp('File opened.')
    while ~feof(fid)
        wdata=fgetl(fid);
        w=textscan(wdata,'%c %f','Delimiter',',');
        rate=[rate;w];
        numr=rate(:,2);
        x=max(cell2mat(numr));    
        cC=rate(find([numr{:}] == x));
        
    end
    fprintf('The production line with the highest failing rate is\n')
    fprintf('line %c with a failing rate of %0.2f.\n',char(cC),x)
    
    cfid=fclose(fid);
    if cfid==0
        disp('File is now closed')
    else
        disp('File was not closed')
    end
    end
end
            



    


     
    

    
