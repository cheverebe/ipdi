function res = fourier(N)
    res = exp(-2 * pi * ( (0:N-1)' * (0:N-1) ) * 1i / N ) / sqrt(N);
end