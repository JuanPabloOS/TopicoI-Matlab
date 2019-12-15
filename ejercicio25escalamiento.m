clc;
clear all;
close all;

valmax=255;

I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\valentin.jpg');
tic;G1=escalLineal(I, 0.09, 1, 255); toc;
tic;G2=escalLineal(I, 0.009, 2, 255); toc;
tic;G3=escalLineal(I, 0.0002, 3, 255); toc;

tic; [Hist0] = generarHist(I, valmax); toc;
tic; [Hist1] = generarHist(G1, valmax); toc;
tic; [Hist2] = generarHist(G2, valmax); toc;
tic; [Hist3] = generarHist(G3, valmax); toc;

figure;
subplot(2,2,1); image(I); title('Imagen Original');
subplot(2,2,2); image(G1); title('Esc. Lineal x Renglón');
subplot(2,2,3); image(G2); title('Esc. Lineal x Columna');
subplot(2,2,4); image(G3); title('Esc. Lineal x Esquina');

graficarHist(Hist0, 1); %% Histograma de frecuencias
graficarHist(Hist1, 1);
graficarHist(Hist2, 1);
graficarHist(Hist3, 1);
