clear
clc

x = [550 600 650 700 750]
y = [41.2 18.62 8.62 3.92 1.86]

xbar = x;
ybar = log(y);

a = polyfit(xbar, ybar, 1)

p0 = exp(a(2));
b = a(1);

xnew = linspace(550,750,200);
ynew = p0*exp(xnew * b);

figure(3)
plot(x,y,'o',xnew,ynew)