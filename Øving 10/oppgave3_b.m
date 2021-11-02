%Oppgave 3b
%Loads datafile and creates a structure.
%Calculate average
x=load('quiz.dat');

x1=int16(x(:,1));
x2=x(:,2);
x3=x(:,3);
x4=x(:,4);

[r c] = size(x);


for i=1:r
    studenter(i)=struct('id_no',x1(i),'quiz',[x2(i) x3(i) x4(i)]);
    fprintf('Average score for student #%d is %.2f.\n',studenter(i).id_no,mean(studenter(i).quiz)); 
    
end
