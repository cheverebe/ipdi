function [ It ] = histeresis( Is, Tmin, Tmax )
[w,h] = size(Is);
It = zeros(w, h);
for i = 1  : w
    for j = 1 : h
        if (Is(i, j) < Tmin)
            It(i, j) = 0;
        elseif (Is(i, j) > Tmax)
            It(i, j) = 1;
        else
            if (                                       ...
                 (Is(i + 1, j) > Tmax) || ...
                 (Is(i - 1, j) > Tmax) || ...
                 (Is(i, j + 1) > Tmax) || ...
                 (Is(i, j - 1) > Tmax)    ...
               )
                It(i, j) = 1;
            end
        end
    end
end
end

