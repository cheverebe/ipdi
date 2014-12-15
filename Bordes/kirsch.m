function [ ] = kirsch( imgId,tipoRuido, param )
  figure
    if tipoRuido==1
        ln1 = img_con_ruido_aditivo(imgId,param);
    else 
        ln1 = img_con_ruido_multiplicativo(imgId,param);
    end
    dl1=im2double(ln1);
    subplot(3,3,5), imshow(ln1);
    
    N = [ -3 -3 5   ;
          -3  0 5   ; 
          -3 -3 5  ];
    lN = conv2(dl1,N);
    subplot(3,3,2), imshow(im2uint8(lN));
    
    NW = [ 5 -3 -3   ;
           5  0 -3   ; 
           5 -3 -3  ];
    lNW = conv2(dl1,NW);
    subplot(3,3,1), imshow(im2uint8(lNW));
    
    NE = [ -3 -3 5   ;
          -3  0 5   ; 
          -3 -5 5  ];
    lNE = conv2(dl1,NE);
    subplot(3,3,3), imshow(im2uint8(lNE));
    
    S = [  5  5  5   ;
          -3  0 -3   ; 
          -3 -3 -3  ];
    lS = conv2(dl1,S);
    subplot(3,3,8), imshow(im2uint8(lS));
    
    SW = [ -3 -3 -3   ;
            5  0 -3   ; 
            5  5 -3  ];
    lSW = conv2(dl1,SW);
    subplot(3,3,7), imshow(im2uint8(lSW));
    
    SE = [-3 -3 -3   ;
          -3  0 -3   ; 
           5  5  5  ];
    lSE = conv2(dl1,SE);
    subplot(3,3,9), imshow(im2uint8(lSE));
    
    E =  [ 5   5 -3   ;
           5   0 -3   ; 
          -3  -3 -3  ];
    lE = conv2(dl1,E);
    subplot(3,3,6), imshow(im2uint8(lE));
    
    W =  [-3   5  5   ;
          -3   0  5   ; 
          -3  -3 -3  ];
    lW = conv2(dl1,W);
    subplot(3,3,4), imshow(im2uint8(lW));

end

