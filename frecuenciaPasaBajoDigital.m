Fs = 4400;                                          % Sampling Frequency
Fn = Fs/2;                                          % Nyquist Frequency

n = 3; Rp = 0.5;
Wn = [200 2500]/Fn;

[b a]=cheby1(n,Rp,Wn,'bandpass')
[h,w]=freqz(b,a)
plot(w,abs(h))
