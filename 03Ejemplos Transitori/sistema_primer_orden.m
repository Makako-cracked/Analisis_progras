%Respuesta a un escalon unitario de un sistema de primer orden
%Introducimos el numerador y denominador de la funcion de transferencia
%a lazo cerrado G(s)=1/(s+1)
clear all;close all; clc;
num=[0 1]
den=[1 1]
%graficamos el escalon unitario
step(1,1)
%graficamos la respuesta del sistema
hold
step(num,den)
grid
title('Respuesta a un escalon unitario')

%Respuesta de un sistema de primer orden a una entrada rampa unitaria
%La respuesta se obtiene graficando la respuesta a un escalon unitario de
%G(s)/s
num_ramp=[0 0 1]
den_ramp=[1 1 0]
%graficamos la rampa unitaria R(s)=1/s^2
figure
step([0 1],[1 0])
%graficamos la respuesta del sistema a la entrada rampa
hold
step(num_ramp,den_ramp,10)
grid
title('Respuesta a una rampa unitaria')

%Respuesta de un sistema de primer orden a una entrada impulso unitario
%La respuesta se obtiene graficando la respuesta a un escalon unitario de
%s*G(s)
num_imp=[1 0]
den_imp=[1 1]
%Recordar que para el impulso unitario R(s)=1
%graficamos la respuesta del sistema a la entrada rampa
figure
step(num_imp,den_imp)
grid
title('Respuesta a un impulso unitario')

