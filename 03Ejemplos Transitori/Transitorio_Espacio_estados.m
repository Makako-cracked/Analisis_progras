
%Respuesta al escalon para sistemas definidos en espacio de estados

%Este sistema tiene dos entradas (u1 y u2) y dos salidas (y1 y y2)

% x'=Ax+Bu
% y=Cx+Du

clear all; clc
close all;

%introducimos las matrices A, B, C, D
A=[-1 -1;6.5 0];
B=[1 1; 1 0];
C=[1 0;0 1];
D=[0 0;0 0];

%Graficamos las cuatro curvas de respuesta escalon 
step(A,B,C,D);
grid;
title('Respuesta a un escalon')
%Respuesta a un impulso
figure;
impulse(A,B,C,D);
grid;
title('Respuesta a un impulso')

% Para representar la respuesta a un escalon cuando la entrada es u1
figure;
step(A,B,C,D,1);
grid;
title('Respuesta a un escalon: u1 (u2=0)')
% Para representar la respuesta a un escalon cuando la entrada es u2
figure;
step(A,B,C,D,2);
grid;
title('Respuesta a un escalon: u2 (u1=0)')