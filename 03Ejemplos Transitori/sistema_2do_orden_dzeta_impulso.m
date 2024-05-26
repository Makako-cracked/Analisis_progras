%Grafica de la respuesta escalon de un sistema de segundo orden estandar
%con wn=1 y dzeta=0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.5, 2

t=0:0.1:10;
dzeta=[0 0.2 0.4 0.6 0.8 1.0 1.5 2];
    for n=1:1
        num=[0 1 0];
        den=[1 2*dzeta(n) 1];
        [y(1:101,n),x,t]=step(num,den,t);
    end
%grafico
plot(t,y);
grid ;
title('Respuesta a un escalon unitario con \omega_n=1 y \zeta= 0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.5, 2')
xlabel('tiempo (s)')
ylabel('Respuesta del sistema')
%text(3.7,1.9,'\zeta=0')
%text(3.5,1.53,'\zeta=0.2')
%text(3.5,1.3,'\zeta=0.4')
%text(3.5,1.12,'\zeta=0.6')
%text(3.5,1.02,'\zeta=0.8')
%text(3.5,0.92,'\zeta=1.0')
%text(3.5,0.76,'\zeta=1.5')
%text(3.5,0.65,'\zeta=2.0')
