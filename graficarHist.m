%% Graficar el histograma
%% Entradas
%% Hist - Matriz del histograma
%%    Primer indice - canal de color 1-R, 2-G. 3-B
%%    Segundo indice - Valor de intensidad
%%    Tercer indice  - 1 Frecuencia
%%                   - 2 Frecuencia Relativa
%%                   - 3 Frec. relat. acumulada
%%    opcion:  Dato ploteado, corresponde al indice del 
%%             histograma
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [  ] = graficarHist(Hist, opcion)
   valmax=size(Hist,2)-1;
   x=0:valmax;
   figure;
   hold on;
   switch opcion
       case 1
            if (size(Hist,1)>1) %% RGB
               plot(x,Hist(1,:,opcion),'r','Linewidth',3);
               plot(x,Hist(2,:,opcion),'g','Linewidth',3);
               plot(x,Hist(3,:,opcion),'b','Linewidth',3);
               maximo=max((max(Hist(:,:,opcion))));      
           else  %% gris
               plot(x,Hist(1,:,opcion),'k','Linewidth',3);
               maximo=(max(Hist(:,:,opcion)));
           end        
           title ('Histograma de Frecuencias'); 
           ylabel('Frecuencia');
       case {2, 3}
           if (size(Hist,1)>1) %% RGB
               plot(x,Hist(1,:,opcion)*100,'r','Linewidth',3);
               plot(x,Hist(2,:,opcion)*100,'g','Linewidth',3);
               plot(x,Hist(3,:,opcion)*100,'b','Linewidth',3);
               maximo=(max((max(Hist(:,:,opcion)))))*100;
           else  %% gris
               plot(x,Hist(1,:,opcion)*100,'k','Linewidth',3);
               maximo=(max(Hist(:,:,opcion)))*100;
           end          
           if (opcion==2)
              title ('Histograma de Frecuencias Relativas');
              ylabel('Frecuencia Rel. (%)');
           else 
              title ('Histograma de Frecuencias Relativas Acum.');
              ylabel('Frecuencia Rel. Acum. (%)');
           end
   end
   grid on;
   xlabel('Nivel de intensidad');
   axis([0, valmax, 0, maximo*1.03]);
end


