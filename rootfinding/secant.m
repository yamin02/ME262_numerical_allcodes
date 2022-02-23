f = @(x) x^2 -4*x - 10 ;
elimit = 0.001;
xold = input('Enter guess value Xi: ');
xmoreold =input('Enter value Xi-1:');
i = 1;
while(true)
    fprintf('\nAfter iteration %d\n',i);
    xnew = xold - ( f(xold) * (xmoreold - xold))/(f(xmoreold) -f(xold)) ;
    e = abs((xnew - xold)/xnew)*100;
    fprintf('xi = %f\nerror = %f%%\n',xnew,e);
    if e/100<= elimit break;
    elseif f(xnew) == 0 break;
    end
    xmoreold = xold;
    xold = xnew;
    i = i + 1;
end
fprintf('\nRoot is %f\n',xnew);