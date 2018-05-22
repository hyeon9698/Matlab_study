clear
clc

i = 10000;

A = zeros(i);
B = zeros(i);
r = 2000;

for y = (-r/2) * sin(pi / 3) : (r/2) * sin(pi / 3);
    x1 = (y - (r/2) * sin(pi / 3)) / tan(pi / 3);
    x2 = (y - (r/2) * sin(pi / 3)) / -tan(pi / 3);
    
    for x = x1 : x2
        A(round(y+ r + (i/2 - r)),round(x+r + (i/2 - r))) = 256;
        B(round(y+ r + (i/2 - r) + 3000),round(x+r + (i/2 - r) + 3000)) = 256;
    end
end

figure(1)
image(flipud(A));
axis ('square')

figure(2)
image(flipud(B));
axis ('square')