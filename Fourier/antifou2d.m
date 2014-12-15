function [ res ] = antifou2d( A )
%ANTIFOU2D Summary of this function goes here
%   Detailed explanation goes here
    s = size(A);
    F = antifourier(s(1));
    res = F * A *F';
end



