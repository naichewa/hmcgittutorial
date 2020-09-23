function [ h,t ] = impulse_response( x, y, fs )
%impulse_response returns the impulse response of the system given the
%system input, x, and system output, y.
%   inputs: x, measured input signal
%           y, measured output signal
%           fs, sampling frequency of measurements
%   outputs:    h, calculated impulse response

[X,f] = fdomain(x,fs);
[Y,f] = fdomain(y,fs);
[H] = X./Y;   % the calculated frequency response
% fixed by making H an array, since it is a index division
% Naiche Whyte-Aguayo 9/20/20
[h,t] = tdomain(H,fs);
plot(t,h);
end

