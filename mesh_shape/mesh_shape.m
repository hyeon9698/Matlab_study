x = linspace(-10,10,1000);
y = linspace(-10,10,1000);

%meshgrid ����
[X, Y] = meshgrid(x,y);

%rect �Լ�
y_rect = (Y >= -4)&(Y <= 4);
x_rect = (X >= -4)&(X <= 4);

figure(5)
image(y_rect)
figure(6)
image(x_rect)

%�簢�� �׸���
F_rect = x_rect .* y_rect;

%�� �׸���
F_cir = sqrt(Y.^2 + X.^2);
F_cir = (F_cir < 4) .* F_cir;

%custom �Լ� �׸���
F_cus = (X.^2 + Y.^2).*exp(0.02.*X.^2).*sin(0.1.*Y).*cos(0.3.*X);

figure(1)
mesh(X,Y,F_rect)
axis('square')
xlabel('x')
ylabel('y')
title('square')

figure(2)
mesh(X,Y,F_cir)
axis('square')
xlabel('x')
ylabel('y')
title('circle')

figure(3)
mesh(X,Y,F_cus)
axis('square')
xlabel('x')
ylabel('y')
title('custom')