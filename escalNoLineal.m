%% Escalamiento no linela de la imagen
%% ENtradas
%% I Imagen de salida
%% valmax - Vlor máximo posible
%% G Imagen resultante
function [ G ] = escalNoLineal(I, valmax)
    G=zeros(size(I));
    k=valmax/(log2(valmax+1));
    I=double(I);
    valEscal=zeros(valmax+1,1);
    for i = 0:valmax
        valEscal(i+1)=round(log2(i+1)*k);
        
    end
    
    for i=1:size(I,1) %% cada renglón
        for j=1:size(I,2) %% cada columna
            G(i,j,:)=valEscal(I(i,j,:)+1);
        end
    end
    G=uint8(G);
end