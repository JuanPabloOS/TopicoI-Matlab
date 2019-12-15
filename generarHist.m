%% Generar Histograma por canal de una Imagen
%% Entradas
%% I -Imagen de entrada
%% valmax - valor maximo de color
%% Salidas
%% Hist - Histograma que contiene
%%  primera dimension - canal de color
%%  segunda dimension - valor del pixel
%%  tercera dimension - valor del histograma
%%      primer columna - frecuencia
%%      segunda columna - frec. relativa
%%      tercer columna - frec. relativa acum. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ Hist ] = generarHist( I, valmax )
    Hist=zeros(size(I,3),valmax+1,3);
    for i=1:size(I,3) %% por canal de color
        Hist(i,:,:)=histograma(I(:,:,i),valmax);
    end
end

