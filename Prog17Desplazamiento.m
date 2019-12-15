clc;
close all;
clear all;

I=imread('C:\Users\usuario\Documents\JuanElGalan\img\ve.jpg');

tic; 
IDesplazada1=desplazar(I,30,50);
IDesplazada2=desplazar(I,30,-50);
IDesplazada3=desplazar(I,-30,50);
IDesplazada4=desplazar(I,-30,-50);

toc;
imwrite(IDesplazada1,'C:\Users\usuario\Documents\JuanElGalan\img\des1.jpg');
imwrite(IDesplazada2,'C:\Users\usuario\Documents\JuanElGalan\img\des2.jpg');
imwrite(IDesplazada3,'C:\Users\usuario\Documents\JuanElGalan\img\des3.jpg');
imwrite(IDesplazada4,'C:\Users\usuario\Documents\JuanElGalan\img\des4.jpg');

figure;
image(I); title('Imagen Original');

figure;
subplot(2,2,1);image(IDesplazada1);title('IDesplazada1');
subplot(2,2,2);image(IDesplazada2);title('IDesplazada2');
subplot(2,2,3);image(IDesplazada3);title('IDesplazada3');
subplot(2,2,4);image(IDesplazada4);title('IDesplazada4');