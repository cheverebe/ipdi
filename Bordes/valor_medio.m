function [ val ] = valor_medio( A, k1, k2 )
%VALOR_MEDIO Summary of this function goes here
%   Detailed explanation goes here
    sub_m = A((k1-1):(k1+1),(k2-1):(k2+1));
    suma = sum(sub_m(:));
    val = suma / 9;
end

