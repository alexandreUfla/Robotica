close all; clc; clear all; 

P = matriz_referencia(1,0,0,1,0,1,0,5,0,0,1,4);

% Rotação de 90° em x
R1 = matriz_rotacao('x',90);

% Translação de 3 polegadas em a
T1 = matriz_translacao('z',3);

% Rotação de 90° em z
R2 = matriz_rotacao('z',90);

% Translação de 5 polegadas em o
T2 = matriz_translacao('y',5);

novoP = R2*R1*P*T1*T2
