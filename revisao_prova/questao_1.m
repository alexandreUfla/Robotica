clc; clear all; close all;

syms teta1;
syms teta2;
syms l3;
syms teta4;
syms teta5;
syms teta6;

% b) Escrever uma matriz de transformação homogênea para cada junta
mth1 = denavit(0, -90, 450, teta1)
mth2 = denavit(0, -90, 200, teta2-90)
mth3 = denavit(0, 0, l3, 90)
mth4 = denavit(0, 90, 150, teta4)
mth5 = denavit(0, -90, 100, teta5)
mth6 = denavit(0, 0, 75, teta6)

% c) Encontrar a matriz de transformação homogênea total
mth_total = mth1*mth2*mth3*mth4*mth5*mth6;
mth_total = simplify(mth_total)

% d) Determine a posição do órgão terminal para:
teta1 = 0;
teta2 = -90;
l3 = 350;
teta4 = 0;
teta5 = 0;
teta6 = 0;

mth1 = denavit(0, -90, 450, teta1);
mth2 = denavit(0, -90, 200, teta2-90);
mth3 = denavit(0, 0, l3, 90);
mth4 = denavit(0, 90, 150, teta4);
mth5 = denavit(0, -90, 100, teta5);
mth6 = denavit(0, 0, 75, teta6);

mth_total = mth1*mth2*mth3*mth4*mth5*mth6
posicao = mth_total(:,4)

% e) Determine a posição do órgão terminal para:
teta1 = 30;
teta2 = 45;
l3 = 200;
teta4 = 90;
teta5 = 45;
teta6 = -90;

mth1 = denavit(0, -90, 450, teta1);
mth2 = denavit(0, -90, 200, teta2-90);
mth3 = denavit(0, 0, l3, 90);
mth4 = denavit(0, 90, 150, teta4);
mth5 = denavit(0, -90, 100, teta5);
mth6 = denavit(0, 0, 75, teta6);

mth_total = mth1*mth2*mth3*mth4*mth5*mth6
posicao = mth_total(:,4)