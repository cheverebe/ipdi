function [ It ] = canny(im, Tmin, Tmax)
maskG = [ 1  4  7  4 1 ;
        4 16 26 16 4 ;
        7 26 41 26 7;
        4 16 26 16 4 ;
        1  4  7  4 1 ] / 273;
Igs = conv2(im2double(im),maskG);
    
maskX = [-1 0 1; -2 0 2; -1 0 1];
Ix =conv2(Igs,maskX);

maskY = [-1 -2 -1;0 0 0;1 2 1];
Iy =conv2(Igs,maskY);
%Gradient Directions
Id = get_directions(Ix,Iy);

%Gradient Magnitude
Img = sqrt(Ix.^2 + Iy.^2);

%suppression
Is = suppression(Img,Id);
It = histeresis(Is, Tmin, Tmax);
end

