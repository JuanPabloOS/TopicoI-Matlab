%% flip vertical y horizontal
%% imagen
%% bandera 1 - vertical 2 - horizontal
%% salidas
%%G Imagen transformada

function [ G ] = flipVH( I, band )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    G=uint8(zeros(size(I)));
    if(band==1)
        final=size(I,2);
        for i=1:size(I,2);
            G(:,final-i+1,:)=I(:,i,:);
        end
    else
        final=size(I,1);
        for i=1:size(I,1);
            G(final-i+1,:,:)=I(i,:,:);
        end        
    end

end

