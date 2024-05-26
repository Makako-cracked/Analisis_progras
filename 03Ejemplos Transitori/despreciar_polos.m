% Comparacion al despreciar los polos insignificantes considerando la
% respuesta en estado estable

%Inicializacion del espacio de trabajo
clear all;close all; clc;

%Introducimos la funcion de transferencia original
s=zpk('s')
T1=20/(10*(s/10+1)*(s^2+2*s+2))
%graficamos la respuesta original
step(T1)

%Introducimos la funcion de transferencia despreciando el polo
%insignificante pero considerando la respuesta en estado estable
T2=20/(10*(s^2+2*s+2))
%graficamos para comparar respuestas
figure
step(T1,T2)
title('Comparacion de respuestas cuando se desprecia un polo insignificante')

%Introducimos la funcion de transferencia despreciando el polo
%insignificante sin ninguna otra consideracion
T3=20/(s^2+2*s+2)
%graficamos la respuesta
figure
step(T1,T3)
title('Comparacion de respuestas cuando no se considera la R./ en ss')