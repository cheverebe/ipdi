function img = leerimagbandas(fpath, fi, co, sl )
% dado el archivo en path, se lee (copia) en una matriz de 2 byte/pixel de fi filas, co columnas
% y sl slices o canales o bandas
% Se asumen los pixels ordenados de forma BIP (Band Interleaved by Pixel), es decir,
% primero se almacenan todos las canales del pixel (1,1), luego siguen los del pixel (1,2), etc

	if nargin == 1,
		fi = 512;
		co = 614;
		sl = 224;
	end
	
	fp = fopen(fpath,'r','b');
	if fp == -1
      	disp(['Error: no se puede abrir archivo ' path]);
       	return;
	end
	
	img = zeros(fi,co,sl,'int16');
	
	for ii=1:fi,
		for jj=1:co,
			img(ii,jj,:) = fread(fp, sl, 'int16=>int16');
		end
	end
	
	fclose(fp);
