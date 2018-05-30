clear
clc

x = [25 30 35 40 45]
y = [5 260 480 745 1100]

x_fine = linspace(25,45,3000);

a = polyfit(x,y,1);

y_fitted = polyval(a,x_fine);

plot(x,y,'o',x_fine,y_fitted);