clc;
close all;
clear all;

I1 = imread('C:\Users\usuario\Documents\JuanElGalan\img\ve.jpg');
inclinada = inclinar(I1,0.03);
inclinada2 = inclinar(inclinada,0.03);
[perspectiva1, band1] = perspectiva(inclinada2,0.003);

image(perspectiva1);