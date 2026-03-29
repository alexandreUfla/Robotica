close all; clc; clear all; 

P = matriz_referencia(1,0,0,1,0,1,0,2,0,0,1,3);
R1 = matriz_rotacao('z',30);
R2 = matriz_rotacao('y',60);

novoP = R2*R1*P
