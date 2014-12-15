function [ ] = ej5( )
    lena = imread('../Images_test/lena.png');
    subplot(3,3,1)
    imshow(lena)    
    title('lena')
    
    [h,w] = size(lena);
    lineas = zeros(h,w);   
    medio = uint8(h/2);
    for i=1:w
        lineas(medio-20,i) = 255;
        lineas(medio,i) = 255;
    end
    
    subplot(3,3,4)
    imshow(im2uint8(lineas))    
    title('lineas')
    
    suma = im2double(lena) + im2double(lineas);
    
    subplot(3,3,7)
    imshow(im2uint8(suma))    
    title('lena con lineas')
    
    
    fs = fou2d(suma);
    
    subplot(3,3,2)
    imagesc(log(abs(fftshift(fs))));
    title('fft de comp')
    
    fl = fou2d(lineas);
    
    subplot(3,3,5)
    imagesc(log(abs(fftshift(fl))));    
    title('fft lineas')
    
    fr = fl - fs;
    
    subplot(3,3,8)
    imagesc(log(abs(fftshift(fr))));   
    title('fft resta')
    
    res = antifou2d(fr);
    
    subplot(3,3,6)
    rd = im2double(abs(res));
    imshow(rd)    
    title('resultado')
    
end