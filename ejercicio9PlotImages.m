clc;
close all;
clear all;

I1=imread('C:\Users\usuario\Documents\JuanElGalan\img\valentinElizalde.jpg');
I2=imread('C:\Users\usuario\Documents\JuanElGalan\img\oG.bmp');

perfil1=plotPerfil(I1,150,1,true);
perfil2=plotPerfil(I1,150,2,true);

perfil3=plotPerfil(I2,100,1,true);
perfil4=plotPerfil(I2,100,2,true);

I1(149:151,:,1)=255;
I1(149:151,:,2)=0;
I1(149:151,:,3)=255;

I1(:,50:55,1)=255;
I1(:,50:55,2)=255;
I1(:,50:55,3)=0;

I2(99:101,:,1)=0;
I2(99:101,:,2)=255;
I2(99:101,:,3)=255;

figure;
subplot(1,2,1); image(I1);
subplot(1,2,2); imagesc(I2); colormap(gray);

