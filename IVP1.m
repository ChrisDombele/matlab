clear all; clc; clf; close all; format short;
f = @(x,y) (50*exp(-10*x))-(2*y);
yexact = @(x)((185/4)*exp(-2*x))-((25/4)*exp(-10*x));
a = 0; %x0
b = 2; %x0 to where it ends
h = 0.1;
h1 = 0.01;
h2 = 0.001;
h3 = 0.00001;
y0 = 40;
xVec = a:0.001:b;

[xVal, yVal] = euler(f,a,b,y0,h);
[xVal1, yVal1] = euler(f,a,b,y0,h1);
[xVal2, yVal2] = euler(f,a,b,y0,h2);
[xVal3, yVal3] = euler(f,a,b,y0,h3);
absErr = abs(yVal - yexact(xVal));

disp('        xn      yn       yexact      absErr');
disp([xVal yVal yexact(xVal) absErr]);

hold all;

plot(xVec, yexact(xVec));
plot(xVal,yVal);
plot(xVal1,yVal1);
plot(xVal2,yVal2);
plot(xVal3,yVal3);

scatter(xVal,yVal,'*');

dirfield(f,a:.05:b,.75:.15:2);

xlabel('x');
ylabel('y');
title('dy/dx = (50*exp(-10*x))-(2*y)');
legend('Exact Solution','Approximate Solution','Approximate Solution 1','Approximate Solution 2','Approximate Solution 3','Mesh Points','Directional Field');