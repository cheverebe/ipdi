%Leer la imagen multibanda
img=leerimagbandas('im10bandas.img',512,614,10);
[N M B]=size(img)
%mostrar todas las bandas
figure(1);imagesc(img(:,:,1));truesize;axis 'image';colormap(gray(256))
figure(2);imagesc(img(:,:,2));truesize;axis 'image';colormap(gray(256))
figure(3);imagesc(img(:,:,3));truesize;axis 'image';colormap(gray(256))
figure(4);imagesc(img(:,:,4));truesize;axis 'image';colormap(gray(256))
figure(5);imagesc(img(:,:,5));truesize;axis 'image';colormap(gray(256))
figure(6);imagesc(img(:,:,6));truesize;axis 'image';colormap(gray(256))
figure(7);imagesc(img(:,:,7));truesize;axis 'image';colormap(gray(256))
figure(8);imagesc(img(:,:,8));truesize;axis 'image';colormap(gray(256))
figure(9);imagesc(img(:,:,9));truesize;axis 'image';colormap(gray(256))
figure(10);imagesc(img(:,:,10));truesize;axis 'image';colormap(gray(256))
%Mostrar los valores de un punto en todas las bandas
img(30,20,:)
%Plotear los mismos valores
figure;plot(squeeze(img(30,20,:)))
