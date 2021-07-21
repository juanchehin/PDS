A=[]; %% -- Numerador
B=[]; %% -- Denominador
 
sys = tf(A,B,0.1,'variable','z');
 
x = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
 
y = filter(A,B,x);  %% -- Filtra datos de entrada(x) mediante la funcion                            			%% --	transferencia definida por numerador(A) y 					%% -- denominador(B)
 
n=32; %% -- Número de muestras
fs=44000; %% -- Frecuencia de muestreo
[h]=fft(y);
plot(F,abs(h),'r');
