%% I - imagen en valores flotantes
%% valmax - valor maximo posible
%% bandEscala - bandera de escalamiento de los valores
%% Salida
%% G - imagen validada
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ G ] = validar( I, valmax, bandEscala)
     G=round(I);
     minimo=min(G(:)); 
     if (minimo<0)
         indNeg=find(G<0);
         if ((size(indNeg,1))>0)  %% si hay pixeles negativos
            G(indNeg)=0;
         end
     end
     for c=1:size(I,3)
         ICanal=G(:,:,c);
         maximo=max(ICanal(:));
         if (maximo>valmax)
             if (bandEscala)
                 k=valmax/maximo;
                 ICanal=round(ICanal*k);
             else  %% truncamiento
                indValMay=find(ICanal>valmax);
                ICanal(indValMay)=valmax;
             end
         end
         G(:,:,c)=ICanal; 
     end
     G=uint8(G);
end