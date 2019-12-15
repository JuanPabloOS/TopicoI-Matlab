clc;
close all;
clear all;


A=[12 13 14; 21 33 24; 3 4 5];
B=[23 34 21 45 5; ...
    12 12 4 5 6;...
    21, 34, 52, 32, 21;...
    21 42 12 12 2;...
    31 21 56 21 21];

n = input('Set a number');
if (n>0)
    output = 1;
    for i=1:n
        output = output*i;
    end
    disp(output);
else
    disp('Valor por default')
end
fprintf('n= %d \n', n);
fprintf('n!= %d \n', output);