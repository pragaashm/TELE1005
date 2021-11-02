%Oppgave 3
fid=fopen('dat.dat','r');

nyf=[];
while ~feof(fid)
    tline = fgetl(fid);
    a=textscan(tline,'%s %d %d %d %d','Delimiter',',');
    b1=a{1};
    b2=char(b1(1));
    f=regexp((b2),'[1-9]');
    b3=b2(f(1):f(2));
    b4=str2num(b3);
    b5=int32(b4);
    a{1}=b5;
    
    nyf=[nyf;cell2mat(a)];
    nyf1 = double(nyf) %Får ikke lagret matrise utenom å konvertere til double først.    
    
    
end
fclose(fid);
disp(nyf)
save nydat.dat nyf1 -ascii