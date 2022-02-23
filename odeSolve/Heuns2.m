h = 0.01;
x = 0:h:1.5;
es = 0.01;
f = @(x,y) x^2 + y^2;
y(1) = 1;
for i = 1:3
    fprintf('\nIteration 1: \n');
    yi0 = y(i) + h/2*(f(x(i),y(i)) + f(x(i+1), y(i) + h*f(x(i),y(i))));
    fprintf('y(%d) = %f\n',i+1,yi0);
    
    e = abs((yi0-y(i))/yi0);
    fprintf('Error = %f%%\n',e*100);
    j=2;
    while e>es
        fprintf('\nIteration %d: \n',j);
        yin = y(i) + h/2*(f(x(i),y(i))+f(x(i+1),yi0));
        fprintf('y(%d) = %f\n',i+1,yin);
        
        e = abs((yin - yi0)/yin);
        fprintf('Error = %f%%\n',e*100);
        yi0 = yin;
        
        
        j = j+1;
    end
    y(i+1) = yin;
    fprintf('\nSo, y(%d) = %f\n', i+1,y(i+1));
end