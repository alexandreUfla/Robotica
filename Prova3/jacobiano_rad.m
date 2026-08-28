function J = jacobiano_rad(DH01,DH12,DH23,DH34,DH45,DH56)
    % Parâmetros de Denavit
    % 0 - 1
    a01 = DH01(1,1); alpha01 = DH01(1,2); d01 = DH01(1,3); teta01 = DH01(1,4);
    
    % 1 - 2
    a12 = DH12(1,1); alpha12 = DH12(1,2); d12 = DH12(1,3); teta12 = DH12(1,4);
    
    % 2 - 3
    a23 = DH23(1,1); alpha23 = DH23(1,2); d23 = DH23(1,3); teta23 = DH23(1,4);
    
    % 3 - 4
    a34 = DH34(1,1); alpha34 = DH34(1,2); d34 = DH34(1,3); teta34 = DH34(1,4);
    
    % 4 - 5
    a45 = DH45(1,1); alpha45 = DH45(1,2); d45 = DH45(1,3); teta45 = DH45(1,4);
    
    % 5 - 6 
    a56 = DH56(1,1); alpha56 = DH56(1,2); d56 = DH56(1,3); teta56 = DH56(1,4);
    
    % Denavit
    dh_01 = denavit_rad(a01,alpha01,d01,teta01);
    dh_12 = denavit_rad(a12,alpha12,d12,teta12);
    dh_23 = denavit_rad(a23,alpha23,d23,teta23);
    dh_34 = denavit_rad(a34,alpha34,d34,teta34);
    dh_45 = denavit_rad(a45,alpha45,d45,teta45);
    dh_56 = denavit_rad(a56,alpha56,d56,teta56);
    
    % Parciais
    H_01 = dh_01;
    H_02 = dh_01 * dh_12;
    H_03 = dh_01 * dh_12 * dh_23;
    H_04 = dh_01 * dh_12 * dh_23 * dh_34;
    H_05 = dh_01 * dh_12 * dh_23 * dh_34 * dh_45;
    H_06 = dh_01 * dh_12 * dh_23 * dh_34 * dh_45 * dh_56;
    
    % Jacobiano
    
    K = [0; 0; 1];
    
    z0 = K;
    z1 = H_01(1:3, 1:3) * K;
    z2 = H_02(1:3, 1:3) * K;   
    z3 = H_03(1:3, 1:3) * K;
    z4 = H_04(1:3, 1:3) * K;
    z5 = H_05(1:3, 1:3) * K;
    
    o0 = [0; 0; 0];      
    o1 = H_01(1:3, end);
    o2 = H_02(1:3, end);
    o3 = H_03(1:3, end);
    o4 = H_04(1:3, end);
    o5 = H_05(1:3, end);
    o6 = H_06(1:3, end);
    
    A = cross(z0, (o6-o0));
    B = cross(z1, (o6-o1));
    C = cross(z2, (o6-o2));
    D = cross(z3, (o6-o3));
    E = cross(z4, (o6-o4));
    F = cross(z5, (o6-o5));
    
    J = [A B C D E F; z0 z1 z2 z3 z4 z5];
end
