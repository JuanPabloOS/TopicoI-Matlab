clc;
close all;
clear all;

I1=imread('C:\Users\usuario\Documents\JuanElGalan\img\orionByN.bmp');
I2=imread('C:\Users\usuario\Documents\JuanElGalan\img\orionG.bmp');

ISuma1=sumar(I1,I2,255,true);
ISuma2=sumar(I1,I2,255,false);

imwrite(ISuma1,'C:\Users\usuario\Documents\JuanElGalan\salidas\isuma1bmp.jpg');
imwrite(ISuma2,'C:\Users\usuario\Documents\JuanElGalan\salidas\isuma2bmp.jpg');


figure;
subplot(2,2,1); imagesc(I1);title('I1');
subplot(2,2,2); imagesc(I2); title('I2');colormap(gray);
subplot(2,2,3); imagesc(ISuma1);title('I1+I2 escalada');
subplot(2,2,4); imagesc(ISuma2);title('I1+I2 truncada');
colormap(gray);

