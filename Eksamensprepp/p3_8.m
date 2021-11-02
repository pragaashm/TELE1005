%Practice 3.8

x = load('salesfigs.dat')

x1=x(1,:)
x2=x(2,:)
plot(x1,'ko');
hold on
plot(x2,'k*');
hold off
legend('Division A','Division B');