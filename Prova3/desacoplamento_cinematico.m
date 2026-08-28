clc; clear all; close all;

syms tamanho_link6;
syms r11_06 r12_06 r13_06 r21_06 r22_06 r23_06 r31_06 r32_06 r33_06;
syms dx_06 dy_06 dz_06;

d06 = [dx_06;dy_06;dz_06];
d6 = tamanho_link6;
R06 = [r11_06,r12_06,r13_06;r21_06,r22_06,r23_06;r31_06,r32_06,r33_06];
k = [0;0;1];

pc = d06 - d6*R06*k

% Com valores numéricos:

tamanho_link6 = 0;
r11_06 = 0;
r12_06 = 0;
r13_06 = 0;
r21_06 = 0;
r22_06 = 0;
r23_06 = 0;
r31_06 = 0;
r32_06 = 0;
r33_06 = 0;
dx_06 = 0;
dy_06 = 0;
dz_06 = 0;

d06 = [dx_06;dy_06;dz_06];
d6 = tamanho_link6;
R06 = [r11_06,r12_06,r13_06;r21_06,r22_06,r23_06;r31_06,r32_06,r33_06];
k = [0;0;1];

pc = d06 - d6*R06*k