clc;
close all;
clear all;

I=imread('G:\JuanElGalan\img\elkomander.jpg');

tic;

[IZoom1, IBand1] = zoomSxSy(I,0.75,0.70);
[IZoom2, IBand2] = zoomSxSy(I,1.15,1.05);
[IZoom3, IBand3] = zoomSxSy(I,1.65,1.80);
toc;

imwrite(IZoom1,'G:\JuanElGalan\img\elkomander.jpg\IZoom11.jpg');
imwrite(IZoom2,'G:\JuanElGalan\img\elkomander.jpg\IZoom21.jpg');
imwrite(IZoom3,'G:\JuanElGalan\img\elkomander.jpg\IZoom31.jpg');

figure;
image(I); title('Imagen original');

figure;
subplot(1,2,1); image(IZoom1); title('sx=0.75, sy=0.70');
subplot(1,2,2); imagesc(IBand1); title('Bandera');colormap(gray);

figure;
subplot(1,2,1); image(IZoom2); title('sx=1.75, sy=1.05');
subplot(1,2,2); imagesc(IBand2); title('Bandera');colormap(gray);

figure;
subplot(1,2,1); image(IZoom3); title('sx=1.65, sy=1.80');
subplot(1,2,2); imagesc(IBand3); title('Bandera');colormap(gray);

'fin';