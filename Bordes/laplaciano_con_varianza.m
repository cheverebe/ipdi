function [ res ] = laplaciano_con_varianza( A, t)
%LAPLACION_CON_VARIANZA Summary of this function goes here
%   Detailed explanation goes here

    B = laplaciano_bordes(A);
    
    s = size(A);
    C = zeros(s);
    for i= 2:s(1)-1
        for j=2:s(2)-1
            if(varianza_estimacion(A,i,j) > t)
                C(i,j) = 1;
            end
        end
    end
    res = B .* C(2:end,2:end);
    
end

