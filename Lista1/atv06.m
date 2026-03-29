clear all; close all; clc;

%% 1) Rotation about current x-axis
theta = pi/2;
R01 = rotx(theta);

figure(1);
trplot(R01, 'color', [0 0 1], 'frame', '1');
hold on
figure(2);
tranimate(R01);
pause;

% 2) Rotation about current z-axis
phi = pi/2;
R02 = R01*rotz(phi); % post-multiply!

figure(1);
trplot(R02, 'color', [0 0.5 0], 'frame', '2');
hold on
figure(2);
tranimate(R02);
pause;

% 3) Rotation about fixed z-axis
alpha = pi/4;
R03 = rotz(alpha)*R02 % pre-multiply!

figure(1);
trplot(R03, 'color', [1 0 0], 'frame', '3');
hold on
figure(2);
tranimate(R03);
pause;

% Rotations do not commute
rotx(pi/2)*rotz(pi/2) - rotz(pi/2)*rotx(pi/2)