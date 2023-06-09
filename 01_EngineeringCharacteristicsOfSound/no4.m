clear;
Fs = 16000;
T = 1/2; % 周期
f = 1/T; % 周波数
t = (0:4*(Fs-1)) /Fs;

y = 0;
for k=1
    y = y + (1/(2*k-1)) * sin(2*pi*f*(2*k-1)*t);
end

fig0 = figure;
hold on;
plot(t,y);
y = 0;
for k=1:5
    y = y + (1/(2*k-1)) * sin(2*pi*f*(2*k-1)*t);
end
plot(t,y);
y = 0;
for k=1:25
    y = y + (1/(2*k-1)) * sin(2*pi*f*(2*k-1)*t);
end
plot(t,y);
axis([0 1 -3 3]);
xlabel('time[s]');
ylabel('振幅');
hold off;
legend({'N=1','N=5','N=25'},'Location','southwest');
fig1 = figure;
y = 0;
for k=1:50
    y = y + (1/(2*k-1)) * sin(2*pi*f*(2*k-1)*t);
end
plot(t,y);
axis([0 1 -3 3]);
xlabel('time[s]');
ylabel('amplitude');
exportgraphics(fig0,'../Figures/01_04_2.pdf','ContentType','vector');
exportgraphics(fig1,'../Figures/01_04_1.pdf','ContentType','vector');