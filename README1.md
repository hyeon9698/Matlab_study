## 고전적인 도형 그리기 방식

### circle

#### 1. 수식
$$x^2 + y^2 = r^2$$

$$x^2 = r^2 - y^2$$

$$x = \pm \sqrt{r^2-y^2}$$

$$x_1 = -\sqrt{r^2 - y^2}$$

$$x_2 = +\sqrt{r^2 - y^2}$$


#### 2. 매틀랩 코드
```matlab
clear
clc

i = 5000

A = zeros(i);
r = 500;

for y = -r:r
    x1 = -sqrt(r.*r-y.*y);
    x2 = sqrt(r.*r-y.*y);
    
    for x = x1:x2
        A(round(x+i/2),round(y+i/2)) = 256;
    end
end

figure(3)
image(A)
axis ('square')
grid
```

### square

#### 1. 수식

#### 2. 매틀랩 코드
```matlab
clear
clc

i = 10000;

A = zeros(i);
r = 2000;

for y = (-r/2) * sin(pi / 3) : (r/2) * sin(pi / 3);
    x1 = (y - (r/2) * sin(pi / 3)) / tan(pi / 3);
    x2 = (y - (r/2) * sin(pi / 3)) / -tan(pi / 3);
    
    for x = x1 : x2
        A(round(y+ r + (i/2 - r)),round(x+r + (i/2 - r))) = 256;
    end
end

figure(1)
image(flipud(A));
axis ('square')
```

## meshgrid 사용 도형그리기

#### 1. 매틀랩 코드

```matlab
x = linspace(-10,10,1000);
y = linspace(-10,10,1000);

%meshgrid 생성
[X, Y] = meshgrid(x,y);
```

위와 같은 과정을 거치면 아래와 같아진다.

    X =
    2 1 0 1 2
    2 1 0 1 2 
    2 1 0 1 2
    2 1 0 1 2
    2 1 0 1 2

    Y =
    2 2 2 2 2
    1 1 1 1 1
    0 0 0 0 0
    1 1 1 1 1
    2 2 2 2 2
> 위의 표는 위의 코드와 관련 없는 예시입니다.

```matlab
%rect 함수
%X,Y의 범위 제한 
y_rect = (Y >= -4)&(Y <= 4);
x_rect = (X >= -4)&(X <= 4);

%사각형 그리기
F_rect = x_rect .* y_rect;

%원 그리기
F_cir = sqrt(Y.^2 + X.^2); 
F_cir = (F_cir < 4) .* F_cir;

%custom 함수 그리기
F_cus = (X.^2 + Y.^2).*exp(0.02.*X.^2).*sin(0.1.*Y).*cos(0.3.*X);
```

```matlab
mesh(X,Y,F_cir)
axis('square')
xlabel('x')
ylabel('y')
title('circle')
```

## Vignetting Effect 만들기

#### 1. 가우시안 함수
$$gaussian = e^{-\alpha(x^2+y^2)}$$

$$\alpha = weight$$

#### 2. 매틀랩 코드

```matlab
A = imread('image.jpg')
%image를 불러들여 A에 저장
```

```matlab

[size_x size_y size_z] = size(A);
%image의 X,Y,채널 값을 저장 한다.
```

```matlab
y = linspace(-1,1,size_x);
x = linspace(-1,1,size_y);

%meshgrid 생성
[X Y] = meshgrid(x,y);    
```

```matlab
A_R = A(:,:,1);
%image RGB중 R추출
```

```matlab
%가우시안 필터 가중치 = 3
gaussian = exp(-3*(X.^2 + Y.^2));
```

```matlab
A_R1 = A_R([1:round(size_x/2)],[1:size_y/2]);
A_R2 = A_R([round(size_x/2):size_x],[1:size_y/2]);
A_R3 = A_R([1:round(size_x/2)],[size_y/2:size_y]);
A_R4 = A_R([round(size_x/2):size_x],[size_y/2:size_y]);
```

    AR_1 AR_2
    AR_3 AR_4

```matlab
A_sum = [[A_R4 ; A_R3] [A_R2 ; A_R1]];
```

    AR_4 AR_3
    AR_2 AR_1

```matlab
figure(1)
image(A_sum)
colormap(gray(256))

figure(2)
image(double(A_R) .* gaussian)
colormap(gray(256))

figure(3)
image(fliplr(flipud(double(A_R) .* gaussian)))
colormap(gray(256))
```
