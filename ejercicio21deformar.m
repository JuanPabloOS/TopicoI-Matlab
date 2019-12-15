clc;
close all;
clear all;

I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\prueba.jpg');

Idef1=deformar2(I,-3,5);
Idef2=deformar2(I,3,5);
Idef3=deformar2(I,-5,5);
Idef4=deformar2(I,-10,15);
figure;
image(Idef1);
figure;
image(Idef2);
figure;
subplot(2,2,1);image(Idef1);title('The bet name ebver after high');
subplot(2,2,2);image(Idef2);title('1,5');
subplot(2,2,3);image(Idef3);title('5,5');
subplot(2,2,4);image(Idef4);title('10,15');