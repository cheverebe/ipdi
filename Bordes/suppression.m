function [ Is ] = suppression( Img,Id )
[w,h] = size(Img);
Is = zeros(w,h);
for i = 2  : w-1
    for j = 2 : h-1        
        if (Id(i, j) == 0)
        	if (Img(i, j) > Img(i, j - 1) && Img(i, j) > Img(i, j + 1))
                Is(i, j) = Img(i, j);
            else
                Is(i, j) = 0;
            end
        end

        if (Id(i, j) == 45)
            if (Img(i, j) > Img(i + 1, j - 1) && Img(i, j) > Img(i - 1, j + 1))
                Is(i, j) = Img(i, j);
            else
                Is(i, j) = 0;
            end
        end

        if (Id(i, j) == 90)
            if (Img(i, j) > Img(i - 1, j) && Img(i, j) > Img(i + 1, j))
                Is(i, j) = Img(i, j);
            else
                Is(i, j) = 0;
            end
        end

        if (Id(i, j) == 135)
            if (Img(i, j) > Img(i - 1, j - 1) && Img(i, j) > Img(i + 1, j + 1))
                Is(i, j) = Img(i, j);
            else
                Is(i, j) = 0;
            end
        end

    end
end

end