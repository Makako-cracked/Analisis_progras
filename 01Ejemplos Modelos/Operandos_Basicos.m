% Operandos en Matlab que pueden ser de ayuda en el analisis de sistemas lineales

%Manejo de matrices
A= [1 1 2;3 4 0; 1 2 5]

phi=expm(A) %Matriz exponencial expm(A)= I + A + (A^2)/2 + (A^3)/3 + ....

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Norma
x=[2 3 6]
norm(x) %La norma de una matriz es un escalar que da alguna medida del tamanno de la matriz
        %en este caso norm(x)=sum(abs(x).^2)^0.5

%Valores y Vectores propios

