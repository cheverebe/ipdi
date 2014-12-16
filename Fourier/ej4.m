function [ ] = ej4( Im1, Im2)
    
    subplot(2,4,1)
    imshow(Im1)    
    title('Im1')
    
    subplot(2,4,5)
    imshow(Im2)    
    title('Im2')
    
    fft1 = fou2d(Im1);
    %Modulo y fase im1
    subplot(2,4,2)
    abs1 = abs(fft1);
    imshow(abs1)    
    title('Modulo Im1')
    
    subplot(2,4,3)
    phase1 = angle(fft1);
    imshow(phase1)    
    title('Fase Im1')
    
    fft2 = fou2d(Im2);
    %Modulo y fase im2
    subplot(2,4,6)
    abs2 = abs(fft2);
    imshow(abs2)       
    title('Modulo Im2')
    
    subplot(2,4,7)
    phase2 = angle(fft2);
    imshow(phase2)    
    title('Fase Im2')
    
    %Modulo1 + fase 2
    re1 = abs1 .* cos(phase2);
    im1 = abs1 .* sin(phase2);
    F1 = re1 + 1i*im1;
    iF1 = antifou2d(F1);
    
    subplot(2,4,4)
    imshow(abs(iF1))    
    title('Modulo 1 + fase 2')
    %Modulo2 + fase2
    re2 = abs2 .* cos(phase1);
    im2 = abs2 .* sin(phase1);
    F2 = re2 + 1i*im2;
    iF2 = antifou2d(F2);
    
    subplot(2,4,8)
    imshow(abs(iF2))    
    title('Modulo 2 + fase 1')
end

