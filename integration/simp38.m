f = @(x) (sin(x)).^2 + (cos(x)).^3; %Given function
n = 9; %number of divisions
a = 2; %lower bound
b = 9; %upper bound
h = (b-a)/n;
fprintf('\nh = %f\n\n',h);
for i = 0:n
    fprintf('f%d = f(%f) = %f\n',i, a+i*h , f(a+i*h));
end
fprintf('\nApply formula from bappy sir slide\n\n');
s = 0;
for k = 1:(n/3)
    s = s + f(a + h*(3*k-3)) + 3*f(a + h*(3*k-2))+ 3*f(a + h*(3*k-1))...
        +f(a+h*3*k);
end
I = 3*h*s/8;
%x= 1:1:9;
%plot(x, f(x));
disp('Result is');
disp(I);