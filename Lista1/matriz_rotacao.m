function R = matriz_rotacao(eixo,angulo_graus)
    R = eye(4); % Inicia matriz identidade 4X4
    
    C = cosd(angulo_graus); % Calcula cosseno do ângulo informado em graus
    S = sind(angulo_graus); % Calcula seno do ângulo informado em graus
    
    switch lower(eixo)
        case 'x'
            R = [1,0,0,0;0,C,-S,0;0,S,C,0;0,0,0,1];
        case 'y'
            R = [C,0,S,0;0,1,0,0;-S,0,C,0;0,0,0,1];
        case 'z'
            R = [C,-S,0,0;S,C,0,0;0,0,1,0;0,0,0,1];
        otherwise
            error('Erro: o eixo de rotação deve ser "x", "y" ou "z".');
    end
end
