clc;
close all;
clear all;

I1=imread('C:\Users\usuario\Documents\JuanElGalan\PETS\PETS2000\0124.jpg');
I2=imread('C:\Users\usuario\Documents\JuanElGalan\PETS\PETS2000\0140.jpg');

IDif = restar(I2,I1);
maximo=max(IDif(:));
IDifUmb=umbralizarByN(IDif, maximo*0.3,1);


figure;
subplot(2,2,1); image(I1);title('I1');
subplot(2,2,2); image(I2); title('I2');
subplot(2,2,3); imagesc(IDif);title('I1-I2');
subplot(2,2,4); imagesc(IDifUmb);title('Umbralizada');
colormap(gray);

