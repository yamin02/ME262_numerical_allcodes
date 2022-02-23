%User Input
A=[4,1,2;1,3,1;1,2,5];
B=[16;10;12];
[m,n] = size(A);

%Check to be square
if m~=n
    disp('Matrix must be square.');
else
    aug = [A B];
    disp('Augmented Matrix: ');
    disp(aug);
    
    % Forward Elimination
    for k = 1:n
                
        for i = k+1:n
            factor = aug(i,k)/aug(k,k);
            for j = k:n+1
                aug(i,j) = aug(i,j) - factor*aug(k,j);
            end
        end
    end
    disp('Upper triangular matrix:');
    disp(aug);
    
    % Backward subsitution
    x = zeros(n,1);
    x(n) = aug(n,n+1)/aug(n,n);
    for i = n-1:-1:1
        sum = 0;
        for j = i+1:n
            sum = sum + aug(i,j)*x(j);
        end
        x(i) = (aug(i,n+1)-sum)/aug(i,i);
    end
    disp('x = ');
    disp(x);   
end