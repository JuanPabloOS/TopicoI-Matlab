clc;
close all;
clear all;

I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\valentin.jpg');
tic;
%% Hacer zoom
fprintf('======Hacer zoom=====\n');
[IZoom1, IBandZ1] = zoomSxSy(I,0.75,0.70);toc;

%% transformación a fín
fprintf('======Trasformación a fín =====\n');
tic;
[IAfin1, IBandA1]=transAfin(IZoom1,33,0.75,0.80,50,75);toc;

%% DEFORMAR
fprintf('===== Deformación=====');
tic;
Idef1=deformar2(IAfin1,-3,5);toc;


figure;
image(I);title('Imagen original');

figure;

subplot(1,2,1);image(IZoom1);title('ZOOM');
subplot(1,2,2);image(IBandZ1);title('Band ZOOM');

figure;
subplot(1,2,1);image(IAfin1);title('IAfin1');
subplot(1,2,2);image(IBandA1);title('IBandA1');

figure;
image(Idef1);title('deformacion');
imwrite(Idef1,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\porfunciones.jpg')