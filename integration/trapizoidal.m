f = @(x) (sin(x))^2 + (cos(x))^3; %Given function
n = 10; %number of divisions
a = 2; %lower bound
b = 9; %upper bound
h = (b-a)/n;
fprintf('\nh = %f\n\n',h);
for i = 0:n
    fprintf('f%d = f(%f) = %f\n',i+1,a+i*h,f(a+i*h));
end
fprintf('\nApply formula from bappy sir slide\n\n');
s = 0;
for k = 1:n
    s = s + f(a + h*(k-1)) + f(a + h*k);
    fprintf('the value for %d iteration is %f\n', k , s);
end
I = h*s/2;
disp('Result is');
disp(I);