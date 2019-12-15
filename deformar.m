%% Deformar una imagen
%% Entradas
%% I - Imagen de entrada
%% a - factor de amplitud
%% f - factor de frecuencia
%% Salidas
%% G - Imagen de salida
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [G] = deformar(I,a,f)
    vectDef=zeros(1,size(I,2));
    for i=1:size(I,2)
        vectDef(i)=-a*(sin(i/f)+1);
    end
    vectDef=round(vectDef);
    valMin=min(vectDef);
    vectDef=vectDef+abs(valMin);
    valMax=max(veltDef);
    G=zeros(size(I,1)+valMax,size(I,2),size(I,3));
    
    for i=1:size(I,1)
       for j=1:size(I,2)
            nr=i+vectDef(j);
            G(nr,j,:)=I(i,j,:);
       end
    end
    G=uint8(G);
end