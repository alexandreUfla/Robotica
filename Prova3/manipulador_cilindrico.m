% No manipulador cilíndrico, dado H03, a última coluna define a posição do 
% manipulador.
clc; clear all; close all;

l = 2;
alfa_rad = atan2(0.3,-1);
alfa1 = alfa_rad*(180/pi);
r = -1/cosd(alfa1);

fprintf('r = %0.f \n',r);
fprintf('alfa = %0.f \n',alfa1);
fprintf('l = %0.f \n',l);

%% Matriz
syms r alfa l
c_alfa = cos(alfa);
s_alfa = sin(alfa);

T = [c_alfa -s_alfa 0 r*c_alfa
     s_alfa  c_alfa 0 r*s_alfa
     0      0       1 l
     0      0       0 1]