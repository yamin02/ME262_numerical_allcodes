A=[0,1,-3,0;0,0,1,-1;1,-1,0,0;1,0,0,-1];
B=[100;-500;300;-100];
[n,N] = size(A);    
for k = 1:n-1
    
    m = max(abs(A(k:n,k)));
    
    p = find(abs(A(k:n,k)) ==m)+k-1;
    temp=A(p,:);
    A(p,:)=A(k,:);
    A(k,:)=temp;
    temp=B(p);
    B(p)=B(k);
    B(k)=temp;
    
    for i = k+1:n
        factor = A(i,k)/A(k,k);
        for j = k:n
            A(i,j) = A(i,j) - factor*A(k,j);
            
        end
        B(i) = B(i) - factor*B(k);
    end
    disp([A B]);
end
x = zeros(1,n);
x(n) = B(n)/A(n,n);
for p = n-1:-1:1
    sum = 0.0;
    for j = p+1:n
        sum = sum + A(p,j)*x(j);
    end
    x(p) = (B(p)-sum)/A(p,p);
end
disp('x = ');
disp(x');