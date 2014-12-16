function [ y1, y2 ] = conv_distributiva( x1, x2, x3 )
%CONV_CONMUTATIVA Summary of this function goes here
%   Detailed explanation goes here

    x4 = x2+x3;

    y1 = conv(x1,x4);
    
    x5 = conv(x1,x2);
    x6 = conv(x1,x3);
    
    y2 = conv(x5,x6);
    
    figure;
    plot(y1,'LineStyle','none','Marker','o','MarkerFaceColor','blue','MarkerSize',5);
    plot(y2,'LineStyle','none','Marker','o','MarkerFaceColor','red','MarkerSize',5);
    grid on;
end

