clc;
close all;
clear all;

I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\prueba.jpg');
%% I = imread('C:\Users\usuario\Documents\JuanElGalan\img\noshe.jpg');
tic;
[Iwarp1,IBand1]=warping(I,0.75,-0.50,1,-0.25,0.75,1,0,0);
%%[Iwarp2,IBand2]=warping(I,-0.75,0.25,1,0.25,-0.75,1,0,0);
%%[Iwarp3,IBand3]=warping(I,0.90,-0.10,1,-0.10,0.90,1,0,0);
%%[Iwarp4,IBand4]=warping(I,-0.90,0.10,1,0.10,0.90,1,0,0);
toc;

tic;
imwrite(Iwarp1,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\Iwarp1.jpg');
%%imwrite(Iwarp2,'C:\Users\usuario\Documents\JuanElGalan\salidas\Iwarp2.jpg');
%%imwrite(Iwarp3,'C:\Users\usuario\Documents\JuanElGalan\salidas\Iwarp3.jpg');
%%imwrite(Iwarp4,'C:\Users\usuario\Documents\JuanElGalan\salidas\Iwarp4.jpg');
toc;

tic;

figure;
subplot(2,2,1);image(Iwarp1);title('The bet name ever after high');
%%subplot(2,2,2);image(Iwarp2);title('1,5');
%%subplot(2,2,3);image(Iwarp3);title('5,5');
%%subplot(2,2,4);image(Iwarp4);title('10,15');
figure;
subplot(2,2,1);image(IBand1);title('The bet name ever after high');
%%subplot(2,2,2);image(IBand2);title('1,5');
%%subplot(2,2,3);image(IBand3);title('5,5');
%%subplot(2,2,4);image(IBand4);title('10,15');
toc;