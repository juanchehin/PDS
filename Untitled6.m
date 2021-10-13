% ============ parametros =================

N     = 6;      % Order
Fs    = 48000;  % Sampling Frequency
Apass = 1;      % Passband Ripple (dB)

% ============ pasa bajo =================
Fpass1 = 20;   % First Passband Frequency
Fpass2 = 250;  % Second Passband Frequency

h  = fdesign.bandpass('N,Fp1,Fp2,Ap', N, Fpass1, Fpass2, Apass, Fs);
Hd = design(h, 'cheby1');

% ============ pasa banda =================

Fpass3 = 250;   % First Passband Frequency
Fpass4 = 2000;  % Second Passband Frequency

h1  = fdesign.bandpass('N,Fp1,Fp2,Ap', N, Fpass3, Fpass4, Apass, Fs);
Hd1 = design(h1, 'cheby1');

% ============ pasa alto =================

Fpass5 = 2000;   % First Passband Frequency
Fpass6 = 20000;  % Second Passband Frequency

h2  = fdesign.bandpass('N,Fp1,Fp2,Ap', N, Fpass5, Fpass6, Apass, Fs);
Hd2 = design(h2, 'cheby1');


hfvt = fvtool(Hd,Hd1,Hd2);