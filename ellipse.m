% Author: Andrea Murphy
% Date: March 11, 2019
% DESC: Plot a circle then transform
        % it into a ellipse

x= sin(0:.01:2*pi);
y= cos(0:.01:2*pi);
figure
plot(x,y);
%  Makes tick mark increments on all axes equal
axis equal


[x, y, z] = ellipsoid(0, 0, 0, 4, 2, 1);
hMesh = mesh(x, y, z);
rotate(hMesh, [0 1 0], 45);
% Makes tick mark increments on all axes equal
axis equal;
view([-36 18]);
xlabel('x');
ylabel('y');
zlabel('z');
