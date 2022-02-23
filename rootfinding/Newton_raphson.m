format long;
f = @(x) x^2 + 2;
g = @(x) 2*x;

elimit = 0.001;
xold = input('Enter guess value: ');
i = 1;
while(true)
    fprintf('\nAfter iteration %d\n',i);
    xnew = xold - f(xold)/g(xold);
    e = abs((xnew - xold)/xnew)*100;
    fprintf('xi = %f\nerror = %f%%\n',xnew,e);
    if e/100<=elimit break;
    elseif f(xnew) == 0 break;
    end
    xold = xnew;
    i = i + 1;
end
fprintf('\nRoot is %f\n',xnew);