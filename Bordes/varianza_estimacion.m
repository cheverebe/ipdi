function [ res ] = varianza_estimacion( A, n1, n2 )
%VARIANZA_ESTIMACION Summary of this function goes here
%   Detailed explanation goes here
    vm = valor_medio(A,n1,n2);
    mat = (A(n1-1:n1+1,n2-1:n2+1)-vm).^2;
    s = sum(mat(:));
    res = s / 9;
end

