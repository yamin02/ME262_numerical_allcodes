 Fun = @(x) exp(-x).*sin(3*x); 
 dFun = @(x) -exp(-x).*sin(3*x)+ 3*exp(-x).*cos(3*x);

%Fun = @(x)  x.^3 + 2*x.^2 - x + 3 ;
x = -5:1:5 ;

F = Fun(x);
h= x(2)-x(1);

% central differnce scheme
xCentral=x(2:end-1);
dFCenteral=(F(3:end)-F(1:end-2))/(2*h);

%forward differnce scheme
xForward=x(1:end-1);
dFForward=(F(2:end)-F(1:end-1))/h;
disp(dFForward);

% backward differnce scheme
xBackward=x(2:end);
dFBackward=(F(2:end)-F(1:end-1))/h;

plot(x,dFun(x));
hold on
plot(xCentral,dFCenteral,'r')
plot(xForward,dFForward,'k');
plot(xBackward,dFBackward,'g');
legend('Analytic','Central','Forward','Backward')
