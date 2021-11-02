%Oppgave 1ab
%Koden tar for seg en vilkårlig vektor på størrelsen 5-25, med 9 elementer.
%Ordner opp i vektoren til stigende grad.
%Tester ut kodesnuttet.

vek= randi([5, 25], 1, 9)
for k1 = 1:length(vek)
    [svek(k1),ix] = min(vek)
    vek(ix) = [];
end

vek = svek

%Oppretter pseudokode.

%Oppretter vektor vek
%Oppretter loop for k1=1:lengden av vektor
%finner minste element og plassering min(vek)
%Lager ny vektor basert på plasseringen vek(ix)
%Ender loop
%Erstatter ny vek

