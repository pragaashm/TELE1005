%Oppgave 3c - Fibonacci
%Outputs the n-th number in the sequence

function outFib = fib(n)

if n < 1
    outFib = 0;
else if n == 1
        outFib = 1;
    else
        outFib = fib(n-2) + fib(n-1);
    end
end


    
end

