% ===== Questao 5: 20 -> 80 (5s) -> 25 (mais 5s) =====
% Para no via e no destino (comeca/termina cada trecho em repouso)
tetai = 20; tetav = 80; tetaf = 25; % angulos: inicial, via, final
t1 = 5; t2 = 5; % duracao de cada trecho

% Incognitas: [a0 a1 a2 a3 b0 b1 b2 b3]
% Trecho 1: th1(x)=a0+a1*x+a2*x^2+a3*x^3 , x in [0,t1]
% Trecho 2: th2(x)=b0+b1*x+b2*x^2+b3*x^3 , x in [0,t2]
L1 = [1 0 0 0 0 0 0 0 ]; % th1(0)=20
L2 = [0 1 0 0 0 0 0 0 ]; % th1'(0)=0
L3 = [1 t1 t1^2 t1^3 0 0 0 0 ]; % th1(t1)=80
L4 = [0 1 2*t1 3*t1^2 0 0 0 0 ]; % th1'(t1)=0
L5 = [0 0 0 0 1 0 0 0 ]; % th2(0)=80
L6 = [0 0 0 0 0 1 0 0 ]; % th2'(0)=0
L7 = [0 0 0 0 1 t2 t2^2 t2^3 ]; % th2(t2)=25
L8 = [0 0 0 0 0 1 2*t2 3*t2^2]; % th2'(t2)=0

MAT = [L1;L2;L3;L4;L5;L6;L7;L8];
VET = [tetai; 0; tetav; 0; tetav; 0; tetaf; 0];
coef = MAT\VET;

a = coef(1:4); % trecho 1
b = coef(5:8); % trecho 2
disp('Trecho 1 [a0 a1 a2 a3]:'), disp(a')
disp('Trecho 2 [b0 b1 b2 b3]:'), disp(b')