function [ af ] = antifourier( N )
%ANTIFOURIER Summary of this function goes here
%   Detailed explanation goes here
    af = exp(2 * pi * ( (0:N-1)' * (0:N-1) ) * 1i / N ) / sqrt(N);

end
