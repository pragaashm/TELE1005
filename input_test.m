fprintf('\n')
tekst = 'Julie skal finne et reisemål\nHvor lang tid tror du dette vil ta?\nSkriv tall(svar i minutt): ';
test =input(tekst);
answ = test*10;
fprintf('\n')

sTekst= ['Tallet er: ',num2str(answ)]; %Benytter disp
disp(sTekst)

fprintf('Maskinen regner ut: %d minutter.\n',answ); %Skriver direkte med fprintf. Benytter ingen variabler

% %s=string, %d=double, %i=integer





