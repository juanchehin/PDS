[N,D] = cheby1(3,0.1,[0.250 0.2000],'bandpass');
 
sys=tf(N,D,0.1,'variable','z^-1');
 
X=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
 
y=filter(N,D,X);
[h]=fft(y);
plot(abs(h));
