function [ res ] = filtro_mediana( img )
%MASCARA_ARBITRARIA Summary of this function goes here
%   Detailed explanation goes here

    figure(1); imshow(img);
    res = zeros(size(img));
    [m,n]=size(img);
    for i=2:m-1
    for j=2:n-1
        vecinos=img(i-1:i+1,j-1:j+1);
        vecinos_array = vecinos(:);
        ordenados = sort(vecinos_array);
        index = ceil(size(ordenados)/2);
        res(i,j) = ordenados(index(1));
    end
    end
    figure(2);
    imshow(uint8(res));
end

