s=tf('s'); 
RI=100 
R1=5000
L=0.1 
C=0.00000001 

sysG=RI*(1/(RI+(1/( (1/R1)+(1/(s*L))+(s*C))))) 
figure(2)
bode(sysG)

RI=100
R1=5000
L=0.01
C=0.000000001 

sysG=RI*(1/(RI+(1/( (1/R1)+(1/(s*L))+(s*C))))) 
figure(3)
bode(sysG)

RI=100
R1=100000
L=0.01 
C=0.000000001 

sysG=RI*(1/(RI+(1/( (1/R1)+(1/(s*L))+(s*C))))) 
figure(4)
bode(sysG)

RI=100
R1=100000
L=0.1 
C=0.0000001 

sysG=RI*(1/(RI+(1/( (1/R1)+(1/(s*L))+(s*C))))) 
figure(5)
bode(sysG)