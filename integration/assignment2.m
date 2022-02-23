%This is the problem in the assignment
w = [122,130,135,160,175,190,200] ;
z =  0:10:60 ;
p = 1000 ; g =9.81 ; D=60 ; 

% finding the force exerted
f = (w.*(D-z))*p*g;
disp(f)
n = length(w)- 1 ; %number of divisions
disp(n) ;
a = z(1); %lower bound
b = z(end); %upper bound
h = (b-a)/n;
fprintf('\nh = %f\n\n',h);
s = 0;
for k = 1:(n/2)
    s = s + f(2*k-2+1) + 4*f(2*k-1+1) + f(2*k+1);
end
I = h*s/3 ;
disp('the force exerted is');
disp(I);

% finding the d
f = (w.*(D-z)).*z*p*g;
s1 = 0;
for k = 1:(n/2)
    s1 = s1 + f(2*k-2+1) + 4*f(2*k-1+1) + f(2*k+1);
end
I1 = h*s1/3;

d = I1/I ;
disp('Force is');
disp(d) ;
