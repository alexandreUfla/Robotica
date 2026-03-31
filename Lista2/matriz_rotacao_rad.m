function R = matriz_rotacao_rad(eixo,angulo_radianos)
    R = eye(4); % Inicia matriz identidade 4X4
    
    c = cos(angulo_radianos); % Calcula cosseno do ângulo informado em radianos
    s = sin(angulo_radianos); % Calcula seno do ângulo informado em radianos
    
    switch lower(eixo)
        case 'x'
            R(2:3,2:3) = [c,-s;s,c];
        case 'y'
            R(1:3,1:3) = [c,0,s;0,1,0;-s,0,c];
        case 'z'
            R(1:2,1:2) = [c,-s;s,c];
        otherwise
            error('Erro: o eixo de rotação deve ser "x", "y" ou "z".');
    end
end
