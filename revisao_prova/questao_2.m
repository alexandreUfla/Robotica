clc; clear all; close all;

R06 = [-0.71,-0.71,0;-0.71,0.71,0;0,0,-1]
R03 = [1,0,0;0,-1,0;0,0,-1]

R36 = inv(R03)*R06

r11 = R36(1,1) 
r12 = R36(1,2)
r13 = R36(1,3)
r21 = R36(2,1)
r22 = R36(2,2)
r23 = R36(2,3) 
r31 = R36(3,1)
r32 = R36(3,2)
r33 = R36(3,3)

if ((r33 == 1) || (r33 == -1))
    caso = 1
elseif (r33*r33 < 1)
    caso = 2
else
    disp('Caso não reconhecido!');
end

angulos = angulos_euler(caso,r11,r12,r13,r21,r22,r23,r31,r32,r33);