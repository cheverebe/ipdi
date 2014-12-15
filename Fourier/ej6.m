function [ ] = ej6( f, g )
    
    subplot(1,4,1)
    imshow(f)    
    title('Im1')
    
    subplot(1,4,2)
    imshow(g)    
    title('Im2')
    
    %F[f*g]
    f_o_g = f * g;
    fft_f_o_g = fou2d(f_o_g);
    
    subplot(1,4,3)
    imshow(fft_f_o_g)    
    title('F[f * g]')
        
    % F[f] . F[g]
    fft_f = fou2d(f);
    fft_g = fou2d(g);
    
    res = fft_f * fft_g;
    
    subplot(1,4,4)
    imshow(res)    
    title('F[f] . F[g]')
end

