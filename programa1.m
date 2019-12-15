clc;
clear all;
close all;
sx1=0.75;
sy1=0.70;
angulo=33;
sx2=0.75;
sy2=0.80;
dx=50;
dy=75;
ka=-3;
kd=5;

I = imread('C:\Users\jpoes\Desktop\JuanElGalan\img\valentin.jpg');

fprintf('Transformando imagen...\n');
tic;
[dinamita1,IBand1]=dinamita(I,0.75,0.70,20,0.75,0.80,50,75,4,6);toc;
tic;
[dinamita2,IBand2]=dinamita(I,0.70,0.75,25,0.80,0.75,45,70,-4,6);toc;
tic;
[dinamita3,IBand3]=dinamita(I,0.80,0.85,30,0.60,0.35,40,65,-4,-6);toc;
tic;
[dinamita4,IBand4]=dinamita(I,0.85,0.80,35,0.65,0.40,35,60,4,-6);toc;
tic;
[dinamita5,IBand5]=dinamita(I,0.90,0.60,40,0.50,0.50,30,55,6,-4);toc;

fprintf('Rellenando...\n');
tic;
[dinamita1R, IBand1R, noPixeles1]=...
    rellenarImg(dinamita1,IBand1,1);toc;
tic;
[dinamita1R, IBand1R, noPixeles1]=...
    rellenarImg(dinamita1,IBand1,1);toc;
tic;
[dinamita1R, IBand1R, noPixeles1]=...
    rellenarImg(dinamita1,IBand1,1);toc;
tic;
[dinamita1R, IBand1R, noPixeles1]=...
    rellenarImg(dinamita1,IBand1,1);toc;
tic;
[dinamita1R, IBand1R, noPixeles1]=...
    rellenarImg(dinamita1,IBand1,1);toc;
tic;
[dinamita1R, IBand1R, noPixeles1]=...
    rellenarImg(dinamita1,IBand1,1);toc;

fprintf('=========================================================\n');
total1 = size(dinamita1R,1)*size(dinamita1R,2);
fprintf('Imagen dinamita1 (%d, %d)\n', size(dinamita1R,1),size(dinamita1R,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles1, (noPixeles1/total1)*100);
fprintf('=========================================================\n');
total2 = size(dinamita2R,1)*size(dinamita2R,2);
fprintf('Imagen dinamita1 (%d, %d)\n', size(dinamita2R,1),size(dinamita2R,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles2, (noPixeles2/total2)*100);
fprintf('=========================================================\n');
total3 = size(dinamita3R,1)*size(dinamita3R,2);
fprintf('Imagen dinamita1 (%d, %d)\n', size(dinamita3R,1),size(dinamita3R,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles3, (noPixeles3/total3)*100);
fprintf('=========================================================\n');
total4 = size(dinamita4R,1)*size(dinamita4R,2);
fprintf('Imagen dinamita1 (%d, %d)\n', size(dinamita4R,1),size(dinamita4R,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles4, (noPixeles4/total4)*100);
fprintf('=========================================================\n');
total5 = size(dinamita5R,1)*size(dinamita5R,2);
fprintf('Imagen dinamita1 (%d, %d)\n', size(dinamita5R,1),size(dinamita5R,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',noPixeles5, (noPixeles5/total5)*100);
figure;
subplot(2,2,1);image(dinamita1);title('Dinamita1');
subplot(2,2,2);image(dinamita2);title('Dinamita2');
subplot(2,2,3);image(dinamita3);title('Dinamita3');
subplot(2,2,4);image(dinamita4);title('Dinamita4');
figure;
image(dinamita5);title('Dinamita5');
fprintf('Guardando resultados');
imwrite(dinamita1R,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\dinamita1FUNCION.jpg')
imwrite(dinamita2R,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\dinamita2FUNCION.jpg')
imwrite(dinamita3R,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\dinamita3FUNCION.jpg')
imwrite(dinamita4R,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\dinamita4FUNCION.jpg')
imwrite(dinamita5R,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\dinamita5FUNCION.jpg')
fprintf('Listo');