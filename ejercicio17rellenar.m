clc;
close all;
clear all;

I=imread('G:\JuanElGalan\img\elkomander.jpg');

tic;
[IZoom1, IBand1] = zoomSxSy(I,0.75,0.70);
[IZoom2, IBand2] = zoomSxSy(I,1.15,1.05);
[IZoom3, IBand3] = zoomSxSy(I,1.65,1.80);
toc;

tic;
[IZoom2R, IBand2R, noPixeles2] = ...
rellenarImg(IZoom2, IBand2, 1);
toc;

tic;
[IZoom3R, IBand3R, noPixeles3] = ...
rellenarImg(IZoom3, IBand3, 1);
toc;


imwrite(IZoom1,'G:\JuanElGalan\img\elkomander.jpg\IZoom11.jpg');
imwrite(IZoom2,'G:\JuanElGalan\img\elkomander.jpg\IZoom21.jpg');
imwrite(IZoom3,'G:\JuanElGalan\img\elkomander.jpg\IZoom31.jpg');

imwrite(IZoom2R,'G:\JuanElGalan\img\elkomander.jpg\IZoom2R.jpg');
imwrite(IZoom3R,'G:\JuanElGalan\img\elkomander.jpg\IZoom3R.jpg');

figure;
image(I); title('Imagen original');

figure;
subplot(1,2,1); image(IZoom1); title('sx=0.75, sy=0.70');
subplot(1,2,2); imagesc(IBand1); title('Bandera');colormap(gray);

figure;
subplot(2,2,1); image(IZoom2); title('sx=1.75, sy=1.05');
subplot(2,2,2); imagesc(IBand2); title('Bandera');colormap(gray);
subplot(2,2,3); image(IZoom2R); title('sx=1.75, sy=1.05 Rellenada');
subplot(2,2,4); imagesc(IBand2R); title('Bandera');colormap(gray);

figure;
subplot(2,2,1); image(IZoom3); title('sx=1.65, sy=1.80');
subplot(2,2,2); imagesc(IBand3); title('Bandera');colormap(gray);
subplot(2,2,3); image(IZoom3R); title('sx=1.65, sy=1.80 Rellenada');
subplot(2,2,4); imagesc(IBand3R); title('Bandera');colormap(gray);