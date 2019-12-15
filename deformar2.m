%% Deformar una imagen
%% Entradas
%% I - Imagen de entrada
%% a - factor de amplitud
%% f - factor de frecuencia
%% Salidas
%% G - Imagen de salida
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [G] = deformar2(I,a,f)
    vectDef=zeros(1,size(I,2));
    for i=1:size(I,2)
        vectDef(i)=-a*(sin(i/f)+1);
    end
    vectDef=round(vectDef);
    valMin=min(vectDef);
    vectDef=vectDef+abs(valMin);
    valMax=max(vectDef);
    G=zeros(size(I,1)+valMax,size(I,2),size(I,3));
    
    for j=1:size(I,2)        
        rIni=1+vectDef(j);
        rFin=rIni+size(I,1)-1;
        G(rIni:rFin,j,:)=I(:,j,:);
    end
    
    G=uint8(G);
end