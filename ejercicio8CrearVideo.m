clc;
close all;
clear all;


pathImages = 'C:\Users\usuario\Documents\JuanElGalan\PETS\PETS2000\';
fn = sprintf('%s*.jpg', pathImages);
indexImages = dir(fn);
numImages = length(indexImages);

aviName='C:\Users\usuario\Documents\JuanElGalan\PETS\video01.avi';
mov=VideoWriter(aviName); %Crea el archivo avi
mov.FrameRate=25; % imagenes por segundo
mov.Quality=80; %calidad 80%
open(mov); %%lo abre y deja en espera

figure;
for n=1:5:numImages  
    n
    if(indexImages(n).isdir==0)        
        fn=sprintf('%s%s', pathImages, indexImages(n).name);
        Iorig=imread(fn);
        figure(1);
        image(Iorig);
        
        frameN =getframe(1); %% captura la imagen de la figura
        writeVideo(mov,frameN); %% integra el frame al video
    end;
end;
close(mov); %% cierra el archivo físico


% figure;
% for n=1:5:numImages  
%     n
%     if(indexImages(n).isdir==0)        
%         fn=sprintf('%s%s', pathImages, indexImages(n).name);
%         Iorig=imread(fn);                        
%         writeVideo(mov,frameN); %% integra el frame al video
%     end;
% end;
% close(mov); %% cierra el archivo físico