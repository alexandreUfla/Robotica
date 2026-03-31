clc; clear all; close all;

B = eye(4)

T1 = matriz_translacao('y',6);
R1 = matriz_rotacao('x',60);
T2 = matriz_translacao('z',3);
R2 = matriz_rotacao('z',60);
R3 = matriz_rotacao('x',45);

T_final = R3*R2*T2*B*T1*R1