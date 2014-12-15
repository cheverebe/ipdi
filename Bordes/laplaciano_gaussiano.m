function [ out ] = laplaciano_gaussiano( im )    
im=im2double(im);

[ x , y]=meshgrid ( 1 : 10 , 1 : 10 ) ;
x=x-5;
y=y-5;
sigma =1;
a=x .* x+y .* y ;
b=exp(-a / ( 2* pi *( sigma * sigma ) ) ) ;
c=(x .* x+y .* y-2*pi *( sigma * sigma ) ) ;
gfilter=-b .* c ;
   
smim=im2uint8((conv2(double(im),gfilter)));

out=laplaciano_bordes(smim);
end

