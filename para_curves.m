
% Author: Andrea Murphy
% Date: March 10, 2019
% DESC:plotting parametric curves

x = linspace(0, 10*pi)';
f = [cos(x), sin(x), exp(-0.5*x)];

size(f)

plot3(f(:,1), f(:,2), f(:,3), "linewidth", 4)

set(gca, "xlabel", text("string", "x","fontsize", 30));
set(gca, "ylabel", text("string", "y","fontsize", 30));
    
set(gca, "zlabel", text("string", "z","fontsize", 30));
