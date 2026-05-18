function T = matriz_translacao(eixo,distancia)
    T = eye(4); % Inicializa a matriz 4X4
    
    switch lower(eixo)
        case 'x'
            T = [1,0,0,distancia;0,1,0,0;0,0,1,0;0,0,0,1];
        case 'y'
            T = [1,0,0,0;0,1,0,distancia;0,0,1,0;0,0,0,1];
        case 'z'
            T = [1,0,0,0;0,1,0,0;0,0,1,distancia;0,0,0,1];
        otherwise
            error('Erro: o eixo de rotação deve ser "x", "y" ou "z".');
    end
end