% Final Poject Section 12 Group 4 Eli, Chris, Ryan
clc;
close all;
clear all; %#ok<*CLALL>

function [p, n, d, q, t] = test1(image)

ratios = [0.9083, 0.6500, 0.7156, 0.8953, 0.7259, 0.7993, 1/0.9083, 1/0.6500, 1/0.7156, 1/0.8953, 1/0.7259, 1/0.7993];
coins = ["Penny", "Quarter", "Quarter", "Quarter", "Nickle", "Nickle", "dime", "dime", "Penny", "Nickle", "Dime", "Penny"];

dp = 0.9083;
dq = 0.6500;
pq = 0.7156;
nq = 0.8953;
dn = 0.7259;
pn = 0.7993;

A = imread(image);
A = rgb2gray(A);
A = A - 80;
% A = wiener2(A,[5 5]);
% A = wiener2(A,[5 5]);
% A = histeq(A);
%[circles, sizes] = zeros(1, 1), zeros(1,1);
%size([circles])

imshow(A);

% pix = cast((max(size((A)))), 'uint8');

%for pix = pix:-10:10
%    [centers, radii] = imfindcircles(A, [pix-5, pix + 5]);
%    if size(centers > 0)
%        disp([centers, radii])    
%    end
%end

[c, r] = imfindcircles(A, [200 1300], 'ObjectPolarity', 'dark', 'Sensitivity', 0.98);
viscircles(c, r)

% Initialize total for each coin
p = 0;
n = 0;
d = 0;
q = 0;

if max(size(r)) > 1
    for i = 2:length(r)
       val = r(1) / r(i);
       for j = 1:length(ratios)
          ppppp = abs(val/ratios(j));
          if abs((val/ratios(j))-1) < 0.03
            if strcmp(coins(j), "Penny")
                p = p + 1;
            elseif strcmp(coins(j), "Nickle")
                n = n + 1;
            elseif strcmp(coins(j), "Dime")
                d = d + 1;
            elseif strcmp(coins(j), "Quarter")
                q = q + 1;
            end
             disp(coins(j))
             disp(ratios(j))
          end      
       end
    end
end

t = pennies*.01 + nickles*.05 + dimes*.1 + quarters*.25;

end




