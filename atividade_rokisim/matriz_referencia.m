function B = matriz_referencia(R11,R12,R13,x,R21,R22,R23,y,R31,R32,R33,z)
    B = eye(4); % Inicializa a matriz 4X4
    
    B = [R11,R12,R13,x;R21,R22,R23,y;R31,R32,R33,z;0,0,0,1];
end
