%Program for step response of second order system
clear all
close all
clc
s=tf('s');
% wn = 3 rad/sec and zeta = 0.5 (Underdamped)
sys1 = 9/(s^2+3*s+9)
% wn = 3 rad/sec and zeta = 1 (Critically damped)
sys2 = 9/(s^2+6*s+9)
% wn = 3 rad/sec and zeta = 1.5 (Over damped)
sys3 = 9/(s^2+9*s+9)

t=0:0.1:10;

y1=step(sys1,t);
y2=step(sys2,t);
y3=step(sys3,t);
figure()
plot(t,y1,'k--')
hold on
plot(t,y2,'r')
plot(t,y3,'b-')
xlabel('Time in Seconds')
ylabel('System Output')
legend("Underdamped","Critically Damped","Over Damped")