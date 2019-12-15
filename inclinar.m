%% Inclinar un aimagen con base a k
%% Entradas
%% I - imagen de entrada
%% k factor de inclinación
%% Salidas
%% g IMAGEN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [G] = inclinar(I, k)

    deltaY=round((1:size(I,1))*k);
    minY=min(deltaY);
    if (minY<0)
        deltaY=deltaY+abs(minY);
    end

    G=zeros(size(I,1),size(I,2)+max(deltaY),size(I,3));
    nc=size(I,1);
    for i=1:size(I,1)
        G(i,deltaY(i)+1:deltaY(i)+nc,:)=I(i,:,:);
    end
    G=uint8(G);
end