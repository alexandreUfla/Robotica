% No manipulador cilíndrico, dado H03, a última coluna define a posição do 
% manipulador.
clc; clear all; close all;
H03 = [];

gama = atan2d(135.0812,766.0835);
beta = atan2d(135.0812,-627.6099*sind(gama));
%r = H03(3,4)/cosd(beta);

%fprintf('r = %0.f \n',r);
fprintf('beta = %0.f \n',beta);
fprintf('gama = %0.f \n',gama);

%% Matriz
syms r beta gama
c_beta = cos(beta);
s_beta = sin(beta);
c_gama = cos(gama);
s_gama = sin(gama);

T = [c_beta*c_gama -s_gama s_beta*c_gama r*s_beta*c_gama
     c_beta*s_gama  c_gama s_beta*c_gama r*s_beta*s_gama
     -s_beta        0      c_beta        r*c_beta
     0              0      0             1]