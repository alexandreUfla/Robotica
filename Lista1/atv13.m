close all; clc; clear all; 

% Referêncial
B = matriz_referencia(0,1,0,1,1,0,0,1,0,0,-1,1);

% Rotação de 90° em z
R1 = matriz_rotacao('z',90);

% Translação de 3 em n
T1 = matriz_translacao('x',3);

% Translação de 5 em o
T2 = matriz_translacao('y',5);

% Rotação de 90° em n
R2 = matriz_rotacao('x',90);

% Rotação de 90° em y
R3 = matriz_rotacao('y',90);

novoB = R3*R1*B*T1*T2*R2
