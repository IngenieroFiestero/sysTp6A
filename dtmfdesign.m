function hh =dtmfdesign(fb, L, fs)
    n=1:1:L;
    hh=(2/L)*cos((2*pi*n'*fb)/fs);
end