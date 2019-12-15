%% Escalamiento con contraste y brillo
%% Entradas
%% I Imagen de entrada
%% c constante de contraste
%% b constante de brillo
%% valmax -valor máximo posible
%% Salida
%% G Imagen reultante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [G] = escalContyBrillo(I, c, b, valmax)
    G = zeros(size(I));
    G(:,:,:)=(I(:,:,:)*c)+b;
    G=round(G);
    indNegativos=find(G<0);
    G(indNegativos)=0;
    indOverflow=find(G>valmax);
    G(indOverflow)=valmax
    G=uint8(G);
end