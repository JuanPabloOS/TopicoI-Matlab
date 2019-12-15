clc;
close all;
clear all;

I=imread('C:\Users\usuario\Documents\JuanElGalan\img\elkomander.jpg');

%%separar canales de color

IR=I;
IG=I;
IB=I;

IR(:,:,2:3)=0;

%%Primera opción
% IG(:,:,1)=0;
% IG(:,:,3)=0;

%%Segunda opción
IG(:,:,1:2:3)=0;

IB(:,:,1:2)=0;

% figure;
% image(I);
% title('Imagen original');

% figure;
% subplot(2,2,1);  image(I);
% title('Imagen original');
% subplot(2,2,2);  image(IR);
% title('Canal Rojo');
% subplot(2,2,3);  image(IG);
% title('Canal Verde');
% subplot(2,2,4);  image(IB);
% title('Canal Azul');

sombrero=I(1:160,180:460,1);
figure;image(sombrero);
imwrite(sombrero,'C:\Users\usuario\Documents\JuanElGalan\salidas\sombrero.jpg');


% concatenado1=vertcat(I,IG);
% concatenado2=horzcat(I,IG);
% 
% image(concatenado2);
% figure; 
% surf(double(sombrero(:,:,1)));
% 
% I2=I;

% I2(1:160,180:3:460,:)=255;
% figure;
% image(I2);


% Icono=I(1:10:end,1:10:end,:);
% figure; image(Icono);
% imwrite(Icono,'C:\Users\usuario\Documents\JuanElGalan\salidas\icono.jpg');

% I2(:,:,1)=I2(:,:,1)+70;
% figure; image(I2);

%% min de A como vector
% A=(round(rand(2)*3));
% B=min(A(:));
% disp(B);


















