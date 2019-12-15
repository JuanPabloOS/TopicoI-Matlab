clc;
close all;
clear all;

I=imread('C:\Users\jpoes\Desktop\JuanElGalan\img\valentin.jpg');
tic;
[IAfin1, IBand1]=transAfin(I,33,0.75,0.80,50,75);
[IAfin2, IBand2]=transAfin(I,137,1.15,1.20,50,75);
[IAfin3, IBand3]=transAfin(I,256,1.55,1.70,50,75);
toc;

[IAfin1R, IBand1R, noPixeles1]=rellenarImg(IAfin1, IBand1, 1);
[IAfin2R, IBand2R, noPixeles2]=rellenarImg(IAfin2, IBand2, 1);
[IAfin3R, IBand3R, noPixeles3]=rellenarImg(IAfin3, IBand3, 1);

fprintf('=========================================================\n');
total1 = size(IAfin1R,1)*size(IAfin1R,2);
fprintf('Imagen 1 (%d, %d)\n', size(IAfin1R,1),size(IAfin1R,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',...
    noPixeles1, (noPixeles1/total1)*100);

fprintf('=========================================================\n');
total2 = size(IAfin2R,1)*size(IAfin2R,2);
fprintf('Imagen 1 (%d, %d)\n', size(IAfin2R,1),size(IAfin2R,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',...
    noPixeles2, (noPixeles2/total2)*100);

fprintf('=========================================================\n');
total3 = size(IAfin3R,1)*size(IAfin3R,2);
fprintf('Imagen 1 (%d, %d)\n', size(IAfin3R,1),size(IAfin3R,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',...
    noPixeles3, (noPixeles3/total3)*100);

imwrite(IAfin1R,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\IAfin1R.jpg');
imwrite(IAfin2R,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\IAfin2R.jpg');
imwrite(IAfin3R,'C:\Users\jpoes\Desktop\JuanElGalan\salidas\IAfin3R.jpg');

figure;
image(I); title('Imagen Original');

figure;
subplot(2,2,1);image(IAfin1); title('angulo=33 sX=0.75 sY=0.80 dX=50 dY=75');
subplot(2,2,2);imagesc(IBand1);title('Bandera');colormap(gray);
subplot(2,2,3);image(IAfin1R); title('33R°');
figure;
subplot(2,2,1);image(IAfin2); title('angulo=137 sX=1.15 sY=1.20 dX=50 dY=75°');
subplot(2,2,2);imagesc(IBand2);title('Bandera');colormap(gray);
subplot(2,2,3);image(IAfin2R); title('137R°');
figure;
subplot(2,2,1);image(IAfin3); title('angulo=256 sX=1.55 sY=1.70 dX=50 dY=75°');
subplot(2,2,2);imagesc(IBand3);title('Bandera');colormap(gray);
subplot(2,2,3);image(IAfin3R); title('256R°');
toc;