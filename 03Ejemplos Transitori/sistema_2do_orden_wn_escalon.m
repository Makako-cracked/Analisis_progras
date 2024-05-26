%Grafica de la respuesta escalon de un sistema de segundo orden estandar
%con wn^2= 0.5, 1, 2 y dzeta= 0.4

clear all;
t=linspace(0,10,101)
wn2= [0.5 1.0 2.0];
    for n=1:3
        num=[0 0 wn2(n)];
        den=[1 2*0.4*sqrt(wn2(n)) wn2(n)];
        [y(1:101,n),x,t]=step(num,den,t);
    end

%grafico
figure
plot(t,y);
grid ;
title('Respuesta a un escalon unitario con \omega_n ^2 = 0.5, 1, 2 y \zeta= 0.4')
xlabel('tiempo (s)')
ylabel('Respuesta del sistema')
text(5,1.3,'\omega_n ^2 =0.5')
text(3.4,1.3,'\omega_n ^2 =1.0')
text(2.3,1.3,'\omega_n ^2 =2.0')
