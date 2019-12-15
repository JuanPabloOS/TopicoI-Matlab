%% Transformación Afín (Zoom, Desplazamiento, Rotar)
%% Entradas
%% I - imagen
%% angulo - angulo de rotaciï¿½n
%% sX, sY - factor de escalamiento
%% dX, dY - desplazamiento en x y en y
%% Salidas
%% G imagen de salida
%% IBand Bandera con indicador de valor (1-existe valor)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [G, IBand] = transAfin(I, angulo, sX, sY, dX, dY)
    G=0;
    IBand=0;
    coseno=cosd(angulo);
    seno=sind(angulo);
    nCoord=zeros(size(I,1),size(I,2),2); %% x' ,y'
    for i=1:size(I,1) %% Renglones - y 
        for j=1:size(I,2) %% Columnas - x
            nx=(j*coseno*sX)-(i*seno)+dX;
            ny=(j*seno)+(i*coseno*sY)+dY;
            nCoord(i,j,1)=nx;
            nCoord(i,j,2)=ny;
            
        end
    end
    
    nCoord=round(nCoord);    
    minX=min(min(nCoord(:,:,1)));
    minY=min(min(nCoord(:,:,2)));
    
    if(minX<0)
        nCoord(:,:,1)=nCoord(:,:,1)+abs(minX)+1;
    end
    if(minY<0)
        nCoord(:,:,2)=nCoord(:,:,2)+abs(minY)+1;
    end
    
    maxX=max(max(nCoord(:,:,1)));
    maxY=max(max(nCoord(:,:,2)));
    
    %% asignar nuevas coordenadas
    G=zeros(maxY,maxX,size(I,3));
    IBand=zeros(maxY,maxX);
    for i=1:size(I,1)
        for j=1:size(I,2)
            nX=nCoord(i,j,1);
            nY=nCoord(i,j,2);
            %%nY, nX, i, j
            %%size(G), size(I)
            G(nY,nX,:)=I(i,j,:);
            IBand(nY,nX)=1;
        end
    end
    
    G=uint8(G);
    IBand=uint8(IBand);
end