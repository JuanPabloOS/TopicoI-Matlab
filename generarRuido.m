%% Generar ruido sal pimienta en una imagen
%% entradas
%% I Imagen de entrada (ecualizada)
%% valmax valor máximo posible
%% Salida
%% G imagen 
function [ G ] = generarRuido(I, valmax)
    G =zeros(size(I));
    for canal=1:size(I,3)
        for i=1:size(I,1)
            for j=1:size(I,2)
                aleatorio=rand(1,1);
                if (aleatorio<0.05)
                    G(i,j,canal)=0;
                else
                    if (aleatorio>0.95)
                        G(i,j,canal)=valmax;  
                    else
                        G(i,j,canal)=I(i,j,canal); 
                    end
                end
            end
        end
    end
    G=uint8(G);
end