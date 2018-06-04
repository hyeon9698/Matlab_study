clear
clc

A = imread('eiffel.jpg');
B = imread('window.jpg');

%A,B 이미지 사이즈
[size_xa size_ya size_za] = size(A);
[size_xb size_yb size_zb] = size(B); 

ya = linspace(-1,1,size_xa);
xa = linspace(-1,1,size_ya);

yb = linspace(-1,1,size_xb);
xb = linspace(-1,1,size_yb);

A_R = A(:,:,1);
B_R = B(:,:,1);

yb_new = interp1(xb,yb,xa,'linear');
