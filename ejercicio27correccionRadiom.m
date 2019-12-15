clc;
close all;
clear all;
valmax=255;
tic;
I1 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\clara1.jpg');toc;
tic;
I2 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\clara2.jpg');toc;
tic;
I3 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\clara3.jpg');toc;
tic;
I4 = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\clara4.jpg');toc;
I5=I1;

escalada1=correccionRadiom(I1,1/2,valmax);
escalada2=correccionRadiom(I2,1/3,valmax);
escalada3=correccionRadiom(I3,1/4,valmax);
escalada4=correccionRadiom(I4,1/5,valmax);

tic; [Hist1] = generarHist(I1, valmax); toc;
tic; [Hist2] = generarHist(I2, valmax); toc;
tic; [Hist3] = generarHist(I3, valmax); toc;
tic; [Hist4] = generarHist(I4, valmax); toc;

figure;
subplot(1,2,1);image(I1);title('ORIGINAL1');
subplot(1,2,2);image(escalada1);title('Correccion Rad. m =1/2');
figure;
subplot(1,2,1);image(I2);title('ORIGINAL2');
subplot(1,2,2);image(escalada2);title('Correccion Rad. m =1/3');
figure;
subplot(1,2,1);image(I3);title('ORIGINAL3');
subplot(1,2,2);image(escalada3);title('Correccion Rad. m =1/4');
figure;
subplot(1,2,1);image(I4);title('ORIGINAL4');
subplot(1,2,2);image(escalada4);title('Correccion Rad. m =1/5');

tic;
imwrite(escalada1,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\clara1.jpg');toc;
tic;
imwrite(escalada2,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\clara2.jpg');toc;
tic;
imwrite(escalada3,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\clara3.jpg');toc;
tic;
imwrite(escalada4,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\clara4.jpg');toc;

 %% Histograma de frecuencias
graficarHist(Hist1, 1);
graficarHist(Hist2, 1);
graficarHist(Hist3, 1);
graficarHist(Hist4, 1);