%Grafica de la respuesta escalon de un sistema de segundo orden estandar
%con wn=1 y dzeta=0.5 y adicionando un polo en la funcion de transferencia
%a lazo cerrado

clear all;
figure
t=linspace(0,15,100);
dzeta= 0.5;
wn=1;
Tp= [0 0.5 1 2 4];
s=zpk('s');

    for n=1:4
        sys1=wn^2/((s^2+2*dzeta*wn*s+wn^2)*(1+Tp(n)*s));
        [y(1:100,n),t]=step(sys1,t);
    end
%grafico
plot(t,y,'linewidth',2);
grid ;
% 
title('Respuesta a un escalon unitario con \omega_n=1 y \zeta=  0.5')
xlabel('tiempo (s)')
ylabel('Respuesta del sistema')

text(3,1.2,'Tp=0')
text(4.5,1.15,'Tp=0.5')
text(5.5,1.1,'Tp=1')
text(5.5,0.97,'Tp=2')