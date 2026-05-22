% No manipulador cilíndrico, dado H03, a última coluna define a posição do 
% manipulador.
H03 = [];

l = H03(3,4)
alfa = atan2d(H03(2,4)/H03(1,4))
r = H03(1,4)/cosd(alfa)

fprintf('r = %0.f \n',r);
fprintf('alfa = %0.f \n',alfa);
fprintf('l = %0.f \n',l);