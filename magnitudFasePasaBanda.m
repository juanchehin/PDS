Fs = 4400;                                          % Sampling Frequency
Fn = Fs/2;                                          % Nyquist Frequency

n = 3;    % orden 
Rp = 0.5;    % ripple
Wn = [250 2000]/Fn;    % rango de frecuencia para pasa bajo normalizado

[b a]=cheby1(n,Rp,Wn,'bandpass')
[h,w]=freqz(b,a)
plot(w,abs(h))
