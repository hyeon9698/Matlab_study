x = linspace(-10,10,1000);
y = linspace(-10,10,1000);

%meshgrid 생성
[X, Y] = meshgrid(x,y);

%rect 함수
y_rect = (Y >= -4)&(Y <= 4);
x_rect = (X >= -4)&(X <= 4);

figure(5)
image(y_rect)
figure(6)
image(x_rect)

%사각형 그리기
F_rect = x_rect .* y_rect;

%원 그리기
F_cir = sqrt(Y.^2 + X.^2);
F_cir = (F_cir < 4) .* F_cir;

%custom 함수 그리기
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