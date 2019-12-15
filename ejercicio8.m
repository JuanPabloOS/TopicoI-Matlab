clc;
close all;
clear all;


pathImages = 'C:\Users\usuario\Documents\JuanElGalan\PETS\PETS2000\';
fn = sprintf('%s*.jpg', pathImages);
indexImages = dir(fn);
numImages = length(indexImages);
for n=1:5:numImages
    n
    if(indexImages(n).isdir==0)
        
        fn=sprintf('%s%s', pathImages, indexImages(n).name);
        Iorig=imread(fn);
        figure(1);
        image(Iorig);
    end;
end;