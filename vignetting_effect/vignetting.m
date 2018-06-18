clear
clc

A = imread('image.jpg');

%이미지 사이즈
[size_y size_x size_z] = size(A);
 
x = linspace(-1,1,size_x);
y = linspace(-1,1,size_y);

%meshgrid 생성
[X Y] = meshgrid(x,y);

%image RGB중 R추출
A_R = A(:,:,1);

%가우시안 필터
gaussian = exp(-3*(X.^2 + Y.^2));

A_R1 = A_R([1:round(size_y/2)],[1:size_x/2]);
A_R2 = A_R([round(size_y/2):size_y],[1:size_x/2]);
A_R3 = A_R([1:round(size_y/2)],[size_x/2:size_x]);
A_R4 = A_R([round(size_y/2):size_y],[size_x/2:size_x]);

A_sum = [[A_R4 ; A_R3] [A_R2 ; A_R1]];

figure(1)
image(A_sum)
colormap(gray(256))

figure(2)
image(double(A_R) .* gaussian)
colormap(gray(256))

figure(3)
image(fliplr(flipud(double(A_R) .* gaussian)))
colormap(gray(256))