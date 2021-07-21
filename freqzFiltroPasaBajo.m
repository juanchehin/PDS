wp =[0.20 0.250]    % frecuencia de 
[B A]=cheby1(3,0.1,wp,'bandpass')
[h,w]=freqz(B,A)
plot(w,abs(h))

% https://es.mathworks.com/help/signal/ref/cheby1.html#bucqk89-Wp