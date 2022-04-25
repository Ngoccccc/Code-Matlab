fxy = @(x,y)x.^3 + 2.*y.^2.*x + 1;
hx = 0.01; hy = 0.02;
% Ve do thi dao ham rieng cua ham fxy o tren
Nx = (1-0)/hx;
Ny = (2-1)/hy; 

Ax = 0:hx:1;
Ay = 1:hy:2;

[X,Y] = meshgrid (Ax,Ay);
d_x = (((X+hx).^3+2.*(X+hx).*Y.^2+1)-((X-hx).^3+2.*(X-hx).*Y.^2+1))/2.*hx;
% surf (X,Y,d_x);
mesh (X,Y,d_x);
hold on;
d_y = ((X.^3+2.*X.*(Y+hy).^2+1)-(X.^3+2.*X.*(Y-hy).^2+1))/2.*hx;
surf (X,Y,d_y);
colormap(cool);
grid on;
title ('Do Thi Dao Ham Rieng');
legend ('d_x','d_y')





