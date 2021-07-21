[z,p,k] = cheb1ap(3,3); % Lowpass filter prototype
[num,den] = zp2tf(z,p,k); % Convert to transfer function form
% freqz(num,den)
