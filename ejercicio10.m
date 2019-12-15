clc;
close all;
clear all;

I1=imread('C:\Users\usuario\Documents\JuanElGalan\img\ws.jpg');
I2=imread('C:\Users\usuario\Documents\JuanElGalan\img\orion.bmp');

k=100;
I1emo=I1-k;
I2emo=I2-k;
figure;
 subplot(2,2,1); image(I1);
 subplot(2,2,2); imagesc(I2);
 subplot(2,2,3); image(I1emo);
 subplot(2,2,4); imagesc(I2emo);colormap(gray);
 
 
%  G1=umbralizarByN(I1, 150,1);
%  G2=umbralizarColor(I1, 150,1);
%  
%  G3=umbralizarByN(I2,100,1);
%  G4=umbralizarColor(I2,100,1);
%  
%  G5=umbralizarByN(I2,[40;90],1); 
% 
%  G6=umbralizarColor(I2,[40;90],1);
%  
% figure;
% subplot(2,2,1); image(I1); title('Imagen Original');
% subplot(2,2,3); imagesc(G1); title('Umbral Binario');
% subplot(2,2,4); image(I2); title('Umbral Color'); colormap(gray);
% 
% figure;
% subplot(2,2,1); imagesc(G3); title('Umbral Binario');
% subplot(2,2,2); imagesc(G4); title('Umbral Color');
% subplot(2,2,3); imagesc(G5); title('Umbral Binario');
% subplot(2,2,1); imagesc(G6); title('Umbral Color');colormap(gray);
 