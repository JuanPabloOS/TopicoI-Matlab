%% Extrae y plotea el perfil renglón/columna de una imagen
%%  ENtradas:
%% I: imagen de entrada
%% numero: numero de renglón/columna
%% tipo: tipo de perfil 1-renglón 2-columna
%% bandera: indica si se requiere plotear

function [ perfil ] = plotPerfil(I, numero, tipo, bandera)
    perfil = 0;
    if (tipo==1)
        perfil=I(numero,:,:);
        perfilOrd=zeros(size(perfil,2),size(perfil,3));
        for i=1:size(perfil,3)
            perfilOrd(:,i)=perfil(1,:,i);           
        end;        
    else
        perfil=I(:,numero,:);
        perfilOrd=zeros(size(perfil,1),size(perfil,3));
        for i=1:size(perfil,3)
            perfilOrd(:,i)=perfil(:,1,i);
        end;
   end;
   
   perfil=perfilOrd;
   if(bandera)
       if(tipo==1)
           titulo='Perfil renglón';
           titX='Columnas';
       else
           titulo='Perfil Columna',
           titX='Renglones';
       end
       figure;
       if (size(perfil,2)>1)
           plot(perfil(:,1), 'r', 'Linewidth', 3); hold on;
           plot(perfil(:,2), 'g', 'Linewidth', 3); hold on;
           plot(perfil(:,3), 'b', 'Linewidth', 3); hold off;
       else
           plot(perfil(:,1), 'm', 'Linewidth', 3);
       end
       title(titulo);xlabel(titX);ylabel('Intensidad');
       axis([0 size(perfil,1) 0 300]); grid on;
   end
           
        