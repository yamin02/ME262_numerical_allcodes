%f = @(x,y) x^2 + y^2;
f=@(x,y) -1*y;
n = 10;
h = 0.01;
x = 0:h:0.1;
y = [];
y(1) = 1;
for i = 1:n
    fprintf('\nAfter iteration %d\n',i);
    y(i+1) = y(i) + h*f(x(i),y(i)) ;
    fprintf('y(%f) = %.5f\n',x(i+1),y(i+1));
end
