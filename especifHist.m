%% Especificación del His. de la imagen
%% entradas
%% I Imagen de entrada ecualizada
%% [valIni valFIn] - rango especificado
%% valmax valor maximo posible
%% salida
%% G Imagen resultante

function [ G ] = especifHist(I, valIni, valFin, valmax)
    G=zeros(size(I));
    %%Histograma especificado
    valEscal=zeros(valmax+1,3);
    probInd=1/(valFin-valIni+1);
    valEscal(valIni+1:valFin+1,1)=probInd;
    for i=valIni:valmax
        if(i==0)
            valEscal(i+1,2)=valEscal(i+1,1);
        else
            valEscal(i+1,2)=valEscal(i+1,1)+valEscal(i,2);
        end
    end
    valEscal(:,3)=round(valEscal(:,2)*valmax);
    %% Tabla de equivalencia inversa
    tabEquiv=zeros(valmax+1,1);
    valAnt=0;
    pos =1;
    while(valEscal(pos,3)==0)
        pos = pos +1;
    end
    valAct=valEscal(pos,3);
    tabEquiv(valAnt+1:valAct+1)=pos;
    valAnt=valAct+1;
    for i=pos:valmax+1
        valAct=valEscal(i,3);
        tabEquiv(valAnt+1:valAct+1)=i;
        valAnt=valAct+1;
    end
    
    
    for canal=1:size(I,3)
        for i=1:size(I,1)
            for j=1:size(I,2)
                G(i,j,canal)=tabEquiv(I(i,j,canal)+1);
            end
        end
    end
    G=uint8(G);
end