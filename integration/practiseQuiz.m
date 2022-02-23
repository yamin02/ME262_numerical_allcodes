f = @(x) x.*exp(2*x) ; %Given function
givenResult = 5216.9 ;
error = [];
result = [];
count = 1 ;
segment = 2:2:20; %number of segment
for p = segment
    a = 0; %lower bound
    b = 4; %upper bound
    h = (b-a)/p;
    s = 0;
    for k = 1:(p/2)
        s = s + f(a + h*(2*k-2)) + 4*f(a+h*(2*k-1))+ f(a+h*2*k);
    end
    I = h*s/3 ;
    fprintf('Result for segment %d is %f\n',p,I);
    result(count) = I;
    error(count) = abs(1- I/givenResult);
    count = count +1 ;
end
plot(segment , error, 'bo-');
disp(I);