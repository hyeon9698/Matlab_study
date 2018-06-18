clc
clear

V=[5,17,-3,8,0,-7,12,15,20,-6,6,4,-2,16];

for m = 1:14;
    if V(m) > 0;
        if (mod(V(m),3) == 0) || (mod(V(m),5) == 0) || (mod(V(m),15) == 0);
            V(m) = V(m)*2;
        end
        
    else
        if V(m) > -5
            V(m) = V(m).^3;
        end
    end
end

V