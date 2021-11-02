%Oppgave 4a
%Bruker dat.filer fra tidligere oppgaver

x=input('Enter filename: ','s');

fid = fopen(x);

while fid == -1
    fprintf('Filename not found. Try again.\n','s');
    x=input('Enter filename: ','s');
    fid = fopen(x);
end

if fid ~= -1
    disp('File opened.')
    cfid=fclose(fid);
    if cfid==0
        disp('File is now closed')
    else
        disp('File was not closed')
    end
end
    

clear all




    
