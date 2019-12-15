clc;
close all;
clear all;

bn1 = imread('C:\Users\usuario\Documents\JuanElGalan\img\oByN.bmp');
bn2 = imread('C:\Users\usuario\Documents\JuanElGalan\img\flores.jpg');

grey1=imread('C:\Users\usuario\Documents\JuanElGalan\img\oG.bmp');
grey2=imread('C:\Users\usuario\Documents\JuanElGalan\img\pedroinfante.jpg');

color1=imread('C:\Users\usuario\Documents\JuanElGalan\img\orion.bmp');
color2=imread('C:\Users\usuario\Documents\JuanElGalan\img\valentinElizalde.jpg');

% figure;
% imshow(bn1);
% 
% figure;
% imagesc(color1);
% colormap(gray);
% 
% figure;
% subplot(1,2,1);
% imshow(color2);
% 
% figure;
% subplot(1,2,1);
% imshow(color2);
% subplot(1,2,2); imagesc(color2);colormap(gray);


figure;
subplot(2,2,1);imshow(grey1);
subplot(2,2,2);image(grey1);
subplot(2,2,3);imagesc(grey1);colormap(summer);


