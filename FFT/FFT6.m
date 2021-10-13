Fs = 44000;  
Fn = Fs/2;    
 
n = 3; Rp = 0.5;
Wn = [250 2000]/Fn;

[N,D] = cheby1(n,Rp,Wn,'bandpass');
 
sys=tf(N,D,0.5,'variable','z^-1');
 
X=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
 
y=filter(N,D,X);
[h]=fft(y);
 
plot(abs(h));
