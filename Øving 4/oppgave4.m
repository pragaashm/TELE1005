%Exercise 23

ranforce = randi([0,12]);
if ranforce==0
    disp('There is no wind')
elseif ranforce>0 && ranforce<7
    disp('There is a breeze');
elseif ranforce>6 && ranforce<10
    disp('This is a gale');
elseif ranforce>9 && ranforce<12
    disp('It is a storm');
else
    disp('Hello, Hurricane!');
end

clear all

%Exercise 24
num=randi([-10,10],1); %Initierer en random integer for variabelen

switch num
    case {0,1,2}
        f2(num)
    case {-1, -2}
        f3(num)
    case {3,4}
        f4(num)
    otherwise
        f1(num)
end
