% Author: Andrea Murphy
% Date: March 15, 2019
% DESC: Parametric equation of the line (5,8) to (12,3)
% Transform matrix

figure;

N = 100;
t = linspace(0,1,N);
x= 5+(7*t);
y= 8-(5*t);
subplot(1,2,1);
plot(x,y)
grid on
title('Parametic Equation of the line (5,8) and (12,3)')

transforms_all = [1, 0, 2; 0, 1, 0; 0, 0, 1];
N = 100;
t = linspace(0,1,N);
x= 5+(7*t);
y= 8-(5*t);
rot90(transforms_all)
shiftdim(transforms_all)
subplot(1,2,2);
plot(transforms_all)
grid on
