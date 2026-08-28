%% Exercício 3
clc; close all; clear all;

% a)
syms teta1 teta2 d3

c1 = cos(teta1);
s1 = sin(teta1);
c2 = cos(teta2);
s2 = sin(teta2);

k = [0;0;1]; 

H01 = [c1 -s1 0 300*c1;s1 c1 0 300*s1;0 0 1 0;0 0 0 1];
H12 = [c2 s2 0 200*c2;s2 -c2 0 200*s2;0 0 -1 0;0 0 0 1];
H23 = [1 0 0 0;0 1 0 0;0 0 1 d3;0 0 0 1];

H02 = H01*H12;
H03 = H02*H23;

z0 = [0;0;1];
z1 = [H01(1,3);H01(2,3);H01(3,3)].*k;
z2 = [H02(1,3);H02(2,3);H02(3,3)].*k;

o0 = [0;0;0];
o1 = [H01(1,4);H01(2,4);H01(3,4)];
o3 = [H03(1,4);H03(2,4);H03(3,4)];

J1 = [cross(z0,o3-o0);z0];
J2 = [cross(z1,o3-o1);z1];
J3 = [z2;0;0;0];

J = [J1 J2 J3];
J = simplify(J)

% b)
teta1 = 0;
teta2 = deg2rad(-90);
d3 = 50;

c1 = cos(teta1);
s1 = sin(teta1);
c2 = cos(teta2);
s2 = sin(teta2);

k = [0;0;1];

H01 = [c1 -s1 0 300*c1;s1 c1 0 300*s1;0 0 1 0;0 0 0 1];
H12 = [c2 s2 0 200*c2;s2 -c2 0 200*s2;0 0 -1 0;0 0 0 1];
H23 = [1 0 0 0;0 1 0 0;0 0 1 d3;0 0 0 1];

H02 = H01*H12;
H03 = H02*H23;

z0 = [0;0;1];
z1 = [H01(1,3);H01(2,3);H01(3,3)].*k;
z2 = [H02(1,3);H02(2,3);H02(3,3)].*k;

o0 = [0;0;0];
o1 = [H01(1,4);H01(2,4);H01(3,4)];
o3 = [H03(1,4);H03(2,4);H03(3,4)];

J1 = [cross(z0,o3-o0);z0];
J2 = [cross(z1,o3-o1);z1];
J3 = [z2;0;0;0];

J = [J1 J2 J3]

%% Exercício 4
clc; close all; clear all;

% a) Jacobiano
teta1 = pi/4;
teta2 = pi/6;

% 0 - 1
a01 = 150;
alfa01 = 0;
d01 = 0;
teta01 = teta1;

% 1 - 2
a12 = 200;
alfa12 = 0;
d12 = 0;
teta12 = teta2;

k = [0;0;1];

H01 = denavit_rad(a01,alfa01,d01,teta01);
H12 = denavit_rad(a12,alfa12,d12,teta12);

H02 = H01*H12;

z0 = [0;0;1];
z1 = [H01(1,3);H01(2,3);H01(3,3)].*k;

o0 = [0;0;0];
o1 = [H01(1,4);H01(2,4);H01(3,4)];
o2 = [H02(1,4);H02(2,4);H02(3,4)];

J1 = [cross(z0,o2-o0);z0];
J2 = [cross(z1,o2-o1);z1];

J = [J1 J2]

% b)Velocidades
q_ponto = [2;3];
v_w = J*q_ponto

%% Exercício 5
clc; close all; clear all;

teta1 = 0;
teta2 = pi/2;
teta3 = pi/2;

q_ponto = [4;3;0];

c1 = cos(teta1);
s1 = sin(teta1);
c2 = cos(teta2);
s2 = sin(teta2);
c3 = cos(teta3);
s3 = sin(teta3);

k = [0;0;1];

H01 = [c1 0 s1 0;s1 0 -c1 0;0 1 0 200;0 0 0 1];
H12 = [c2 -s2 0 100*c2;s2 c2 0 100*s2;0 0 1 0;0 0 0 1];
H23 = [c3 -s3 0 50*c3;s3 c3 0 50*s3;0 0 1 0;0 0 0 1];

H02 = H01*H12;
H03 = H02*H23;

z0 = [0;0;1];
z1 = [H01(1,3);H01(2,3);H01(3,3)].*k;
z2 = [H02(1,3);H02(2,3);H02(3,3)].*k;

o0 = [0;0;0];
o1 = [H01(1,4);H01(2,4);H01(3,4)];
o3 = [H03(1,4);H03(2,4);H03(3,4)];

J1 = [cross(z0,o3-o0);z0];
J2 = [cross(z1,o3-o1);z1];
J3 = [z2;0;0;0];

J = [J1 J2 J3];

v_w = J*q_ponto

%% Exercício 6
clc; close all; clear all;

syms teta1 teta2 d3 teta4 teta5 teta6
syms d2 d6

DH01 = [0 -pi/2 0 teta1];
DH12 = [0 pi/2 d2 teta2];
DH23 = [0 0 d3 0];
DH34 = [0 -pi/2 0 teta4];
DH45 = [0 pi/2 0 teta5];
DH56 = [0 0 d6 teta6];

J = jacobiano_rad(DH01,DH12,DH23,DH34,DH45,DH56);
J = simplify(J)