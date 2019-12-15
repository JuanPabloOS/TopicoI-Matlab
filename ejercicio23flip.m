clc;
close all;
clear all;

I = imread('C:\Users\usuario\Documents\JuanElGalan\img\ve.jpg');

tic;
Iflip1=flipVH(I,1);
Iflip2=flipVH(I,2);
toc;

tic;
figure;
subplot(2,2,1);image(I);
subplot(2,2,2);image(Iflip1);
subplot(2,2,3);image(Iflip2);
toc;