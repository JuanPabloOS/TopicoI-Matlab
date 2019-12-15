
%% Escalmiento Lineal
%% I imagen
%% K constate
%% valmax
%% G imagen resultante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [G] = escalLineal(I, k, tipo, valmax)
    G = zeros(size(I));
    switch tipo
        case 1
            for i=1:size(I,1)%% cada renglón
                for j=1:size(I,2) %% cada columna
                    G(i,j,:)=I(i,j,:)+k*i; 
                end
            end
        case 2
            for i=1:size(I,1) %% cada renglón
                for j=1:size(I,2) %% cada columna
                    G(i,j,:)=I(i,j,:)+k*j;
                end
            end
        otherwise
            for i=1:size(I,1) %% cada renglón
                for j=1:size(I,2) %% cada columna
                    G(i,j,:)=I(i,j,:)+k*i*j;
                end
            end
    end
    
    G=round(G);
    indNegativos=find(G<0);
    G(indNegativos)=0;
    indOverflow=find(G>valmax);
    G(indOverflow)=valmax
    G=uint8(G);
end
    