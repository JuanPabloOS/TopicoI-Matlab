clc;
close all;
clear all;

I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\valentin.jpg');
tic;
%% Hacer zoom
fprintf('======Hacer zoom=====\n');
[IZoom1, IBandZ1] = zoomSxSy(I,0.75,0.70);
[IZoom2, IBandZ2] = zoomSxSy(I,0.70,0.75);
[IZoom3, IBandZ3] = zoomSxSy(I,0.80,0.85);
[IZoom4, IBandZ4] = zoomSxSy(I,0.85,0.80);
[IZoom5, IBandZ5] = zoomSxSy(I,0.90,0.60);toc;

%% transformación a fín
fprintf('======Trasformación a fín =====\n');
tic;
[IAfin1, IBandA1]=transAfin(IZoom1,20,0.75,0.80,50,75);
[IAfin2, IBandA2]=transAfin(IZoom2,25,0.80,0.75,45,70);
[IAfin3, IBandA3]=transAfin(IZoom3,30,0.60,0.35,40,65);
[IAfin4, IBandA4]=transAfin(IZoom4,35,0.65,0.40,35,60);
[IAfin5, IBandA5]=transAfin(IZoom5,40,0.50,0.50,30,55);toc;

%% DEFORMAR
fprintf('===== Deformación=====');
tic;
Idef1=deformar2(IAfin1,4,6);
Idef2=deformar2(IAfin2,-4,6);
Idef3=deformar2(IAfin3,-4,-6);
Idef4=deformar2(IAfin4,4,-6);
Idef5=deformar2(IAfin5,6,-4);toc;

% fprintf('Rellenando...\n');
% tic;
% [dinamita1R, IBand1R, noPixeles1]=rellenarImg(Idef1,IBandA1,1);
% [dinamita2R, IBand2R, noPixeles2]=rellenarImg(Idef2,IBandA2,1);
% [dinamita3R, IBand3R, noPixeles3]=rellenarImg(Idef3,IBandA3,1);
% [dinamita4R, IBand4R, noPixeles4]=rellenarImg(Idef4,IBandA4,1);
% [dinamita5R, IBand5R, noPixeles5]=rellenarImg(Idef5,IBandA5,1);toc;
% 
% fprintf('=========================================================\n');
% total1 = size(dinamita1R,1)*size(dinamita1R,2);
% fprintf('Imagen dinamita1 (%d, %d)\n', size(dinamita1R,1),size(dinamita1R,2));
% fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles1, (noPixeles1/total1)*100);
% fprintf('=========================================================\n');
% total2 = size(dinamita2R,1)*size(dinamita2R,2);
% fprintf('Imagen dinamita2 (%d, %d)\n', size(dinamita2R,1),size(dinamita2R,2));
% fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles2, (noPixeles2/total2)*100);
% fprintf('=========================================================\n');
% total3 = size(dinamita3R,1)*size(dinamita3R,2);
% fprintf('Imagen dinamita3 (%d, %d)\n', size(dinamita3,1),size(dinamita3,2));
% fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles3, (noPixeles3/total3)*100);
% fprintf('=========================================================\n');
% total4 = size(dinamita4R,1)*size(dinamita4R,2);
% fprintf('Imagen dinamita4 (%d, %d)\n', size(dinamita4R,1),size(dinamita4R,2));
% fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles4, (noPixeles4/total4)*100);
% fprintf('=========================================================\n');
% total5 = size(dinamita5R,1)*size(dinamita5R,2);
% fprintf('Imagen dinamita5 (%d, %d)\n', size(dinamita5R,1),size(dinamita5R,2));
% fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles5, (noPixeles5/total5)*100);


figure;
subplot(2,2,1);image(Idef1);title('Dinamita1');
subplot(2,2,2);image(Idef2);title('Dinamita2');
subplot(2,2,3);image(Idef3);title('Dinamita3');
subplot(2,2,4);image(Idef4);title('Dinamita4');
figure;
image(Idef5);title('Dinamita5');
image(Idef1);title('Resultado');
imwrite(Idef1,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\porfunciones.jpg')