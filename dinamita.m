%% Zoom, transformaci�n af�n y deformaci�n
%%Entradas
%% imagen - I
%% Zoom -- sx1, sy1
%% transAfin angulo, sx2, sy2, dx, dy,
%% deformaci�n ka, kd
function [G,IBand] = dinamita(I, sx1, sy1, angulo, sx2, sy2, dx, dy, ka, kd)
    nr=round(size(I,1)*sy1);
    nc=round(size(I,2)*sx1);
    vectDef=zeros(1,size(I,2));
    for i=1:size(I,2)
        vectDef(i)=-ka*(sin(i/kd)+1);
    end
    vectDef=round(vectDef);
    valMin=min(vectDef);
    vectDef=vectDef+abs(valMin);
    valMax=max(vectDef);
    G=0;
    IBand=0;
    if((nr<5000)&&(nc<5000)) %% tama�o m�ximo
        
        coseno=cosd(angulo);
        seno=sind(angulo);
        nCoord=zeros(nr+valMax,nc,size(I,3)); %% x' ,y'
        for i=1:size(I,1) %% Renglones - y 
            for j=1:size(I,2) %% Columnas - x
                nx=j*(sx1*sx2*coseno)-i*(seno*sy1)+dx;
                ny=(j*(seno*sx1)+i*(sy1*sy2*coseno)+dy)-ka*(sin(nx/kd)+1);
                
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
end

