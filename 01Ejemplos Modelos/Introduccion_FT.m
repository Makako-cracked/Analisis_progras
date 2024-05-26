%Introduccion de funciones de transferencia en el espacio de trabajo
%Como introducir funciones de transferencia

%se recomienda ejecutar cada una de las secciones por aparte para 
%familiarizarse con las funciones

clear all;clc;
%hay varias opciones
%Primera opcion: Introducimos ceros, polos y ganancia
z=[-3]      %ceros de la funcion
p=[-1 -2]   %polos de la funcion
k=2         %ganancia

Gzpk=zpk(z,p,k)

%Segunda opcion: se puede introducir manualmente el numerador y el denominador
num=[0 2 6]
den=[1 3 2] % tomar en cuenta que los vectores son de igual tamanno
Gs1=tf(num,den)

%Tercera opcion: otra forma es intoduciendo la variable "s"
%si se desea observar la funcion de transferencia factorizada
s=zpk('s')
Gs2=(2*s+6)/(s^2+3*s+2)
%si se desea observar el numerador y el denominador de la funcion de
%transferencia como polinomios de "s"
s=tf('s')
Gs3=(2*s+6)/(s^2+3*s+2)

%A partir de los ceros y polos se puede obtener el numerador y el
%denominador de la funcion de transferencia sin factorizar

z=[-3]      %ceros de la funcion
p=[-1 -2]   %polos de la funcion
k=2         %ganancia
[num2,den2]=zp2tf(z,p,k)
Gs3=tf(num2,den2)

%A partir de la funcion de transferencia tambien se pueden obtener los
%ceros y polos de la funcion 
[z1,p1,k1]=tf2zp(num2,den2)

