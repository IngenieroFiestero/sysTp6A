function keyNames = dtmfdecod(xx,fs,tTono,tSil)
    if nargin < 3
        tTono=0.2;
        tSil=0.05;
    end
    if nargin < 4
        tSil=0.05;
    end
    muestras = length(xx);
    time=muestras/fs;
    numKeys=round(time/(tTono+tSil));
    keyNames = zeros(1,numKeys);
    timeTone = (tTono+tSil)*fs;
    for i = 1:numKeys
        keyNames(i)=dtmfdecodkey(xx(((i-1)*timeTone+1):i*timeTone),fs);
    end
end