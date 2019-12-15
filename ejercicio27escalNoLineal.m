clc;
close all;
clear all;
valmax=255;
tic;
I1 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\muyoscura.jpg');toc;
tic;
I2 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\muyoscura2.jpg');toc;
tic;
I3 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\muyoscura3.jpg');toc;
tic;
I4 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\muyoscura4.jpg');toc;
I5=I1;

escalada1=escalNoLineal(I1,valmax);
escalada2=escalNoLineal(I2,valmax);
escalada3=escalNoLineal(I3,valmax);
escalada4=escalNoLineal(I4,valmax);

tic; [Hist1] = generarHist(I1, valmax); toc;
tic; [Hist2] = generarHist(I2, valmax); toc;
tic; [Hist3] = generarHist(I3, valmax); toc;
tic; [Hist4] = generarHist(I4, valmax); toc;

figure;
image(escalada1);
figure;
image(escalada2);
figure;
image(escalada3);
figure;
image(escalada4);


 %% Histograma de frecuencias
graficarHist(Hist1, 1);
graficarHist(Hist2, 1);
graficarHist(Hist3, 1);
graficarHist(Hist4, 1);