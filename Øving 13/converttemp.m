%Oppgave 1 - Practice 10.2
%Run function. The used function handle will be saved for further use. Call
%upon the function correctly (ex: y=varargout{2}) before using it further.
function varargout = converttemp(x,varargin)

n=nargin;

if n ==2;
    meas = varargin{1};
    if meas == 'c'
        fprintf('Inpus is in Celsius.\n');
        varargout{1} =@(x) x+273.15;
        varargout{2} =@(x) (9/5*x)+32;
    else if meas == 'f'
            fprintf('Input is in Fahrenheit.\n')
            varargout{1} = @(x) (x-32)*5/9;
        else if meas == 'k'
                fprintf('Input is in Kelvin.\n');
                varargout{1} =@(x) x-273.15;
            else
                fprintf('Please specify correct degree.\n');
            end
        end
    end
    save tempconverters varargout
else
    fprintf('Input missing.\n');
end

end