clear all
clc

s = tf('s');

G = 1/s;

H = (G*(1+1/s))/(1+(G*(1+1/s)))
J = feedback(G*(1+1/s),1)
P = 4*(s+1)/(s^2+2*s+4)
D = (s+1)/(s^2+1.4*s+1)

pole(J)
pole(P)
pole(D)

step(H)
hold on
step(J)
step(P)
step(D)
grid on
legend('H feedback', 'J fdb', 'P wn^2=4', 'D zeta=0.7')