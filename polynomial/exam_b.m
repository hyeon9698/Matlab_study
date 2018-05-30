clear
clc

x = [2.5 3 3.5 4 4.5 5 5.5 6 7 8 9 10]
y = [1500 1220 1050 915 810 745 690 620 520 480 410 390]

x_fine = linspace(2.5,10,3000);

xbar = x;
ybar = log(y);

a = polyfit(xbar, ybar, 1)

p0 = exp(a(2));
b = a(1);

xnew = linspace(2.5,10,200);
ynew = p0*exp(xnew * b);

plot(x,y,'o',xnew,ynew)