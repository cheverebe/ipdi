function [ ] = subplotear_de_a_3( A )
    colormap(gray)
    subplot(1,3,1)
    imagesc(A)
    
    subplot(1,3,2)
    %t = fft2(A);
    t = fou2d(A);
    imagesc(log(abs(fftshift(t))));
    
    %at = ifft2(t);
    at = antifou2d(t);
    subplot(1,3,3)
    imagesc(at)
end

