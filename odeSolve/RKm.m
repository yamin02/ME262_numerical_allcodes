f = @(x,y) x^2 + y^2;
n = 10;
h = 1/n;
x = 0:h:1;
y = [];
y(1) = 0;
for i = 1:n
    fprintf('\nAfter iteration %d\n',i);
    k1 = f(x(i),y(i));
    k2 = f(x(i) + h/2, y(i)+k1*h/2);
    k3 = f(x(i) + h/2, y(i)+k2*h/2);
    k4 = f(x(i) + h,   y(i) + k3*h);
    y(i+1) = y(i) + h/6*(k1+2*k2+2*k3+k4);
    fprintf('k1 = %.5f\nk2 = %.5f\nk3 = %.5f\nk4 = %.5f\n',k1,k2,k3,k4);
    fprintf('y(%f) = %.5f\n',x(i+1),y(i+1));
end
