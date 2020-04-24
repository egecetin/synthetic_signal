function output = shiftsignal(y,m,tshift)
% y : input
% m : Scale factor for SINC Interpolation
% tshift : Desired time shift in secs
u = linspace(0,length(y),length(y)*m); 

x = 0:length(y)-1;
yp=zeros(1,length(u));

for i=1:length(u)
    yp(i) = sum(y.*sinc(x-u(i)));
end

z=[zeros(1,floor(tshift*m)) yp];
output=z(1:m:(length(z)-m));