clc; close all; clear all;

teta1 = 30;
teta1_p = 0;
teta1_2p = 0;

teta2 = 50;

teta3 = 90;

teta4 = 70;
teta4_p = 0;
teta4_2p = 0;

T2i = 0;
T3i = 0;
T2f = 4;
T3f = 2;
T1i = 0;
T1f = 2;

L1 = [1 zeros(1,13)];
L2 = [0 1 zeros(1,12)];
L3 = [0 0 2 zeros(1,11)];
L4 = [1 T1f T1f^2 T1f^3 T1f^4 zeros(1,9)];
L5 = [zeros(1,5) 1 zeros(1,8)];
L6 = [0 1 2*T1f 3*T1f^2 4*T1f^3 0 -1 zeros(1,7)];
L7 = [0 0 2 6*T1f 12*T1f^2 0 0 -2 zeros(1,6)];
L8 = [zeros(1,5) 1 T2f T2f^2 T2f^3 zeros(1,5)];
L9 = [zeros(1,9) 1 zeros(1,4)];
L10 = [zeros(1,6) 1 2*T2f 3*T2f^2 0 -1 0 0 0];
L11 = [zeros(1,7) 2 6*T2f 0 0 -2 0 0];
L12 = [zeros(1,9) 1 T3f T3f^2 T3f^3 T3f^4];
L13 = [zeros(1,10) 1 2*T3f 3*T3f^2 4*T3f^3];
L14 = [zeros(1,11) 2 6*T3f 12*T3f^2];

MAT = [L1;L2;L3;L4;L5;L6;L7;L8;L9;L10;L11;L12;L13;L14]
VET = [teta1;teta1_p;teta1_2p;teta2;teta2;0;0;teta3;teta3;0;0;teta4;teta4_p;teta4_2p]

coeficientes = inv(MAT)*VET;
a0 = coeficientes(1)
a1 = coeficientes(2)
a2 = coeficientes(3)
a3 = coeficientes(4)
a4 = coeficientes(5)
b0 = coeficientes(6)
b1 = coeficientes(7)
b2 = coeficientes(8)
b3 = coeficientes(9)
c0 = coeficientes(10)
c1 = coeficientes(11)
c2 = coeficientes(12)
c3 = coeficientes(13)
c4 = coeficientes(14)