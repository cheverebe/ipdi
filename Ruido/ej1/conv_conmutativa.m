function [ y1, y2 ] = conv_conmutativa( x1,x2 )
%CONV_CONMUTATIVA Summary of this function goes here
%   Detailed explanation goes here

    y1 = conv(x1,x2);
    y2 = conv(x2,x1);
    
    figure;
    plot(y1,'LineStyle','none','Marker','o','MarkerFaceColor','blue','MarkerSize',5);
    plot(y2,'LineStyle','none','Marker','o','MarkerFaceColor','red','MarkerSize',5);
    grid on;
end

