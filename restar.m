%% DIFERENCIA ENTRE IM�GENES
%%ENTRADA
%%I1, I2 IM�GENES DE ENTRADA
%%Salida
%%Dif imagen de diferencias absolutas
%%%%%%%%%%%%%%%%%%%
function [Dif] = restar(I1,I2)
    Dif=0;
    if ((size(I1,1)==size(I2,1))&&(size(I1,1)==size(I2,1)))
        if(size(I1,3)==size(I2,3))
            Dif=abs(double(I1)-double(I2));
        end
    end
    Dif=uint8(Dif);
end