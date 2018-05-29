A = imread('image.jpg');

%�̹��� ������
[size_x size_y size_z] = size(A);
 
y = linspace(-1,1,size_x);
x = linspace(-1,1,size_y);

%meshgrid ����
[X Y] = meshgrid(x,y);

%image RGB�� R����
A_R = A(:,:,1);

B = fft2(A_R);

B = fftshift(B);

C = ifft2(fftshift(B));

figure(1)
image(A)

figure(2)
image(C)
colormap(gray(256))