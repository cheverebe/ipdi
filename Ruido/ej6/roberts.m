function [ res ] = roberts( img )
%ROBERTS Summary of this function goes here
%   Detailed explanation goes here

    roberts = [-1,0,0;0,1,1;0,-1,0];
    roberts_fila = [0,0,0;0,0,1;0,-1,0];
    roberts_columna = [-1,0,0;0,1,0;0,0,0];
    res = mascara_arbitraria(img,roberts);

end

