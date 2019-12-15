I =imread('C:\Users\jpoes\Desktop\JuanElGalan\img\valentin.jpg');
valmax=255;
tic;
s=generarRuido(I,valmax); toc;
image(s);