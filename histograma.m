%% Histograma de una Imagen
%% Entradas
%% I -Imagen de entrada
%% valmax - valor maximo de color
%% Salidas
%% Hist - Histograma que contiene
%%    Primer indice - Valor de intensidad
%%    Segundo indice - 1 Frecuencia
%%                   - 2 Frecuencia Relativa
%%                   - 3 Frec. relat. acumulada 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ Hist ] = histograma( I, valmax )
    Hist=zeros(valmax+1,3);
    total=size(I,1)*size(I,2);
    for i=1:size(I,1)
        for j=1:size(I,2)
            valor=I(i,j);
            Hist(valor+1,1)=Hist(valor+1,1)+1;
        end
    end
    Hist(:,2)=Hist(:,1)/total;
    Hist(1,3)=Hist(1,2);
    for i=2:(valmax+1)
           Hist(i,3)=Hist(i-1,3)+Hist(i,2); 
    end
end

