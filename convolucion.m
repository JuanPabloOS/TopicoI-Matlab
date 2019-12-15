%% Convolución de una imagen
%% entradas
%% I Imagen de entrada
%% macara matriz cuadrada
%% indicador -  0 tomar como vacío los vecinos inexistentes
%%              1 tomar con el valor central a los vecinos inexistentes
%% Salida
%% G imagen resultante double
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [ G ] = convolucion(I, mascara, indicador)
%     lambda = (size(mascara(1)-1))/2;
%     G =zeros(size(I));
%     nr=size(I,1);
%     nc=size(I,2);
%     
%     if(indicador==0)
%         for canal=1:size(I,3) %% canales de color
%             for i=1:size(I,1) %% cada renglón
%                 for j=1:size(I,2) %% cada columna
%                     suma=0;
%                     rmask=1;
%                     cmask=1;
%                     for r=(i-lambda):(i+lambda)
%                         for c=(j-lambda):(j+lambda)
%                             existe = false;
%                             if((r>0)&&(r<=nr))
%                                 if ((c>0)&&(c<=nc))
%                                     existe=true;
%                                 end
%                             end
%                             if(existe)
%                                 suma=suma+(I(r,c,canal)*mascara(rmask,cmask));
%                             end
%                             cmask=cmask+1;
%                         end
%                         rmask=rmask+1;
%                         cmask=1;
%                     end
%                     %%G(i,j,canal)=suma;
%                 end
%             end
%         end
%         G=uint8(G);
%     else %%pixeles inexistentes = pixel centrl
%         for canal=1:size(I,3) %% canales de color
%             for i=1:size(I,1) %% cada renglón
%                 for j=1:size(I,2) %% cada columna
%                     suma=0;
%                     rmask=1;
%                     cmask=1;
%                     for r=(i-lambda):(i+lambda)
%                         for c=(j-lambda):(j+lambda)
%                             existe = false;
%                             if((r>0)&&(r<=nr))
%                                 if ((c>0)&&(c<=nc))
%                                     existe=true;
%                                 end
%                             end
%                             if(existe)
%                                 suma=suma+(I(r,c,canal)*mascara(rmask,cmask));
%                             else
%                                 suma=suma+(I(i,j,canal)*mascara(rmask,cmask));
%                             end
%                             cmask=cmask+1;
%                         end
%                         rmask=rmask+1;
%                         cmask=1;
%                     end
%                     G(i,j,canal)=suma;
%                 end
%             end
%         end
%         %%G=uint8(G);
%     end
% end
% Convolucion de una imagen
% Entradas
% I Imagen de entrada (ecualizada)
% Mascara matriz cuadrada de dimension impar.
% indicador - 0 tomar como vacio los vecinos inexistentes
%             1 tomar con el valor central a los vecinos inexistentes
% valmax valor maximo posible
% salida
% G Imagen resultante double
function [ G ] = convolucion(I, mascara, indicador)
lambda = (size(mascara,1)-1)/2;
    G=zeros(size(I));   
    nr=size(I,1);
    nc=size(I,2);
    if(indicador==0)
        for canal=1:size(I,3)
            for i=1:size(I,1)
                for j=1:size(I,2)
                    suma=0;
                    rmask=1;
                    cmask=1;
                    for r=(i-lambda):(i+lambda)
                        for c=(j-lambda):(j+lambda)
                            existe=false;
                            if((r>0)&&(r<=nr))
                               if((c>0)&&(c<=nc))
                                   existe=true;
                               end
                            end
                            if (existe)
                                suma=suma+(I(r,c,canal)*mascara(rmask,cmask));
                            end
                            cmask=cmask+1;
                        end
                        rmask=rmask+1;
                        cmask=1;
                    end
                    G(i,j,canal)=suma;
                end
            end
        end
    else
        for canal=1:size(I,3)
            for i=1:size(I,1)
                for j=1:size(I,2)
                    suma=0;
                    rmask=1;
                    cmask=1;
                    for r=(i-lambda):(i+lambda)
                        for c=(j-lambda):(j+lambda)
                            existe=false;
                            if((r>0)&&(r<=nr))
                               if((c>0)&&(c<=nc))
                                   existe=true;
                               end
                            end
                            if (existe)
                                suma=suma+(I(r,c,canal)*mascara(rmask,cmask));
                            else
                                suma=suma+(I(i,j,canal)*mascara(rmask,cmask));
                            end
                            cmask=cmask+1;
                        end
                        rmask=rmask+1;
                        cmask=1;
                    end
                    G(i,j,canal)=suma;
                end
            end
        end
    end
end