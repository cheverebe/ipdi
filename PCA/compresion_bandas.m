function [ output_args ] = compresion_bandas( img, cantCanales )
%COMPRESION_BANDAS Summary of this function goes here
%   Detailed explanation goes here

    s = size(img);
    A = zeros(s(3), s(1)*s(2));
    for i=1:10
        canal = img(:,:,i);
        A(i,:) = canal(:);
    end
    
    for j=1:s(1)*s(2)
       m = sum(A(:,j))/s(3);
       A(:,j) = A(:,j)-m;
        
    end
    
    C = A*A';
    
    [V,D]=eig(C);
    [S, I] = sort(sum(D),'ascend');
    I = I(1:cantCanales);
    s = size(I);
    V2 = cell(s(2),1);
    for j = 1:s(2)
       V2{j} = V(1:end,I(j))';
       D(j,j) = S(j);
       figure;
       imagesc(img(:,:,I(j)));
       truesize;axis 'image';
       colormap(gray(256))

    end
    V = cell2mat(V2)';
    
    
end

