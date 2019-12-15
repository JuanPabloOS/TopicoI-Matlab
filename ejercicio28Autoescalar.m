clc;
close all;
clear all;
valmax=255;
tic;
I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\clara1.jpg');toc;
tic;


G1=autoEscalar(I,valmax);
[HIST0]=generarHist(I, valmax);
[HIST1]=generarHist(G1, valmax);

figure;
subplot(1,2,1);image(I);title('original');
subplot(1,2,2);image(G1);title('autoescalamiento');

imwrite(G1,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\autoEscal01.jpg');
graficarHist(HIST0, 1);
graficarHist(HIST1, 1);