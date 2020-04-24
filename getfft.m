function [genlik,faz,f] = getfft(signal,window,wlen,freq,Fs,bandwidth,range)

x=signal(range(1):range(2)-1)-mean(signal(range(1):range(2)-1));
NFFT = 2^nextpow2(wlen);
Y = fft(window.*x', NFFT)/NFFT;%
f = linspace(0, Fs/2, (NFFT/2 + 1));
%n=[0:2*pi/NFFT:2*pi];n=n(1:end-1);
%n=exp(-1i*2*pi/NFFT*n);
%Y=Y.*n';
idx = find(f<freq+bandwidth & f>freq-bandwidth);
genlik=abs(Y(idx));
faz=unwrap(angle(Y(idx)));
%faz=faz.*n(idx)';
f=f(idx);
end
