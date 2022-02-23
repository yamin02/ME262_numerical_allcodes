a=[5,1,3,0;1,4,1,1;-1,2,6,-2;1,-1,1,4];
c=[16;11;23;-2];
elimit = 0.002;
[n,N] = size(a);
for i=1:n
    x(i)=0; xold(i)=0;
end
sum=0;
err=0;
for k=1:10 % k is the number of iterations
    fprintf('\n\n\nIteration %d\n',k);
    for i=1:n
        for j=1:n
            if j~=i
                sum=sum+a(i,j)*x(j);
            end
        end
        x(i)=(c(i)-sum)/a(i,i);
        fprintf('\nx%d = %f\n',i,x(i));
        sum = 0.0;
        err = abs((x(i)-xold(i))/x(i));
        fprintf('Error = %f%%\n',err*100);
        xold(i) = x(i);
    end
    if err<=elimit break; end
    err=0.0;
end
fprintf('\n\n\n');
disp('Solution');
for i=1:n disp (x(i)); end