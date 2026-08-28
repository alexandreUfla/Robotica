% Questão 4 - Trajetória cúbica única, de 50° a 80° em 3 s
clc; clear all; close all;
theta_i = 0; theta_f = 10; % ângulos inicial e final
v_i = 0; v_f = 0; % parte do repouso e para
a_i = 10; a_f = -10;
tf = 5; % tempo total

% theta(t) = a0 + a1*t + a2*t^2 + a3*t^3
MAT = [1 0 0 0 0 0; % theta(0) = theta_i
       0 1 0 0 0 0; % theta'(0) = v_i
       0 0 1 0 0 0;
       1 tf tf^2 tf^3 tf ^4 tf^5; % theta(tf) = theta_f
       0 1 2*tf 3*tf^2 4*tf^3 5*tf^4;
       0 0 1 6*tf 12*tf^2 20*tf^3;]; % theta'(tf) = v_f

VET = [theta_i; v_i ; a_i; theta_f; v_f; a_f];

coef = MAT\VET; % use \ em vez de inv(MAT)*VET
a0=coef(1); a1=coef(2); a2=coef(3); a3=coef(4); a4=coef(5); a5=coef(6);

% Avaliar em t = 1, 2 e 3 s
t = [0 1 2 3 4 5];
ang = a0 + a1*t + a2*t.^2 + a3*t.^3 + a4*t.^4 + a5*t.^5;
vel = a1 + 2*a2*t + 3*a3*t.^2 + 4*a4*t.^3 + 5*a5*t.^4;
acel = 2*a2 + 6*a3*t + 12*a4*t.^2 + 20*a5*t.^3;

disp('Coeficientes [a0 a1 a2 a3 a4 a5]:'), disp(coef')
disp('Ângulos (°):'), disp(ang)
disp('Velocidades (°/s):'), disp(vel)
disp('Acelerações (°/s²):'),disp(acel)