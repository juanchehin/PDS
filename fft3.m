A=[1 -4.366438343030480 8.479802409952892 -9.382616193540438 6.248829682624491 -2.375072016198662 0.404602802156207]; %% -- Numerador
B=[0.013823759679056 0 -0.041471279037168 0 0.041471279037168 0 -0.013823759679056]; %% -- Denominador
 
sys = tf(A,B,0.1,'variable','z')
 
x = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]
 
y=filter(A,B,x)  %% -- Filtra datos de entrada(x) mediante la funcion                            			%% --	transferencia definida por numerador(A) y 					%% -- denominador(B)
 
n=32; %% -- Número de muestras
fs=44000; %% -- Frecuencia de muestreo
[h]=fft(y);
plot(abs(h),'r');
