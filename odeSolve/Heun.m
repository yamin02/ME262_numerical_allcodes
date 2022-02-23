%f = @(x,y) x^2 + y^2;
f=@(x,y) 2.*y./x;
n = 10;
h = 0.25;
x = 1:h:10;
y = [];
y(1) = 2;
for i = 1:n
    fprintf('\nAfter iteration %d\n',i);
    yPredict = y(i) + h*f(x(i),y(i)) ;
    y(i+1) = y(i) + (h/2)* [ f(x(i),y(i)) + f(x(i+1),yPredict) ] ;
    fprintf('y(%f) = %.5f\n',x(i+1),y(i+1));
end
