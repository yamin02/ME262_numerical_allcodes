clear;
x = 0:0.1:1;
y = [-0.48,1.978,3.28,6.16,7.08,7.34,7.66,9.56,9.48,9.3,11.2];
plot(x,y,'o','MarkerFaceColor','k');
title('Curve fitting');
xlabel('x axis');
ylabel('y axis');

p = polyfit(x,y,1);
p2 = polyval(x,y,1);
disp(p)
hold on;
