function [ res ] = prewit( img )
%ROBERTS Summary of this function goes here
%   Detailed explanation goes here

    k=1;
    val = k/(2+k);
    mask = [0,-val,-2;val,1,-val;2,val,0];  %combinados
%    mask = [-1,-val,-1;0,1,0;1,val,1];  %gradiente columna
%    mask = [1,0,-1;val,0,-val;1,0,-1];   %gradiente fila
    res = mascara_arbitraria(img,mask);

end