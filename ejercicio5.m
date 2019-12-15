clc;
close all;
clear all;

valmax=20;

A=round(rand(4)*valmax);
B=round(rand(4)*valmax);
C=round(rand(4,5)*valmax);

%% multiplica de uno por uno
%%disp(A.^2);
% disp(eye(2));
% disp(eye(2,3));
% 
% disp(ones(2));
% disp(ones(2,3));
% 
% disp(zeros(2));
% disp(zeros(2,3));


% disp(size(A));
% disp(size(B));
% disp(size(C));
% disp(A);

vertical=vertcat(A,B);
horizontal=horzcat(A,B);
disp('=========');
disp(vertical);
disp('=========');
disp(horizontal);
disp('=========');
