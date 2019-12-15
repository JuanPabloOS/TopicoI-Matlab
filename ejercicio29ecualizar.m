clc;
close all;
clear all;

tic; I1 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\muyoscura.jpg');toc;
tic; I2 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\muyoscura2.jpg');toc;
tic; I3 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\muyoscura3.jpg');toc;
tic; I4 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\muyoscura4.jpg');toc;

valmax=255;

tic; H1 = generarHist(I1, valmax); toc;
tic; H2 = generarHist(I2, valmax); toc;
tic; H3 = generarHist(I3, valmax); toc;
tic; H4 = generarHist(I4, valmax); toc;

tic; E1 = ecualizar(I1,H1,valmax); toc;
tic; E2 = ecualizar(I2,H2,valmax); toc;
tic; E3 = ecualizar(I3,H3,valmax); toc;
tic; E4 = ecualizar(I4,H4,valmax); toc;

figure;
subplot(2,2,1);image(E1); title('I1');
subplot(2,2,2);image(E2); title('I2');
subplot(2,2,3);image(E3); title('I3');
subplot(2,2,4);image(E4); title('I4');

graficarHist(H1,1);
graficarHist(H2,1);
graficarHist(H3,1);
graficarHist(H4,1);



