format long;
f = @(x) (x+10).^(1/4)
elimit = 0.000001;
xold = input('Enter guess value: ');
i = 1;
while(true)
    fprintf('\nAfter iteration %d\n',i);
    xnew = f(xold);
    e = abs((xnew - xold)/xnew);
    fprintf('xi = %f\nerror = %f%%\n',xnew,e);
    if e<=elimit break;
    elseif f(xnew) == 0 break;
    end
    xold = xnew;
    i = i + 1;
end
fprintf('\nRoot is %f\n',xnew);