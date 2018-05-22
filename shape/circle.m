clear
clc

i = 5000

A = zeros(i);
B = zeros(i);
r = 500;

for y = -r:r
    x1 = -(r.*r-y.*y).^0.5;
    x2 = (r.*r-y.*y).^0.5;
    
    for x = x1:x2
        A(round(x+r+(i/2 - r)),round(y+r+(i/2 - r))) = 256;
        B(round(x+r+(i/4 - r)),round(y+r+(i/4 - r))) = 256;
    end
end

figure(3)
image(A)
axis ('square')
grid

figure(4)
image(flipud(B))
axis ('square')
grid