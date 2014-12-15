function [ J ] = laplaciano_bordes( I )
%LAPLACIANO_BORDES Summary of this function goes here
%   Detailed explanation goes here
    s = size(I);
    w = s(1);
    h = s(2);
    J = zeros(w-2,h-2);
    for i=2:w-1
        for j=2:h-1
            z1=I(i-1,j-1);
            z2=I(i,j-1);
            z3=I(i+1,j-1);
            z4=I(i-1,j);
            z5=I(i,j);
            z6=I(i+1,j);
            z7=I(i-1,j+1);
            z8=I(i,j+1);
            z9=I(i+1,j+1);
            J(i,j) = z2 + z4 + z6 + z8 - 4 * z5; 
        end
    end
end

