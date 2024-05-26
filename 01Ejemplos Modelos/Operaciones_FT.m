%Introduccion de funciones de transferencia en el espacio de trabajo
%
%Una opcion es utilizando la funcion tf(num,den)
num1=[0 0 10]
den1=[1 2 10]
num2=[0 5]
den2=[1 5]
G1=tf(num1,den1)
G2=tf(num2,den2)

%Frecuentemente es necesario calcular funciones de transferencia en cascada
%o paralelo o de sistemas realimentados

%Sistemas en cascada
Gc1=G1*G2
%o
Gc2=series(G1,G2)
%Sistemas en paralelo
Gp1=G1+G2
%o
Gp2=parallel(G1,G2)
%Sistema realimentado
Gr=feedback(G1,G2)

