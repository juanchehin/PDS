Fs = 4400;   
Fn = Fs/2;   
 
n = 3; Rp = 0.5;
Wn = [250 2000]/Fn;
 
[b a]=cheby1(n,Rp,Wn,'bandpass')
[h,w]=freqs(b,a)
plot(w,abs(h))
