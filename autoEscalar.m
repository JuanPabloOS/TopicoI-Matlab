%% Auto-escalar de la imagen
%% ENtradas
%% I Imagen de salida
%% valmax - Vlor máximo posible
%% G Imagen resultante
function [ G ] = autoEscalar(I, valmax)
    G=zeros(size(I));
    for canal=1:size(I,3) %% canales de color
        minimo=min(min(I(:,:,canal)));
        maximo=max(max(I(:,:,canal)))
        valEscal=zeros(valmax+1,1);
        for i = 0:valmax
            valEscal(i+1)=round((valmax/(maximo-minimo))*(i-minimo));
        end
        for i=1:size(I,1) %% cada renglón
            for j=1:size(I,2) %% cada columna
                G(i,j,canal)=valEscal(I(i,j,canal)+1);
            end
        end
    end
    G=uint8(G);
end