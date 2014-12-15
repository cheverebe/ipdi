function [ ] = ej2(imgId,tipoRuido,param)
    if tipoRuido==1
        ln1 = img_con_ruido_aditivo(imgId,param);
        txt = 'ruido aditivo';
    else
        ln1 = img_con_ruido_multiplicativo(imgId,param);
        txt = 'ruido multiplicativo';
    end
    figure
    subplot(2,2,1), imshow(ln1);
    title(txt);
    
    b1 = laplaciano_bordes(ln1);
    subplot(2,2,2), imshow(b1);
    title('laplaciano');
    
    b2 = laplaciano_con_varianza(ln1,50);
    subplot(2,2,3), imshow(b2);
    title('laplaciano con varianza');
    
    b3 = laplaciano_gaussiano(ln1);
    subplot(2,2,4), imshow(b3);    
    title('laplaciano del gaussiano');
end

