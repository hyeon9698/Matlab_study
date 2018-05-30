% 최소 제곱 곡선 적합
% exponential -> polynomial(우리가 가진 해석툴)

t = [0 0.5 1 5 10 20]
p = [760 625 528 85 14 0.16]

tbar = t;
pbar = log(p);

a = polyfit(tbar, pbar, 1)

p0 = exp(a(2));
tau = -1/a(1)

tnew = linspace(0,20,20);
pnew = p0*exp(-tnew/tau);

plot(t,p,'o',tnew,pnew)