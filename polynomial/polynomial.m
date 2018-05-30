% 직선 (선형) 적합
% polyfit(x,y,n)     //x,y는 벡터, n은 n차를 뜻함
% polyval(a,x)       //a는 polyfit을 통해 나온 계수로 이루어진 벡터, x는 값

m = [5 10 20 50 100];
d = [15.5 33.07 53.39 110.24 301.03];
g = 9.81;
F = m/10000*g;

x_fine = linspace(0,350,1000);

a = polyfit(d,F,1);

y_fitted = polyval(a,x_fine);

plot(d,F,'o',x_fine,y_fitted);