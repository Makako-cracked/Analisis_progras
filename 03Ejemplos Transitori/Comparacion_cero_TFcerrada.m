%Grafica de la respuesta escalon de un sistema de segundo orden estandar
%con wn=1 y dzeta=0.5 y adicionando un cero en la funcion de transferencia
%a lazo cerrado

clear all;
t=linspace(0,10,100);
dzeta= 0.5;
wn=1;
Tz= [0 1 3 6 10];
s=zpk('s');

    for n=1:5
        sys1=wn^2*(1+Tz(n)*s)/(s^2+2*dzeta*wn*s+wn^2);
        [y(1:100,n),t]=step(sys1,t);
    end
%grafico
plot(t,y,'linewidth',2);
grid ;
% 
title('Respuesta a un escalon unitario con \omega_n=1 y \zeta=  0.5')
xlabel('tiempo (s)')
ylabel('Respuesta del sistema')

text(3,1,'Tz=0')
text(2.5,1.35,'Tz=1')
text(1.5,2.25,'Tz=3')
text(1.5,3.8,'Tz=6')
text(2,5.2,'Tz=10')
