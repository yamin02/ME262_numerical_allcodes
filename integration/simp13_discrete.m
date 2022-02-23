%This is the problem in the assignment
f = [ 336,294.4,266.4 ,260.8 ,260.5 ,249.6 , 193.6, 165.6 ] ;
x=[0.5 , 2 ,3 ,4 ,6 ,8 ,10,11 ] ;
n = length(f)- 2 ; %number of divisions
disp(n) ;
a = x(1); %lower bound
b = x(end); %upper bound
h = (b-a)/n;
fprintf('\nh = %f\n\n',h);
for i = 1:n
    fprintf('f%d = f(%d) = %d\n', i-1, x(i) , f(i));
end
fprintf('\nApply formula from bappy sir slide\n\n');
s = 0;
for k = 1:(n/2)
    s = s + f(2*k-2+1) + 4*f(2*k-1+1)+f(2*k+1);
end

I = 3*h*s/8;
plot(x,f)
disp('Result is');
disp(I);