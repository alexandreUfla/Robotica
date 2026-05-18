%% Prova 1 - Questão 1
% Aluno: Alexandre Reis Francisco Júnior
%
% Data: 31/03/2026 e 01/04/2026

%% Limpeza de Área de Trabalho
clc; clear all; close all;

%% Manipulador RRP 3DOF
% Os movimentos do referido manipulador ocorre conforme descrição abaixo:
% Uma rotação de (α + 90º) em torno do eixo Z, seguido de uma rotação de β 
% em torno do eixo o e uma translação de r ao longo do eixo a.

% Rz(alpha + 90°) * Referência * Ro(beta) * T(0,0,r)

%% a) Matriz de programação e controle do manipulador
% As matrizes de transformação nos eixos fixos (x,y,z) serão multiplicadas à
% esquerda da matriz de referência e as matrizes de transformação corrente
% (n,o,a) serão multiplicadas à direita da referência.

% Variáveis simbólicas
syms alpha; 
syms beta;
syms r;

% Considerando a matriz de referência B uma matriz universal, identidade
% 4X4.
B = eye(4)

% Rotação no eixo z de (alpha + 90°)
Rz = matriz_rotacao('z',alpha + 90)

% Rotação no eixo o de beta
Ro = matriz_rotacao('y',beta)

% Translação no eixo a de r
Ta = matriz_translacao('z',r)

% C é a matriz de programação e controle do manipulador
C = Rz*B*Ro*Ta

% Simplificando C algebricamente
C = simplify(C)

%% b) Determine quais os valores da cinemática direta para colocar a mão 
% deste manipulador na posição dada pela seguinte matriz de transformação 
% homogênea: H0_3

H0_3 = matriz_referencia(0,0,-1,400,0,-1,0,50,-1,0,0,300)

% É necessário comparar a matriz C do item (a) com a transformação
% homogênia H0_3, dessa maneira, encontra-se os valores de alpha, beta e r
% que determinam a cinemática direta desse manipulador.

% Comparando a última coluna de C com a última coluna de H0_3 tem-se:

% -r*sind(alpha)*sind(beta) = 400
% r*cosd(alpha)*sind(beta) = 50
% r*cosd(beta) = 300

% Usando as duas primeiras equações obtem-se:
% (-r*sind(alpha)*sind(beta)/(r*cosd(alpha)*sind(beta)) = 400/50
% sind(alpha)/cosd(alpha) = -400/50

% Logo, alpha é
alpha = atan2d(-400,50); % graus

% Substituindo-se alpha na segunda equação tem-se que
% r*sind(beta) = 50/cosd(alpha)
% r*sind(beta) = 50/cosd(-82.8750)
% r*sind(beta) = 50/0.1240 = 403.2258

% Em conjunto com a terceira linha fica
% r*sind(beta)/r*cosd(beta) = 403.2258/300
% Então encontra-se beta
beta = atan2d(403.2258,300); % graus

% Por fim, para encontrar o valor de r, substitui-se beta na terceira
% equação:
% r*cosd(beta) = 300
% r = 300/cosd(beta) = 300/cosd(53.3508)
r = 300/cosd(53.3508);

disp('Cinemática direta do manipulador em questão para a matriz H0_3');
disp('alpha = ');
disp(alpha);
disp('beta = ');
disp(beta);
disp('r = ');
disp(r);