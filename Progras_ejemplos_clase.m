s = tf("s");

%{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Transformar hacia FCC
A = [1 2 1;
    0 1 3;
    1 1 1]
B = [1;
    0;
    1]

M = ctrb(A, B)

W = [-1 -3 1;
    -3 1 0;
    1 0 0]

%ctrb = M = [B AB A^2B]

det(M) %Averiguo si el sistema es controlable con este determinante (diferente de cero)

P = M*W


A_techo = inv(P)*A*P

B_techo = inv(P)*B

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


s = zpk("s")
%G = 20*(s-1)/((s+3)*(s^2+4))


%G = 1/((s+3)*(s^2+4)^2)

G = 10/(s^4+30*s^3+s^2+10*s)
step(G)


%Progrmación del error para el ejemplo 4 de D:\OneDrive - Estudiantes ITCR\TEC\Semetre 11\
%Análisis\Archivos Matlab\02Ejemplos Ess

s = zpk("s")

G = 1/(s^2*(s+12));

H = 10*(s+1)/(s+5)

step(G)


%Progra del ejercicio 1, presentación 17
s=tf("s")
m = 9.6300
k = 30
b = 15.4986
G = (1/m)/(s^2+(b/m)*s+(k/m))
step (G)


kn = 0.02;
km = 87379;
J = 25;
s = tf("s");
T = (km/J)/(s^2+(km*kn/J)*s+(km/J))
step(T)

sisotool(T)

G = 1/((s+1)*s+2)
sisotool(G)

GH = 1/(s^3+(3*s^2)+(2*s))
rlocus(GH)
hold %Para poner ambas curvas en un mismo diagrama
rlocus(-GH)

%}


