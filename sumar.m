%% SUMA ENTRE IMÁGENES
%%ENTRADA
%%I1, I2 IMÁGENES DE ENTRADA

%% bandEscala - bandera de escalonamiento de los valores
%%Salida
%%G imagen de la suma
%%%%%%%%%%%%%%%%%%%
function [G] = sumar(I1,I2, valmax, bandEscala)
    G=0;
    if ((size(I1,1)==size(I2,1))&&(size(I1,1)==size(I2,1)))
        if(size(I1,3)==size(I2,3))
            G=double(I1) +double(I2);
            G=validar(G,valmax,bandEscala);
        end
    end
    G=uint8(G);
end