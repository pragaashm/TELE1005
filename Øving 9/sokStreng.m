%Oppgave 2_d
function sokStreng(tegnM,sokS)

tegnM=char('Hallo','Hi ','Ciao'); %tegn-matrise konstruert
sokS='o'; %Vilkårlig element valgt

x=tegnM==sokS;
[r c]=size(x);

found=[];
fr=[];

for col=1:c
   
    for row=1:r
        if x(row,col)==1
            found(end+1)=row;
            fr(end+1)=col;
        end
    end
    
end
if ~isempty(found)
    fprintf('  Element found!\n');
    fprintf('  Rows: Columns:\n');
    outp=[found;fr]';
    disp(outp);
else
    outp=[]
end
