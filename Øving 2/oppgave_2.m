%Oppgave 2

%a) Opprett matrisene

A1=reshape(0:24,5,5)'
A2=eye(5)

%b) Overskriver elementer
A2(1,5)=A1(5,1)

%c) Lag vektor
v1=A1(1,:)

%d) Kopier rad
A2(4,:)=v1

%e) Kopier verdier
A2(:,4)=A1(3,:)

%f) Speil/flipp matrisen
A2'