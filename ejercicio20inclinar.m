clc;
close all;
clear all;

I1 = imread('C:\Users\usuario\Documents\JuanElGalan\img\ve.jpg');
I2= imread('C:\Users\usuario\Documents\JuanElGalan\img\elkomander.jpg');
I3 = imread('C:\Users\usuario\Documents\JuanElGalan\img\ws.jpg');
I4 = imread('C:\Users\usuario\Documents\JuanElGalan\img\pedroinfante.jpg');

i1 = inclinar(I1,0.3);
i2 = inclinar(I1,-0.3);
i3 = inclinar(I1,0.3);
i4 = inclinar(I1,-0.3);

figure;
subplot(2,2,1); image(i2); title('inclinar i2');
subplot(2,2,2); image(i1); title('inclinar i1');

subplot(2,2,3); image(i3); title('inclinar i3');
subplot(2,2,4); image(i4); title('inclinar i4');