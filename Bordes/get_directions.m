function [ n_direction_dis ] = get_directions( Ix, Iy )
    n_direction = atan2(Iy, Ix);
    n_direction = n_direction*180/pi; 
    
    [w,h] = size(Ix);
    n_direction_dis = zeros(w,h);
    for i = 1  : w
        for j = 1 : h

            if ((n_direction(i, j) > 0 ) && (n_direction(i, j) < 22.5) || (n_direction(i, j) > 157.5) && (n_direction(i, j) < -157.5))
                n_direction_dis(i, j) = 0;
            end

            if ((n_direction(i, j) > 22.5) && (n_direction(i, j) < 67.5) || (n_direction(i, j) < -112.5) && (n_direction(i, j) > -157.5))
                n_direction_dis(i, j) = 45;
            end

            if ((n_direction(i, j) > 67.5 && n_direction(i, j) < 112.5) || (n_direction(i, j) < -67.5 && n_direction(i, j) > 112.5))
                n_direction_dis(i, j) = 90;
            end

            if ((n_direction(i, j) > 112.5 && n_direction(i, j) <= 157.5) || (n_direction(i, j) < -22.5 && n_direction(i, j) > -67.5))
                n_direction_dis(i, j) = 135;
            end
        end
    end

end

