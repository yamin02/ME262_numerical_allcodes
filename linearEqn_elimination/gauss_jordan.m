format short;
%User Input
A=[0,2,0,1;2,2,3,2;4,-3,0,1;6,1,-6,-5];
B=[0;-2;-7;6];
[m,n] = size(A);

%Check to be square
if m~=n
    disp('Matrix must be square.');
else
    aug = [A B];
    disp('Augmented Matrix: ');
    disp(aug);
    
    fprintf('For Upper Triangular Matrix\n');
    for k = 1:n
        d = aug(k,k);
        aug(k,:) = aug(k,:)/d;        
        for i = k+1:n
            factor = aug(i,k)/aug(k,k);
            for j = k:n+1
                aug(i,j) = aug(i,j) - factor*aug(k,j);
            end
        end
        disp(aug);
    end
    
    fprintf('For Lower Triangular Matrix\n');
    for k = 1:n
        for i = 1:k-1
            factor = aug(i,k)/aug(k,k);
            for j = k:n+1
                aug(i,j) = aug(i,j) - factor*aug(k,j);
            end          
        end
        disp(aug);
    end
    
disp('Final Look');
disp(aug);
disp('x = ');
disp(aug(:,end));
end