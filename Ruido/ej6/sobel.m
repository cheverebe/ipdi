function [ res ] = sobel( img )
%ROBERTS Summary of this function goes here
%   Detailed explanation goes here

    k=2;
    val = k/(2+k);
    mask = [0,-val,-2;val,1,-val;2,val,0];  %combinados
%    mask = [-1,-val,-1;0,1,0;1,val,1];  %gradiente columna
%    mask = [1,0,-1;val,1,-val;1,0,-1];   %gradiente fila
    res = mascara_arbitraria(img,mask);

end
%http://www4.ujaen.es/~satorres/practicas/practica3_vc.pdf