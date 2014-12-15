function [ out ] = img_con_ruido_multiplicativo( ImgId, fact )
    if ImgId == 1
        img = imread('../Images_test/lena.png');
    else
        img = imread('test.png');
    end
    ruido = raylrnd(double(img));
    ruido = ruido / 1000 * 5;
    dlena = double(img);
    nlena = dlena .* ruido;
    diff = nlena - dlena;
    out = uint8(double(diff) * fact + dlena );
end

