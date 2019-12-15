clc;
close all;
clear all;

valmax=25;
A=round(rand(15)*valmax);
B=magic(15);

maximo1 = max(A(:));
maximo2 = max(B(:));

letrero=sprintf('x [0 %5d]<-A [0 %5d]<- \in A', Mmaximo1);

figure;
surf(A);
title('Matriz aleatoria y mágica');
xlabel('x');
ylabel('y');
zlabel('z');
colormap(hsv);
colorbar;

hold on;
surf(B+valmax);
hold off;

% jet
% hsv
% hot
% cool
% spring
% summer
% autumn
% winte
% gray
% bone