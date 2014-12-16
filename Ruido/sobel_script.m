b1=edge(im1,'sobel','vertical'); 
b2=edge(im1,'sobel','horizontal'); 
b3=edge(im1,'sobel'); 
subplot(2,2,1),subimage(im1); 
subplot(2,2,2),subimage(b1); 
subplot(2,2,3),subimage(b2); 
subplot(2,2,4),subimage(b3); 
