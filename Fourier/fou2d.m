function [ res ] = fou2d( A )
%FOU2D Summary of this function goes here
%   Detailed explanation goes here
    s = size(A);
    F = fourier(s(1));
    res = F * A *F';
end

