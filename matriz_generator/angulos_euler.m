function E = angulos_euler(caso,R11,R12,R13,R21,R22,R23,R31,R32,R33)
    if(caso == 1)
        theta = 0;
        phi_mais_pici = atan2d(R21,R11);
        E = [theta phi_mais_pici];
    elseif(caso == 2)
        theta = atan2d(sqrt(1-(R33*R33)),R33);
        phi = atan2d(R23,R13);
        pici = atan2d(R32,-R31);
        E = [phi theta pici];
    else
        disp('Caso não reconhecido!');
    end
