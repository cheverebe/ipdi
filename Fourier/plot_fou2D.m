function [ res ] = plot_fou2D( N )
%PLOT_FOU2D Summary of this function goes here
%   Detailed explanation goes here

    f = fourier(N) * fourier(N)';
    figure;
    for l = 1:N
        subplot(N,2,l);
        plot(real( f(l,1:end) ))
    end
    figure
    
    for l = 1:N
        subplot(N,2,l);
        plot(imag( f(l,1:end) ))
    end
    res = 1;

end

