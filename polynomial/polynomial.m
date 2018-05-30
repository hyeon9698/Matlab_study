% ���� (����) ����
% polyfit(x,y,n)     //x,y�� ����, n�� n���� ����
% polyval(a,x)       //a�� polyfit�� ���� ���� ����� �̷���� ����, x�� ��

m = [5 10 20 50 100];
d = [15.5 33.07 53.39 110.24 301.03];
g = 9.81;
F = m/10000*g;

x_fine = linspace(0,350,1000);

a = polyfit(d,F,1);

y_fitted = polyval(a,x_fine);

plot(d,F,'o',x_fine,y_fitted);