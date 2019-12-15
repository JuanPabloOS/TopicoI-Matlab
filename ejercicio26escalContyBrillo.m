clc;
clear all;
close all;

valmax=255;

I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\caribbean.jpg');
tic;G1=escalContyBrillo(I, 1.25, -75, 255); toc;
tic;G2=escalContyBrillo(I, -1.25, 75, 255); toc;
tic;G3=escalContyBrillo(I, -1.25, 75, 255); toc;
tic;G4=escalContyBrillo(I, -1.25, -75, 255); toc;


tic; [Hist1] = generarHist(G1, valmax); toc;
tic; [Hist2] = generarHist(G2, valmax); toc;
tic; [Hist3] = generarHist(G3, valmax); toc;
tic; [Hist4] = generarHist(G4, valmax); toc;

figure;
subplot(2,2,1); image(G1); title('1.25, 75');
subplot(2,2,2); image(G2); title('1.25, 75');
subplot(2,2,3); image(G3); title('-1.25, 75');
subplot(2,2,4); image(G4); title('-1.25, 75');

 %% Histograma de frecuencias
graficarHist(Hist1, 1);
graficarHist(Hist2, 1);
graficarHist(Hist3, 1);
graficarHist(Hist4, 1);