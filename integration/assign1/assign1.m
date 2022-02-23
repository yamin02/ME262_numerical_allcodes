% all the upper bounds are even. So 1/3 simpson

file1 = fopen('valueP.txt') ;  
S = textscan(file1,'%s');
fclose(file1);
file2 = fopen('valueC.txt') ;  
S2 = textscan(file2,'%s');   
fclose(file2);

valueP = str2double(S{1}(1:1:end));
valueC = str2double(S2{1}(1:1:end));

f = (valueC - 1)./ valueP ;

% using simpsons 1/3 for each values
for i=1:length(valueP)
    n = 2 ; %number of divisions
    a = 0 ; %lower bound is zero
    b = valueP(i); %upper bound
    h = (b-a)/n;
    k=1;
    s =  f(2*k-2+1) + 4*f(2*k-1+1)+f(2*k+1);
    I = h*s/3;
    valueF = valueP(i)*exp(I);
    arrayF(i) = valueF;
end

fileF = fopen('valueF.txt','w');
fprintf(fileF,'%f \n',arrayF);
fclose(fileF);

