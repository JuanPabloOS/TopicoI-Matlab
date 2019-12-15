clc;
close all;
clear all;

valmax=255;

tic; I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\clara1.jpg');toc;

mascara1=ones(3)*(1/(3^2));
mascara2=[1 2 1; 2 3 2; 1 2 1]*(1/15);
mascara3=ones(5)*(1/(5^2));
mascara4=ones(7)*(1/(7^2));

tic; G1 = suavizar(I,mascara1); toc;
tic; G2 = suavizar(I,mascara2); toc;
tic; G3 = suavizar(I,mascara3); toc;
tic; G4 = suavizar(I,mascara4); toc;
figure;
image(I);title('Imagen');

figure;
subplot(2,2,1);image(G1); title('Filtro promedio (3X3)');
subplot(2,2,2);image(G2);title('Filtro promedio ponderado');
subplot(2,2,3);image(G3);title('Filtro promedio (5X5)');
subplot(2,2,4);image(G4);title('Filtro promedio (7X7)');

imwrite(G1,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\IFiltroPromedio3X3.jpg');
imwrite(G2,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\IFiltroPromedioPonderado.jpg');
imwrite(G3,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\IFiltroPromedio5X5.jpg');
imwrite(G4,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\IFiltroPromedio7X7.jpg');


