function res = plot_fou(N)
    figure;
    for l = 1:N
        subplot(N,2,l);
        f = fourier(N);
        plot(real( f(l,1:end) ))
    end
    figure
    
    for l = 1:N
        subplot(N,2,l);
        f = fourier(N);
        plot(imag( f(l,1:end) ))
    end
    res = 1;
end