%Grafica de la respuesta escalon de un sistema de segundo orden estandar
%con wn=1 y dzeta= 0.4, adicionando un polo en la funcion de transferencia
%a lazo abierto

clear all;
t=linspace(0,20,100);
dzeta= 0.4;
wn=1;
Tp= [0.5 0 1 2];
    for n=1:4
        num=[0 0 wn^2];
        den=[Tp(n) (1+2*dzeta*wn*Tp(n)) 2*dzeta*wn wn^2];
        [y(1:100,n),x,t]=step(num,den,t);
    end
%grafico
plot(t,y,'linewidth',2);
grid ;

title('Respuesta a un escalon unitario con \omega_n=1 y \zeta=  0.4')
xlabel('tiempo (s)')
ylabel('Respuesta del sistema')

text(4,1.55,'Tp=0.5')
text(3.5,1.3,'Tp=0')
text(4.5,1.75,'Tp=1')
text(5.7,1.9,'Tp=2')%raices en este caso estan casi sobre el eje "jw" por eso se observa la oscilacion 