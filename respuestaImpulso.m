Fs = 4400;                                          % Sampling Frequency
Fn = Fs/2;                                          % Nyquist Frequency

n = 3; Rp = 0.5;
Wn = [250 2000]/Fn;
[b,a] = cheby1(n,Rp,Wn);
[y,t] = impz(b,a,500); stem(t,y)