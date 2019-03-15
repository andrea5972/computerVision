% Author: Andrea Murphy
% Date: March 10, 2019
% DESC: Parametric equation of the line (5,8) to (12,3)

figure;

N = 100;
t = linspace(0,1,N);
x= 5+(7*t);
y= 8-(5*t);
subplot(4, 2, 1);
plot(x,y)
grid on
title('Parametic Equation of the line (5,8) and (12,3)')

N = 100;
t = linspace(0,1,N);
x=-8+(7*t);
y=5+(5*t);
subplot(4, 2, 2);
plot(x,y)
grid on
title('Line rotated 90 degrees')

N = 100;
t = linspace(0,1,N);
x=10+(7*t);
y=8-(5*t);
subplot(4, 2, 3);
plot(x,y)
grid on
title('Double Length of Line')

N = 100;
t = linspace(0,1,N);
x=5+(7*t);
y=-8-(5*t);
subplot(4, 2, 4);
plot(x,y)
grid on
title('Refelect accross')

