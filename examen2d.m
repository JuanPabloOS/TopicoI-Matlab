clc;
close all;
clear all;

%% I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\prueba.jpg');
I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\valentin.jpg');
tic;
sx1=0.75;
sy1=0.70;
angulo=33;
sx2=0.75;
sy2=0.80;
dx=50;
dy=75;
ka=-3;
kd=5;
%% [Idinamita, bandera]=dinamita(I,0.75,0.70,33,0.75,0.80,50,75,-3,5);toc;

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
    
    for i=1:size(I,1)
        for j=1:size(I,2)
            nX=nCoord(i,j,1);
            nY=nCoord(i,j,2);
            %%nY, nX, i, j
            %%size(G), size(I)
            G(nY,nX,:)=I(i,j,:);
    
        end
    end
    
    G=uint8(G);
    
end

figure;
image(G);
imwrite(G,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\unificada.jpg')


