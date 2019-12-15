%% Perspectiva de una imagen
%% Entradas
%% I - imagen
%% k - constante de perspectiva (cercano a cero)
%% Salidas
%% G imagen de perspectiva
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [G, IBand] = perspectiva(I, k)
    G=0;
    IBand=0;

    %% calcular nuevas coordenadas    
    nCoord=zeros(size(I,1),size(I,2),2); %% x' ,y'
    for i=1:size(I,1) %% Renglones - y 
        for j=1:size(I,2) %% Columnas - x
            nx=(i*j*k);          
            nCoord(i,j,1)=nx;                        
        end
    end
    
    %% validar decimales y negativos en las coord
    nCoord=round(nCoord);    
    minX=min(min(nCoord(:,:)));        
    if(minX<=0)
        nCoord(:,:,1)=nCoord(:,:,1)+abs(minX)+1;
    end
    
    maxX=max(max(nCoord(:,:,1)));

    if(maxX<5000) %% tamaño máximo permitido
        %% asignar nuevas coordenadas
        G=zeros(size(I,1),maxX,size(I,3));
        IBand=zeros(size(I,1),maxX);
        for i=1:size(I,1)
            for j=1:size(I,2)
                nX=nCoord(i,j);                                                
                G(i,nX,:)=I(i,j,:);
                IBand(i,nX)=1;
            end
        end
    
    G=uint8(G);
    IBand=uint8(IBand);
end