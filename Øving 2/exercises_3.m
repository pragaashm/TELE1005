%3.5 - Input statements
txt='Input real number: ';
answ=input(txt);
fprintf('The number is: %.2f\n', answ)

clear all

%3.12 - script_1 Input and text alignment
txt='Input single character: ';
answ=input(txt,'s');
fprintf('%-5c %3c\n',answ,answ)

clear all

%3.13 - script_2 iotrace
mynum=input('Please enter a number: \n');
mychar=input('Please enter a character: \n','s');
fprintf('Your number is %.2f\n',mynum)
fprintf('Your character is %3c!\n',mychar)

clear all



