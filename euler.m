function [xVal, yVal] = euler(f,a,b,y0,h)
N = floor((b-a)/h +1); %Number of Mesh Points
xVal = zeros(N,1); %Creating an empty vector
yVal = zeros(N,1); %Another empty vector
xVal(1) = a;
yVal(1) = y0;
for i=2:N
    xVal(i) = a + (i-1)*h; %Mesh Points
    yVal(i) = yVal(i-1)+h*f(xVal(i-1),yVal(i-1));
    %Approximate y-values
end

