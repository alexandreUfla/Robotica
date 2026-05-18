%% Atividade Avaliativa - Denavit-Hartemberg e RoKiSim

% Limpeza da Área de Trabalho
clc; close all; clear all;

%% Manipulador Staubli TX40

% Validação 1 (angulos iguais a zero):
teta1 = 0;
teta2 = 0;
teta3 = 0;
teta4 = 0;
teta5 = 0;
teta6 = 0;
fprintf('Staubli TX40 - Validação 1 \n');
fprintf('teta1 = %0.f ; ', teta1);
fprintf('teta2 = %0.f ; ', teta2);
fprintf('teta3 = %0.f ; ', teta3);
fprintf('teta4 = %0.f ; ', teta4);
fprintf('teta5 = %0.f ; ', teta5);
fprintf('teta6 = %0.f ', teta6);
fprintf('\n\n');

disp('Matrizes parciais TX40 (Validação 1):')
% Matriz parcial 0-1:
TX40_1_dh_01 = denavit(0, -90, 320, teta1)

% Matriz parcial 1-2:
TX40_1_dh_12 = denavit(225, 0, 35, teta2-90)

% Matriz parcial 2-3:
TX40_1_dh_23 = denavit(0, -90, 0, teta3-90)

% Matriz parcial 3-4:
TX40_1_dh_34 = denavit(0, 90, 225, teta4)

% Matriz parcial 4-5:
TX40_1_dh_45 = denavit(0, -90, 0, teta5)

% Matriz parcial 5-6:
TX40_1_dh_56 = denavit(0, 0, 65, teta6+180)

% Matriz Final:
disp('Matriz Resultante Staubli TX40 (Validação 1):')
TX40_1_MR = TX40_1_dh_01 * TX40_1_dh_12 * TX40_1_dh_23 * TX40_1_dh_34 * TX40_1_dh_45 * TX40_1_dh_56


% Validação 2 (angulos teta3 = 45 e teta5 = -90):
teta1 = 0;
teta2 = 0;
teta3 = 45;
teta4 = 0;
teta5 = -90;
teta6 = 0;
fprintf('Staubli TX40 - Validação 2 \n');
fprintf('teta1 = %0.f ; ', teta1);
fprintf('teta2 = %0.f ; ', teta2);
fprintf('teta3 = %0.f ; ', teta3);
fprintf('teta4 = %0.f ; ', teta4);
fprintf('teta5 = %0.f ; ', teta5);
fprintf('teta6 = %0.f ', teta6);
fprintf('\n\n');

disp('Matrizes parciais TX40 (Validação 2):')
% Matriz parcial 0-1:
TX40_2_dh_01 = denavit(0, -90, 320, teta1)

% Matriz parcial 1-2:
TX40_2_dh_12 = denavit(225, 0, 35, teta2-90)

% Matriz parcial 2-3:
TX40_2_dh_23 = denavit(0, -90, 0, teta3-90)

% Matriz parcial 3-4:
TX40_2_dh_34 = denavit(0, 90, 225, teta4)

% Matriz parcial 4-5:
TX40_2_dh_45 = denavit(0, -90, 0, teta5)

% Matriz parcial 5-6:
TX40_2_dh_56 = denavit(0, 0, 65, teta6+180)

% Matriz Final:
disp('Matriz Resultante Staubli TX40 (Validação 2):')
TX40_2_MR = TX40_2_dh_01 * TX40_2_dh_12 * TX40_2_dh_23 * TX40_2_dh_34 * TX40_2_dh_45 * TX40_2_dh_56


%% Manipulador Omron Adept Viper s650

% Validação 1 (angulos iguais a zero):
teta1 = 0;
teta2 = 0;
teta3 = 0;
teta4 = 0;
teta5 = 0;
teta6 = 0;
fprintf('Omron Adept Viper s650 - Validação 1 \n');
fprintf('teta1 = %0.f ; ', teta1);
fprintf('teta2 = %0.f ; ', teta2);
fprintf('teta3 = %0.f ; ', teta3);
fprintf('teta4 = %0.f ; ', teta4);
fprintf('teta5 = %0.f ; ', teta5);
fprintf('teta6 = %0.f ', teta6);
fprintf('\n\n');

disp('Matrizes parciais s650 (Validação 1):')
% Matriz parcial 0-1:
s650_1_dh_01 = denavit(75, -90, 335, teta1)

% Matriz parcial 1-2:
s650_1_dh_12 = denavit(270, 0, 0, teta2)

% Matriz parcial 2-3:
s650_1_dh_23 = denavit(90, -90, 0, teta3+180)

% Matriz parcial 3-4:
s650_1_dh_34 = denavit(0, 90, 295, teta4)

% Matriz parcial 4-5:
s650_1_dh_45 = denavit(0, -90, 0, teta5)

% Matriz parcial 5-6:
s650_1_dh_56 = denavit(0, 0, 80, teta6+180)

% Matriz Final:
disp('Matriz Resultante Omron Adept Viper s650 (Validação 1):')
s650_1_MR = s650_1_dh_01 * s650_1_dh_12 * s650_1_dh_23 * s650_1_dh_34 * s650_1_dh_45 * s650_1_dh_56


% Validação 2 (angulos teta3 = -20 e teta5 = 80):
teta1 = 0;
teta2 = 0;
teta3 = -20;
teta4 = 0;
teta5 = 80;
teta6 = 0;
fprintf('Omron Adept Viper s650 - Validação 2 \n');
fprintf('teta1 = %0.f ; ', teta1);
fprintf('teta2 = %0.f ; ', teta2);
fprintf('teta3 = %0.f ; ', teta3);
fprintf('teta4 = %0.f ; ', teta4);
fprintf('teta5 = %0.f ; ', teta5);
fprintf('teta6 = %0.f ', teta6);
fprintf('\n\n');

disp('Matrizes parciais s650 (Validação 2):')
% Matriz parcial 0-1:
s650_2_dh_01 = denavit(75, -90, 335, teta1)

% Matriz parcial 1-2:
s650_2_dh_12 = denavit(270, 0, 0, teta2)

% Matriz parcial 2-3:
s650_2_dh_23 = denavit(90, -90, 0, teta3+180)

% Matriz parcial 3-4:
s650_2_dh_34 = denavit(0, 90, 295, teta4)

% Matriz parcial 4-5:
s650_2_dh_45 = denavit(0, -90, 0, teta5)

% Matriz parcial 5-6:
s650_2_dh_56 = denavit(0, 0, 80, teta6+180)

% Matriz Final:
disp('Matriz Resultante Omron Adept Viper s650 (Validação 2):')
s650_2_MR = s650_2_dh_01 * s650_2_dh_12 * s650_2_dh_23 * s650_2_dh_34 * s650_2_dh_45 * s650_2_dh_56

%% Manipulador ABB IRB140

% Validação 1 (angulos iguais a zero):
teta1 = 0;
teta2 = 0;
teta3 = 0;
teta4 = 0;
teta5 = 0;
teta6 = 0;
fprintf('ABB IRB140 - Validação 1 \n');
fprintf('teta1 = %0.f ; ', teta1);
fprintf('teta2 = %0.f ; ', teta2);
fprintf('teta3 = %0.f ; ', teta3);
fprintf('teta4 = %0.f ; ', teta4);
fprintf('teta5 = %0.f ; ', teta5);
fprintf('teta6 = %0.f ', teta6);
fprintf('\n\n');

disp('Matrizes parciais IRB140 (Validação 1):')
% Matriz parcial 0-1:
IRB140_1_dh_01 = denavit(70, -90, 352, teta1)

% Matriz parcial 1-2:
IRB140_1_dh_12 = denavit(360, 0, 0, teta2-90)

% Matriz parcial 2-3:
IRB140_1_dh_23 = denavit(0, -90, 0, teta3)

% Matriz parcial 3-4:
IRB140_1_dh_34 = denavit(0, 90, 380, teta4)

% Matriz parcial 4-5:
IRB140_1_dh_45 = denavit(0, -90, 0, teta5)

% Matriz parcial 5-6:
IRB140_1_dh_56 = denavit(0, 0, 65, teta6+180)

% Matriz Final:
disp('Matriz Resultante ABB IRB140 (Validação 1):')
IRB140_1_MR = IRB140_1_dh_01 * IRB140_1_dh_12 * IRB140_1_dh_23 * IRB140_1_dh_34 * IRB140_1_dh_45 * IRB140_1_dh_56


% Validação 2 (angulos teta3 = 45 e teta5 = -90):
teta1 = 0;
teta2 = 0;
teta3 = 45;
teta4 = 0;
teta5 = -90;
teta6 = 0;
fprintf('ABB IRB140 - Validação 2 \n');
fprintf('teta1 = %0.f ; ', teta1);
fprintf('teta2 = %0.f ; ', teta2);
fprintf('teta3 = %0.f ; ', teta3);
fprintf('teta4 = %0.f ; ', teta4);
fprintf('teta5 = %0.f ; ', teta5);
fprintf('teta6 = %0.f ', teta6);
fprintf('\n\n');

disp('Matrizes parciais IRB140 (Validação 2):')
% Matriz parcial 0-1:
IRB140_2_dh_01 = denavit(70, -90, 352, teta1)

% Matriz parcial 1-2:
IRB140_2_dh_12 = denavit(360, 0, 0, teta2-90)

% Matriz parcial 2-3:
IRB140_2_dh_23 = denavit(0, -90, 0, teta3)

% Matriz parcial 3-4:
IRB140_2_dh_34 = denavit(0, 90, 380, teta4)

% Matriz parcial 4-5:
IRB140_2_dh_45 = denavit(0, -90, 0, teta5)

% Matriz parcial 5-6:
IRB140_2_dh_56 = denavit(0, 0, 65, teta6+180)

% Matriz Final:
disp('Matriz Resultante ABB IRB140 (Validação 2):')
IRB140_2_MR = IRB140_2_dh_01 * IRB140_2_dh_12 * IRB140_2_dh_23 * IRB140_2_dh_34 * IRB140_2_dh_45 * IRB140_2_dh_56

%% Manipulador ABB IRB4400

% Validação 1 (angulos iguais a zero):
teta1 = 0;
teta2 = 0;
teta3 = 0;
teta4 = 0;
teta5 = 0;
teta6 = 0;
fprintf('ABB IRB4400 - Validação 1 \n');
fprintf('teta1 = %0.f ; ', teta1);
fprintf('teta2 = %0.f ; ', teta2);
fprintf('teta3 = %0.f ; ', teta3);
fprintf('teta4 = %0.f ; ', teta4);
fprintf('teta5 = %0.f ; ', teta5);
fprintf('teta6 = %0.f ', teta6);
fprintf('\n\n');

disp('Matrizes parciais IRB4400 (Validação 1):')
% Matriz parcial 0-1:
IRB4400_1_dh_01 = denavit(200, -90, 680, teta1)

% Matriz parcial 1-2:
IRB4400_1_dh_12 = denavit(890, 0, 0, teta2-90)

% Matriz parcial 2-3:
IRB4400_1_dh_23 = denavit(150, -90, 0, teta3)

% Matriz parcial 3-4:
IRB4400_1_dh_34 = denavit(0, 90, 880, teta4)

% Matriz parcial 4-5:
IRB4400_1_dh_45 = denavit(0, -90, 0, teta5)

% Matriz parcial 5-6:
IRB4400_1_dh_56 = denavit(0, 0, 140, teta6+180)

% Matriz Final:
disp('Matriz Resultante ABB IRB4400 (Validação 1):')
IRB4400_1_MR = IRB4400_1_dh_01 * IRB4400_1_dh_12 * IRB4400_1_dh_23 * IRB4400_1_dh_34 * IRB4400_1_dh_45 * IRB4400_1_dh_56


% Validação 2 (angulos teta3 = 45 e teta5 = -90):
teta1 = 0;
teta2 = 0;
teta3 = 45;
teta4 = 0;
teta5 = -90;
teta6 = 0;
fprintf('ABB IRB4400 - Validação 2 \n');
fprintf('teta1 = %0.f ; ', teta1);
fprintf('teta2 = %0.f ; ', teta2);
fprintf('teta3 = %0.f ; ', teta3);
fprintf('teta4 = %0.f ; ', teta4);
fprintf('teta5 = %0.f ; ', teta5);
fprintf('teta6 = %0.f ', teta6);
fprintf('\n\n');

disp('Matrizes parciais IRB4400 (Validação 2):')
% Matriz parcial 0-1:
IRB4400_2_dh_01 = denavit(200, -90, 680, teta1)

% Matriz parcial 1-2:
IRB4400_2_dh_12 = denavit(890, 0, 0, teta2-90)

% Matriz parcial 2-3:
IRB4400_2_dh_23 = denavit(150, -90, 0, teta3)

% Matriz parcial 3-4:
IRB4400_2_dh_34 = denavit(0, 90, 880, teta4)

% Matriz parcial 4-5:
IRB4400_2_dh_45 = denavit(0, -90, 0, teta5)

% Matriz parcial 5-6:
IRB4400_2_dh_56 = denavit(0, 0, 140, teta6+180)

% Matriz Final:
disp('Matriz Resultante ABB IRB4400 (Validação 2):')
IRB4400_2_MR = IRB4400_2_dh_01 * IRB4400_2_dh_12 * IRB4400_2_dh_23 * IRB4400_2_dh_34 * IRB4400_2_dh_45 * IRB4400_2_dh_56
