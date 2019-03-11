% Author: Andrea Murphy
% Date: March 10, 2019

t = linspace(0,4*pi);
x= t + 2 *cos(2*t);
y = t + 3*sin(3*t);
figure()
plot(x,y)

x= cos(t);
y= sin(t);
z= t/2;
figure()
tilte('Helix with x, y, z')
plot3(x,y,z)
