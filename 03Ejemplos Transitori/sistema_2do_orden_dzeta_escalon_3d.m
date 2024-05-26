%Grafica de la respuesta escalon de un sistema de segundo orden estandar
%con wn=1 y dzeta=0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.5, 2

clear all
t=0:0.1:10;
dzeta= [0 0.2 0.4 0.6 0.8 1.0 1.5 2];
    for n=1:8
        num=[0 0 1];
        den=[1 2*dzeta(n) 1];
        [y(1:101,n),x,t]=step(num,den,t);
    end
%grafico
%mesh(t,dzeta,y');
surf(t,dzeta,y');
title('Respuesta tridimensional a un escalon unitario con \omega_n = 1');
xlabel('tiempo');
ylabel('\zeta');
zlabel('Respuesta');