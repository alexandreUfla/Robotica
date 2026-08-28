%% Exercício 1 - Velocidades do Motoman MH5F
clc; clear all; close all;

teta1 = 50; % graus
teta2 = 0; % graus
teta3 = 80; % graus
teta4 = 90; % graus
teta5 = 0; % graus
teta6 = 20; % graus
q_ponto = [2;4;1;1;0;2];

% Denavit
DH01 = [88,-90,330,teta1];
DH12 = [310,180,0,teta2-90];
DH23 = [40,-90,0,teta3];
DH34 = [0,90,-305,teta4];
DH45 = [0,-90,0,teta5];
DH56 = [0,0,-80,teta6];

% Jacobiano
J = jacobiano(DH01,DH12,DH23,DH34,DH45,DH56)

% Velocidades [v,w]
v_w = J*q_ponto

%% Exercício 2 - Manipulador Cilíndrico
clc; clear all; close all;

r = 15; % in
alfa = deg2rad(30); % rad
l = 10; % in

r_ponto = 0.1; % in/s
alfa_ponto = 0.05; % rad/s
l_ponto = 0.2; % in/s

% Velocidades [x_ponto; y_ponto; z_ponto]
xyz_ponto = [cos(alfa) -r*sin(alfa) 0;sin(alfa) r*cos(alfa) 0;0 0 1]*[r_ponto;alfa_ponto;l_ponto]

%% Exercício 3 - Manipulador Esférico
clc; clear all; close all;

r = 20; % in
beta = deg2rad(60); % rad
gama = deg2rad(30); % rad

c_beta = cos(beta);
s_beta = sin(beta);
c_gama = cos(gama);
s_gama = sin(gama);

r_ponto = 2; % in/s
beta_ponto = 0.05; % rad/s
gama_ponto = 0.1; % rad/s

l1 = [c_gama*s_beta r*c_gama*c_beta -r*s_gama*s_beta];
l2 = [s_beta*s_gama r*c_beta*s_gama r*s_beta*c_gama];
l3 = [c_beta -r*s_beta 0];

J = [l1;l2;l3];
q_ponto = [r_ponto;beta_ponto;gama_ponto];

% Velocidades [x_ponto; y_ponto; z_ponto]
xyz_ponto = J*q_ponto

%% Exercício 6 - Robo 3-GDL (dois elos de 9 cm, base em z=8)
% Move de P0=(9,6,10) ate Pf=(3,5,8) em linha reta.
% Cinematica inversa fornecida no enunciado.

P0 = [9 6 10]; % ponto inicial
Pf = [3 5 8]; % ponto final
N = 11; % numero de pontos (inclui inicio e fim)

s = linspace(0,1,N); % parametro da reta (0 a 1)
ang = zeros(N,3); % [theta1 theta2 theta3] em graus
P = zeros(N,3);

for i = 1:N
    % --- ponto intermediario na reta ---
    P(i,:) = P0 + s(i)*(Pf - P0);
    Px = P(i,1); Py = P(i,2); Pz = P(i,3);

    % --- theta1 ---
    th1 = atan2(Px, Py);
    C1 = cos(th1);

    % --- theta3 ---
    arg3 = ((Py/C1)^2 + (Pz-8)^2 - 162) / 162;
    arg3 = max(min(arg3,1),-1); % protege o acos (evita complexo)
    th3 = acos(arg3);
    C3 = cos(th3); S3 = sin(th3);

    % --- theta2 ---
    arg2 = (C1*(Pz-8)*(1+C3) + Py*S3) / (18*(1+C3)*C1);
    arg2 = max(min(arg2,1),-1);
    th2 = acos(arg2);

    ang(i,:) = [th1 th2 th3] * 180/pi; % converte p/ graus
end

% --- tabela no console ---
disp(' i Px Py Pz th1 th2 th3 (graus)');
disp([(1:N)' P ang]);

% --- grafico dos angulos ---
figure
plot(s, ang(:,1),'-o', s, ang(:,2),'-s', s, ang(:,3),'-^','LineWidth',1.5)
xlabel('Fracao do percurso (0 = inicio, 1 = fim)')
ylabel('Angulo (graus)')
legend('\theta_1','\theta_2','\theta_3','Location','best')
title('Angulos das articulacoes ao longo da reta (9,6,10) \rightarrow (3,5,8)')
grid on

% --- (opcional) visualizar a reta no espaco 3D ---
figure
plot3(P(:,1),P(:,2),P(:,3),'-o','LineWidth',1.5)
hold on
plot3(P0(1),P0(2),P0(3),'g*','MarkerSize',12)
plot3(Pf(1),Pf(2),Pf(3),'r*','MarkerSize',12)
xlabel('X'); ylabel('Y'); zlabel('Z'); grid on
title('Trajetoria retilinea do efetuador')
legend('caminho','inicio','fim')