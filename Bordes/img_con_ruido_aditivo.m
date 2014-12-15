function [ out ] = img_con_ruido_aditivo( ImgId, cantRuido )
    if ImgId == 1
        img = imread('../Images_test/lena.png');
    else
        img = imread('test.png');
    end
    s = size(img);
    ruido = randn(s);
    ruido = int16(ruido * cantRuido);
    out = uint8(int16(img) + ruido);
end

