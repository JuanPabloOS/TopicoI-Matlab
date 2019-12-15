%% Umbralizacion de una imagen
%% Entradas:
%% I - Imagen de entrada
%% sigma - vector o valor de refencia (sigma1, sigma2)
%% condicion - 1-mayor o igual, 2-menor o igual
%% Salidas:
%% G - Imagen resultado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ G ] = umbralizarByN( I, sigma, condicion )   
     bandIntervalo=false; 
     sigma1=sigma(1);
     sigma2=0;
     if size(sigma,1)>1 %% es un intervalo
         sigma2=sigma(2);
         bandIntervalo=true;
     end
     G=zeros(size(I,1),size(I,2));
     for i=1:size(I,1) %% renglones
         for j=1:size(I,2) %% columnas
             valor=max(I(i,j,:));
             if (bandIntervalo)
                 if (condicion==1) %% dentro del interv
                     if ((valor>=sigma1)&&(valor<=sigma2))
                        G(i,j)=255;                         
                     end
                 else  %% fuera del intervalo
                     if ((valor<=sigma1)||(valor>=sigma2))
                         G(i,j)=255;                         
                     end                     
                 end
             else
                 if (condicion==1) %% mayor o igual
                     if (valor>=sigma1)
                         G(i,j)=255;                                                  
                     end
                 else %% menor o igual
                     if (valor<=sigma1)
                         G(i,j)=255;                                                 
                     end       
                 end
             end
         end
     end
     G=uint8(G);
end
