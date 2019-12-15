clc;
close all;
clear all;


pathImages = 'C:\Users\usuario\Documents\JuanElGalan\PETS\PETS2000\';
fn = sprintf('%s*.jpg', pathImages);
indexImages = dir(fn);
numImages = length(indexImages);

figure;
figure;


% for n=1:5:numImages
%     n
%     if(indexImages(n).isdir==0)
%         
%         fn=sprintf('%s%s', pathImages, indexImages(n).name);
%         Iorig=imread(fn);
%         figure(1);
%         image(Iorig);
%         
%         IGris=rgb2gray(Iorig);
%         figure(2);
%         
%         imagesc(IGris); colormap(gray);
%         
%     end;
% end;

% for n=1:5:numImages
%     n
%     if(indexImages(n).isdir==0)
%         
%         fn=sprintf('%s%s', pathImages, indexImages(n).name);
%         Iorig=imread(fn);
%         figure(1);
%         
%         subplot(1,2,1);
%         
%         image(Iorig);
%         
%         IGris=rgb2gray(Iorig);
%         subplot(1,2,2)
%         
%         imagesc(IGris); colormap(gray);
%         
%     end;
% end;

tic;
for n=1:5:numImages
    n
    if(indexImages(n).isdir==0)        
        fn=sprintf('%s%s', pathImages, indexImages(n).name);
        Iorig=imread(fn);
%         figure(1);        
%         subplot(1,2,1);        
%         image(Iorig);
        
        IGris=rgb2gray(Iorig);
        
%         subplot(1,2,2)        
%         imagesc(IGris); colormap(gray);
        
        
        
        figure(2);
        IGrisT=uint8(zeros(size(Iorig)));
        IGrisT(:,:,1)=IGris;
        IGrisT(:,:,2)=IGris;
        IGrisT(:,:,3)=IGris; 
        
        ITotal=horzcat(Iorig,IGrisT);
        image(ITotal);
    end;
end;
toc;



