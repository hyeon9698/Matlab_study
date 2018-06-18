clear
clc

A = zeros(10000);
r = 5000;

X = 100
Y = 100

m=x1+X
n=-y+Y

for n = round((-r/2) * sin(pi / 3)) : -1 :round((r/2) * sin(pi / 3));
    x1 = (Y-n - (r/2) * sin(pi / 3)) / tan(pi / 3);
    x2 = (Y-n - (r/2) * sin(pi / 3)) / -tan(pi / 3);
    
    for m = round(x1+X) : round(x2+X)
        A(y,x) = 256;
    end
end

image(A);
axis ('square')