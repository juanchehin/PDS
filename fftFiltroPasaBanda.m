% N=16
Fs = 4400;                                          % Sampling Frequency
Fn = Fs/2;                                          % Nyquist Frequency

n = 3;    % orden 
Rp = 0.5;    % ripple
Wn = [250 2000]/Fn;    % rango de frecuencia para pasa bajo normalizado

[N,D] = cheby1(n,Rp,Wn,'bandpass');
 
% sys=tf(N,D,0.5,'variable','z^-1');
 
X=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
 
y=filter(N,D,X);
[h]=fft(y);

plot(abs(h));
