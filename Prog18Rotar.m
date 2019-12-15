clc;
close all;
clear all;

I=imread('C:\Users\usuario\Documents\JuanElGalan\img\ve.jpg');

tic; 
[IRot1, IBand1]=rotar(I,33);
[IRot2, IBand2]=rotar(I,137);
[IRot3, IBand3]=rotar(I,256);
toc;
[IRot1R, IBand1, noPixeles1]=rellenarImg(IRot1, IBand1, 1);
[IRot2R, IBand2, noPixeles2]=rellenarImg(IRot2, IBand2, 1);
[IRot3R, IBand3, noPixeles3]=rellenarImg(IRot3, IBand3, 1);

fprintf('=========================================================\n');
total1 = size(IRot1,1)*size(IRot1,2);
fprintf('Imagen 1 (%d, %d)\n', size(IRot1,1),size(IRot1,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',...
    noPixeles1, (noPixeles1/total1)*100);

fprintf('=========================================================\n');
total2 = size(IRot2,1)*size(IRot2,2);
fprintf('Imagen 1 (%d, %d)\n', size(IRot2,1),size(IRot2,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',...
    noPixeles2, (noPixeles2/total2)*100);

fprintf('=========================================================\n');
total3 = size(IRot3,1)*size(IRot3,2);
fprintf('Imagen 1 (%d, %d)\n', size(IRot3,1),size(IRot3,2));
fprintf('Pixeles recuperados %d (%7.5f)\n',...
    noPixeles3, (noPixeles3/total3)*100);


imwrite(IRot1,'C:\Users\usuario\Documents\JuanElGalan\img\Rot1.jpg');
imwrite(IRot2,'C:\Users\usuario\Documents\JuanElGalan\img\Rot2.jpg');
imwrite(IRot3,'C:\Users\usuario\Documents\JuanElGalan\img\Rot3.jpg');



figure;
image(I); title('Imagen Original');

figure;
subplot(1,2,1);image(IRot1); title('33°');
subplot(1,2,2);imagesc(IBand1);title('Bandera');colormap(gray);
subplot(1,2,1);image(IRot1R); title('33R°');
figure;
subplot(1,2,1);image(IRot2); title('137°');
subplot(1,2,2);imagesc(IBand2);title('Bandera');colormap(gray);
subplot(1,2,1);image(IRot2R); title('137R°');
figure;
subplot(1,2,1);image(IRot3); title('256°');
subplot(1,2,2);imagesc(IBand3);title('Bandera');colormap(gray);
subplot(1,2,1);image(IRot3R); title('256R°');
toc;