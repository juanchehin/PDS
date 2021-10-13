fh = 250;

epsilon = sqrt(10.^(0.5/10)-1);

f0 = fh/cosh(1/3*acosh(1/epsilon));

[b,a]=cheby1(3,0.5,2*pi*f0,'s'); 

H=freqs(b,a,2*pi*[0:500]); 

plot(0:500, abs(H));

