clear
clc

%�̹��� �ҷ�����
picture = imread('image.jpg');

%�̹��� ������ ����
[size_x size_y size_z] = size(picture);

y = linspace(-1,1,size_x);
x = linspace(-1,1,size_y);

%meshgrid ����
[X Y] = meshgrid(x,y);

%�̹��� RGB�� R(RED)�� ����
picture_red = picture(:,:,1);

%����þ� �Լ�
gaussian = exp(-1*(X.^2 + Y.^2));

%vignetting ȿ�� �ֱ�
vignetting_picture = double(picture_red) .* gaussian;

%�����̹��� ���
figure(1)
image(picture)

%vignetting ȿ�� ����
figure(2)
image(vignetting_picture)
colormap(gray(256))

%vignetting ȿ�� ����(�����¿� ����)
figure(3)
image(fliplr(flipud(vignetting_picture)))
colormap(gray(256))