% 선형 보간법(Linear Interporation)
% interpn(n차원)
clear
clc

xorg1 = linspace(-1,1,100);
xorg2 = linspace(-1,1,150);

yorg1 = xorg1.^2 + cos(3*xorg1);
yorg2 = xorg2.*exp(xorg2.^3);

xnew2 = linspace(-1,1,100);
ynew2 = interp1(xorg2,yorg2,xnew2,'linear');

ycomb = yorg1 + ynew2;

figure(5)
plot(xorg1,yorg1,xorg2,yorg2,xnew2,ynew2);

figure(6)
plot(xorg1, ycomb)

% interpn(n차원) 
% nearest :
% linear  :
% cubic   :
% spline  : 