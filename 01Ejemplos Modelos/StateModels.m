%Modelos en espacio de estados
clear all;clc; close all;
%Formulacion en el espacio de estados de sistemas basados en su funcion de
%transferencia

s=[0 2 6]   %numerador de la funcion de transferencia
d=[1 1 3 2]   %denominador de la funcion de transferencia

%Matlab produce las matrices A,B,C y D a partir de los datos anteriores

%Modelo de estados a partir de funcion de transferencia

[A,B,C,D]=tf2ss(s,d)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%------------------------------------------%%%%%%%%%%%%%%
%Transformacion del espacio de estados a la funcion de transferencia

A1=[0 1 0; 0 0 1; -10 -5 -6]
B1=[0;10;-50]
C1=[1 0 0]
D1=0

[num,den]=ss2tf(A1,B1,C1,D1)
