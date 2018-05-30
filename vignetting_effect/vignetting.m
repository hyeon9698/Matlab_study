clear
clc

A = imread('image.jpg');

%�̹��� ������
[size_x size_y size_z] = size(A);
 
y = linspace(-1,1,size_x);
x = linspace(-1,1,size_y);

%meshgrid ����
[X Y] = meshgrid(x,y);

%image RGB�� R����
A_R = A(:,:,1);

%����þ� ����
gaussian = exp(-3*(X.^2 + Y.^2));

A_R1 = A_R([1:size_x/2],[1:size_y/2]);
A_R2 = A_R([size_x/2:size_x],[1:size_y/2]);
A_R3 = A_R([1:size_x/2],[size_y/2:size_y]);
A_R4 = A_R([size_x/2:size_x],[size_y/2:size_y]);

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