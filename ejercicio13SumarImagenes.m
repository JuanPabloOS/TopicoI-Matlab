clc;
close all;
clear all;

I1=imread('C:\Users\usuario\Documents\JuanElGalan\img\bp.jpg');
I2=imread('C:\Users\usuario\Documents\JuanElGalan\img\ve2.jpg');

ISuma1=sumar(I1,I2,255,true);
ISuma2=sumar(I1,I2,255,false);

imwrite(ISuma1,'C:\Users\usuario\Documents\JuanElGalan\salidas\isuma1.jpg');
imwrite(ISuma2,'C:\Users\usuario\Documents\JuanElGalan\salidas\isuma2.jpg');


figure;
subplot(2,2,1); image(I1);title('I1');
subplot(2,2,2); image(I2); title('I2');
subplot(2,2,3); image(ISuma1);title('I1+I2 escalada');
subplot(2,2,4); image(ISuma2);title('I1+I2 truncada');

