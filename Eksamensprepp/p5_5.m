%p5.5
x=input('Enter a negative number:');
counter=0;
avg=0;
while counter <4  
    if x>=0
        error('You entered a positive number.');
    end
    fprintf('You entered %d.\n',x);
    counter=counter+1;
    avg=avg+x
    x=input('Enter a negative number:');    

end
fprintf('The average is %.2f.\n',avg/counter);