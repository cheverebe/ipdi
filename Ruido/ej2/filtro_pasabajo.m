function [ res ] = filtro_pasabajo( img, size )
%FILTRO_PASABAJO Summary of this function goes here
%   Detailed explanation goes here

    mask = ones(size);
    mask = mask/(size(1)*size(2));
    mask
    res = mascara_arbitraria(img, mask);

end

