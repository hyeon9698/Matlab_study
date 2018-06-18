clear
clc

x = [1990 1991 1992 1993 1994 1995]
y = [10 10.8 11.7 12.7 13.8 14.9]

xbar = x;
ybar = log(y);

a = polyfit(xbar, ybar, 1)

p0 = exp(a(2));
b = a(1);

xnew = linspace(1990,2000,3000);
ynew = p0*exp(xnew * b);

[L M] = min(abs(ynew - 20))
k = xnew(M)

figure(1)
plot(x,y,'o',xnew,ynew,k,20,'o')

