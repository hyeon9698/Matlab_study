clc
clear

R=1000;
L=0.0001;
C=0.00000001;

s=tf('s');
sysG=((R/L)*s)/((s^2)+(R/L)*s+(1/(L*C)));
bode(sysG)

Center_Frequency_rad = (1/sqrt(L*C))
Band_Width_rad = (R/L)
Quality_Factor_rad = (1/R)*sqrt(L/C)

Center_Frequency_Hz = (1/sqrt(L*C))*(1/(2*pi))
Band_Width_Hz = (R/L)*(1/(2*pi))
Quality_Factor_Hz = (1/R)*sqrt(L/C)
% Q값이 높으면 뾰족

