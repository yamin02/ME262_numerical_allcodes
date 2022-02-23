format long
%This is the problem in the assignment
f = [ 336,294.4,266.4 ,260.8 ,260.5 ,249.6 , 193.6, 165.6 ] ;
x=[0.5 , 2 ,3 ,4 ,6 ,8 ,10,11 ] ;


% Simpson 1/3 rule
disp('FOR SIMPSON 1/3')
n = length(f)- 4 ; %number of divisions for simp 1/3
disp(n) ;
a = x(1); %lower bound
b = x(end); %upper bound
h = (b-a)/n;
fprintf('\nh = %f\n',h);
for i = 1:n
    fprintf('f%d = f(%d) = %d\n', i-1, x(i) , f(i));
end
s = 0;
for k = 1:(n/2)
    s = s + f(2*k-2+1) + 4*f(2*k-1+1)+f(2*k+1);
    % 1 added because matlab has no f(0) value for array
end
I1 = h*s/3;


% Simpson 3/8 rule
fprintf('\n\nFOR SIMPSON 3/8')
n = length(f)- 5 ; %number of divisions for simp 3/8
disp(n) ;
a = x(1); %lower bound
b = x(end); %upper bound
h = (b-a)/n;
fprintf('\nh = %f\n',h);
for i = 1:n
    fprintf('f%d = f(%d) = %d\n', i-1, x(i) , f(i));
end
s2 = 0;
for k = 1:(n/3)
    s2 = s2 +  f(3*k-3+1) + 3*f(3*k-2+1)+ 3*f(3*k-1+1) + f(3*k+1);
    % 1 added because matlab has no f(0) value for array
end
I2 = 3*h*s2/8;

I = I1 + I2 ;
%plot(x,f)
disp('Result is');
disp(I);