function T = matriz_translacao(eixo,distancia)
    T = eye(4); % Inicializa a matriz 4X4
    
    switch lower(eixo)
        case 'x'
            T(1,4) = distancia;
        case 'y'
            T(2,4) = distancia;
        case 'z'
            T(3,4) = distancia;
        otherwise
            error('Erro: o eixo de rotação deve ser "x", "y" ou "z".');
    end
end