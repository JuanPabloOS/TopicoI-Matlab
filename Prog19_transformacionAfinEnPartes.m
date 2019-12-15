clc;
close all;
clear all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I1 = imread('C:\Users\usuario\Documents\JuanElGalan\img\ve.jpg');

%%Llamamos nuestra funcion de escalamiento
tic;
%%Desplazamos nuestra imagen
IDespla1 = desplazar(I1, 50, 75);
%%Rotamos nuestra imagen
[IRot1, IBand1a] = rotar(IDespla1, 33);
%%Rellenamos nuestra imagen IRot1
[ IRot1R, IBand1aR, noPixeles1a ] = rellenarImg( IRot1, IBand1a, 1 );
%%Escalamos nuestra imagen
[ IAfin1, IBand1b] = zoomSxSy( IRot1R, 0.75, 0.80);
%%Volvemos a rellenas
[ IAfin1R, IBand1bR, noPixeles1b ] = rellenarImg( IAfin1, IBand1b, 1 );


%%Rotamos nuestra imagen
[IRot2, IBand2a] = rotar(IDespla1, 137);
%%Rellenamos nuestra imagen IRot1
[ IRot2R, IBand2aR, noPixeles2a ] = rellenarImg( IRot2, IBand2a, 1 );
%%Escalamos nuestra imagen
[ IAfin2, IBand2b] = zoomSxSy( IRot2R, 0.75, 0.80);
%%Volvemos a rellenas
[ IAfin2R, IBand2bR, noPixeles2b ] = rellenarImg( IAfin2, IBand2b, 1 );


%%Rotamos nuestra imagen
[IRot3, IBand3a] = rotar(IDespla1, 256);
%%Rellenamos nuestra imagen IRot1
[ IRot3R, IBand3aR, noPixeles3a ] = rellenarImg( IRot3, IBand3a, 1 );
%%Escalamos nuestra imagen
[ IAfin3, IBand3b] = zoomSxSy( IRot3R, 0.75, 0.80);
%%Volvemos a rellenas
[ IAfin3R, IBand3bR, noPixeles3b ] = rellenarImg( IAfin3, IBand3b, 1 );
toc;

%%Obtenemos la cantidad de pixeles recuperados
noPixeles1 = noPixeles1a + noPixeles1b;
noPixeles2 = noPixeles2a + noPixeles2b;
noPixeles3 = noPixeles3a + noPixeles3b;

fprintf('=============================================================\n');
total1 = size(IAfin1, 1) * size(IAfin1, 2);
fprintf('Imagen 1 (%d, %d)\n', size(IAfin1, 1), size(IAfin2, 2));
fprintf('Pixeles recuperados %d (%7.5f porcentaje)\n', noPixeles1, (noPixeles1/total1)*100);

total2 = size(IAfin2, 1) * size(IAfin2, 2);
fprintf('Imagen 2 (%d, %d)\n', size(IAfin2, 1), size(IAfin2, 2));
fprintf('Pixeles recuperados %d (%7.5f porcentaje)\n', noPixeles2, (noPixeles2/total2)*100);

total3 = size(IAfin3, 1) * size(IAfin3, 2);
fprintf('Imagen 3 (%d, %d)\n', size(IAfin3, 1), size(IAfin3, 2));
fprintf('Pixeles recuperados %d (%7.5f porcentaje)\n', noPixeles3, (noPixeles3/total3)*100);

fprintf('=============================================================\n');


%%Guardamos nuestras imagenes sin rellenar
imwrite(IAfin1, 'C:\Users\usuario\Documents\JuanElGalan\img\IAfin1p.jpg');
imwrite(IAfin2, 'C:\Users\usuario\Documents\JuanElGalan\img\IAfin2p.jpg');
imwrite(IAfin3, 'C:\Users\usuario\Documents\JuanElGalan\img\IAfin3p.jpg');

%%Guardamos nuestras imagenes rellenadas
imwrite(IAfin1R, 'C:\Users\usuario\Documents\JuanElGalan\img\IAfin1pR.jpg');
imwrite(IAfin2R, 'C:\Users\usuario\Documents\JuanElGalan\img\IAfin2pR.jpg');
imwrite(IAfin3R, 'C:\Users\usuario\Documents\JuanElGalan\img\IAfin3pR.jpg');

fprintf('Se guardaron las imagenes generadas\n');toc;

%%Desplegamos nuestras imagenes
figure;
image(I1); title('Imagen original');

figure;
subplot(2,2,1); image(IAfin1); title('Rotacion 33°, sX = 0.75, sY = 0.80, dX = 50, dY = 75');
                %%Nuetra bandera es de un solo canal por los que ocupamos
                %%imagesc
subplot(2,2,2); imagesc(IBand1b); colormap(gray); title('Bandera');
subplot(2,2,3); imagesc(IAfin1R); colormap(gray); title('Rellenada');
subplot(2,2,4); imagesc(IBand1bR); colormap(gray); title('Bandera');

figure;
subplot(2,2,1); image(IAfin2); title('Rotacion 137°, sX = 1.15, sY = 1.20, dX = 50, dY = 75');
subplot(2,2,2); imagesc(IBand2b); colormap(gray); title('Bandera');
subplot(2,2,3); image(IAfin2R); colormap(gray); title('Rellenada');
subplot(2,2,4); imagesc(IBand2bR); colormap(gray); title('Bandera');

figure;
subplot(2,2,1); image(IAfin3); title('Rotacion 256°, sX = 1.55, sY = 1.70, dX = 50, dY = 75');
subplot(2,2,2); imagesc(IBand3b); colormap(gray); title('Bandera');
subplot(2,2,3); image(IAfin3R); colormap(gray); title('Rellenada');
subplot(2,2,4); imagesc(IBand3bR); colormap(gray); title('Bandera');

