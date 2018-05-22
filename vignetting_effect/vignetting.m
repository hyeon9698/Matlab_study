clear
clc

%이미지 불러오기
picture = imread('image.jpg');

%이미지 사이즈 저장
[size_x size_y size_z] = size(picture);

y = linspace(-1,1,size_x);
x = linspace(-1,1,size_y);

%meshgrid 생성
[X Y] = meshgrid(x,y);

%이미지 RGB중 R(RED)만 저장
picture_red = picture(:,:,1);

%가우시안 함수
gaussian = exp(-1*(X.^2 + Y.^2));

%vignetting 효과 넣기
vignetting_picture = double(picture_red) .* gaussian;

%원본이미지 출력
figure(1)
image(picture)

%vignetting 효과 적용
figure(2)
image(vignetting_picture)
colormap(gray(256))

%vignetting 효과 적용(상하좌우 반전)
figure(3)
image(fliplr(flipud(vignetting_picture)))
colormap(gray(256))