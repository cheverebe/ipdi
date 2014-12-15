function [ ] = ej2( opcion )
    senial = [ 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0];
    subplot(4,1,1)
    imshow(senial,[0,1])
    title('original')
    
    f = fourier(16);
    
    fs = f * senial';
    subplot(4,1,2)
    imshow(abs(fs'))
    title('transformada')
    
    if opcion == 1
        fs(1) = 0;
        fs(16) = 0;
    elseif opcion == 2
        fs(8) = 0;
        fs(9) = 0;
    elseif opcion == 3
        fs(4) = 0;
        fs(12) = 0;
    end
    
    
    subplot(4,1,3)
    imshow(abs(fs'))
    title('sin frecuencia')
    
    a = antifourier(16);
    o = a * fs;
    subplot(4,1,4)
    ou = im2uint8(o');
    imshow(abs(ou) )
    title('resultado')
end

