a=[4,1,2;1,3,1;1,2,5];
c=[16;10;12];
elimit = 0.0001;
[n,N] = size(a);
for i=1:n
    x(i)=0; xold(i)=0;
end
sum=0;
err=0;
for k=1:1000 % k is the number of iterations
    fprintf('\n\n\nIteration %d\n',k);
    for i=1:n
        for j=1:n
            if j~=i
                sum=sum+a(i,j)*xold(j);
            end
        end
        x(i)=(c(i)-sum)/a(i,i);
        fprintf('\nx%d = %f\n',i,x(i));
        sum=0.0;
        err=abs((x(i)-xold(i))/x(i));
        fprintf('Error = %f%%\n',err*100);
        
    end
    if err<=elimit break; end
    err=0.0;
    for i = 1:n
        xold(i)=x(i);
    end
end
fprintf('\n\n\n');
disp('Solution');
for i=1:n disp (x(i)); end