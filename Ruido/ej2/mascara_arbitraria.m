function [ res ] = mascara_arbitraria( img, mask )
%MASCARA_ARBITRARIA Summary of this function goes here
%   Detailed explanation goes here

    figure(1);
    imshow(img);
    res = uint8(conv2(double(img),double(mask)));
    figure(2);
    imshow(res);

end

