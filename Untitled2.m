fb=[1209 1336 1477 697 770 852 941];
fs=16000;
num=['9','7','6','5','6','4','3','1','2'];
xx=dtmfdial(num,fs);
soundsc(xx,fs)
xx=dtmfdial('3',fs);
hh =dtmfdesign(fb, 80, fs);
plot(conv(hh(:,5),xx),'v')

s=sin(fb(1)*[0:1/fs:0.5]);
x=zeros(1,7);
for i=1:7
    x(i)=max(conv(xx,hh(:,i)));
end
x
hold off
plot(conv(hh(:,1),xx),'v')
hold on
plot(conv(hh(:,2),xx),'v')
plot(conv(hh(:,3),xx),'r')
plot(conv(hh(:,4),xx),'b')
plot(conv(hh(:,5),xx),'v')
plot(conv(hh(:,6),xx),'v')
plot(conv(hh(:,7),xx),'v')

%%
fs=16000;
xx=dtmfdial('5',fs);
key = dtmfdecodkey(xx,fs)