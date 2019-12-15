%% Deformar una imagen
%% Entradas
%% I - Imagen de entrada
%% a,b,c,d,e,f,i,j parametrso de la transf
%% f - factor de frecuencia
%% Salidas
%% G - Imagen de salida
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [G, IBand] = warping(I, a,b,c,d,e,f,g,h)
    G=0;
    IBand=0;
    nCoord=zeros(size(I,1),size(I,2),2); %% x' ,y'
    for i=1:size(I,1) %% Renglones - y 
        for j=1:size(I,2) %% Columnas - x
            nx=(j*a)+(i*b)+c;
            ny=(j*d)+(i*e)+f;
            denominador=(j*g)+(i*h)+1;
            if (denominador==0)
                denominador=1;
            end
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