clc;
close all;
clear all;

x=0:0.1:100;
logar10=log10(x);
logar=log(x);
coseno = cos(x);

figure;
plot(x,logar10,'b','Linewidth',3);
hold on;
plot(x,logar,'r','Linewidth',3);
plot(x,coseno,'g','Linewidth',5);
hold off;

title ('Función matemática');
xlabel('0 \leq x \leq 100');
ylabel('f(x)');
grid on;
leg1=legend({'log10','log','cos'},'Location','NorthWest');
