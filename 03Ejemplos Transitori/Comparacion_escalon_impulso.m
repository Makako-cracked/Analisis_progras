%Grafica de la respuesta escalon de un sistema de segundo orden estandar
%con wn=1 y dzeta=0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.5, 2
clear all; clc;close all;

t=linspace(0,10,101);

dzeta= 0.4;
%dzeta= 1;
%dzeta= 1.4;
num=[0 0 1];
den=[1 2*dzeta 1];
[y(1:101,1),x,t]=step(num,den,t);% tener cuidado con el tamaño del vector t

%grafico
plot(t,y,'linewidth',2);
%grid ;
title('Respuesta a un escalon e impulso unitario con \omega_n=1 y \zeta=  0.4')
xlabel('tiempo (s)')
ylabel('Respuesta del sistema')

text(3.5,1.3,'\zeta=0.4')

num=[0 1 0];
den=[1 2*dzeta 1];
[y(1:101,1),x,t]=step(num,den,t);

%grafico
hold
plot(t,y,'linewidth',2);
grid ;
