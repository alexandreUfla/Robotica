function E = angulos_euler_rad(caso,R11,R12,R13,R21,R22,R23,R31,R32,R33)
    if(caso == 1)
        theta_rad = 0;
        phi_mais_pici_rad = atan2(R21,R11);
        E = [(theta_rad*(180/pi)) (phi_mais_pici_rad*(180/pi))];
    elseif(caso == 2)
        theta_rad = atan2(sqrt(1-(R33*R33)),R33);
        phi_rad = atan2(R23,R13);
        pici_rad = atan2(R32,-R31);
        E = [(phi_rad*(180/pi)) (theta_rad*(180/pi)) (pici_rad*(180/pi))];
    else
        disp('Caso não reconhecido!');
    end
