close all; clc; clear all; 

F = matriz_referencia(0.527,-0.574,0.628,5,0.369,0.819,0.439,3,-0.766,0,0.643,8);
T1 = matriz_translacao('y',10);
T2 = matriz_translacao('z',5);

novoF = T2*T1*F