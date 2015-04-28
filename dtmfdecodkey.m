function key = dtmfdecodkey(x,fs)
    %calcular la energia
    fb=[1209 1336 1477 697 770 852 941];
    N=length(x);
    hh =dtmfdesign(fb, 80, fs);
    en = zeros(1,7);
    for i = 1:7
        convolucion=conv(hh(:,i),x);
        en(i)=sum((abs(convolucion)).^2)*fs/N;
    end
    keys = ['1', '2', '3';
    '4','5','6';
    '7','8','9';
    '*','0','#'];
    [m,col]=max(en(1:3));
    [m2,row]=max(en(4:7));
    key=keys(row,col);
end