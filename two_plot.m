% Author: Andrea Murphy
% Date: March 10, 2019

t = linspace(0,4*pi);
x= t + 2 *cos(2*t);
y = t + 3*sin(3*t);
figure()
plot(x,y)
title('2D Graph')

x= cos(t);
y= sin(t);
z= t/2;
figure()
plot3(x,y,z)
title('Helix with x, y, z')
