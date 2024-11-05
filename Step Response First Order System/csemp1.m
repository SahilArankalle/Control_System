%pkg load control;
clear all;
close all;
clc;
s = tf('s');
sys1=1/(1+5*s);
sys2=1/(1+10*s);
t=0:0.1:50;
y1 = step(sys1,t);
y2 = step(sys2,t);
figure()
plot(t,y1,'k--');
hold on
plot (t,y2,'r');
xlabel("Time in Seconds");
ylabel("System Output");
legend('System with time constant=s','System with time constant=10');
