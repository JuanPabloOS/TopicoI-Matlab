%% escalamiento
%% Entradas
%% I imagen de entrada
%% sx, sy factor de escalamiento
%% Salidas
%% G imagen salida
%% IBand Bnadera indicador de valor (1-existe valor)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [G, IBand] = zoomSxSy(I, sx, sy)
    nr=round(size(I,1)*sy);
    nc=round(size(I,2)*sx);
    G=0;
    IBand=0;
    if((nr<5000)&&(nc<5000)) %% tamaño máximo
        G=zeros(nr,nc,size(I,3));
        IBand=zeros(nr,nc);
        
        nX=round((1:size(I,2))*sx);
        nY=round(((1:size(I,1))*sy));
        
        indCeros=find(nX<1);
        nX(indCeros)=1;
        
        indCeros=find(nY<1);
        nY(indCeros)=1;
        
        for i=1:size(I,1)
            for j=1:size(I,2)
                G(nY(i),nX(j),:)=I(i,j,:);
                IBand(nY(i),nX(j))=1;
            end
        end
    end
    G=uint8(G);
    IBand=uint8(IBand);
end