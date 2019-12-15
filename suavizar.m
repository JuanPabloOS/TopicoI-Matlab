%% Suavisado de la imagen
%% Entrada
%% I imagen
%% mascara matriz de referencia
%% salida
%% G imagen de salida
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ G ] = suavizar(I, mascara)
    G=convolucion(I, mascara,0)%% TOMA COMO CEROS LOS VECINOS INEXISTENTES
    G=uint8(round(G));
end