% No manipulador cilíndrico, dado H03, a última coluna define a posição do 
% manipulador.
H03 = [];

gama = atan2d(H03(2,4),H03(1,4));
beta = atan2d(H03(2,4),H03(3,4)*sind(gama));
r = H03(3,4)/cosd(beta);

fprintf('r = %0.f \n',r);
fprintf('beta = %0.f \n',beta);
fprintf('gama = %0.f \n',gama);