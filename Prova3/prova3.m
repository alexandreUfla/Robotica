%% Prova 3 de Robótica
% Nome: Alexandre Reis Francisco Júnior
% Matrícula: 202310797
% Data: 23/06/2026

%% Questão 1
clc; clear all; close all;

teta1 = 45;
teta2 = 30;
teta3 = 0;
teta4 = 60;
teta5 = 70;
teta6 = 45;
teta7 = 0;

q_ponto = [5;2;3;0;1;4;2];

DH01 = [0 90 0.150 teta1];
DH12 = [-0.05 0 0 teta2];
DH23 = [-0.05 0 0 teta3-90];
DH34 = [0 90 -0.150 teta4];
DH45 = [0 -90 -0.150 teta5];
DH56 = [0 -90 0.150 teta6];
DH67 = [0.05 0 0 teta7];

J = jacobiano7(DH01,DH12,DH23,DH34,DH45,DH56,DH67)
v_w = J*q_ponto

%% Questão 2
clc; clear all; close all;

% b) Ponto B
dh01 = denavit(400,90,750,10);
dh12 = denavit(750,0,0,50-90);
dh23 = denavit(250,90,0,0);
dh34 = denavit(0,-90,812.4,0);
dh45 = denavit(0,90,0,90);
dh56 = denavit(0,0,175,180);
H06 = dh01*dh12*dh23*dh34*dh45*dh56