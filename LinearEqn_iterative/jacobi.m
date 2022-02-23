A = [4,1,2;1,3,1;1,2,5];
B = [16;10;12];
e = 0.0001;
n = length(A);
x = zeros(1,n);
r = x;
i = 1;
while 1   
    x(1) = (B(1)-A(1,2)*r(i,2)-A(1,3)*r(i,3))/A(1,1);
    x(2) = (B(2)-A(2,1)*r(i,1)-A(2,3)*r(i,3))/A(2,2);
    x(3) = (B(3)-A(3,2)*r(i,2)-A(3,1)*r(i,1))/A(3,3);
    
    p = abs((x(1) - r(i,1))/x(1));
    q = abs((x(2) - r(i,2))/x(2));
    s = abs((x(3) - r(i,3))/x(3));
    i = i+1;
    r = [r; x];
    fprintf('Iteration %d\n',i-1);
    fprintf('\tx1\t\t\tx2\t\t\tx3\n');
    disp(x);
    fprintf('Error\n');
    disp([p q s]);
    if p<=e && q<=e && s<=e
        break;
    end
   
end
fprintf('\n\n');
disp('Solution');
disp(x);