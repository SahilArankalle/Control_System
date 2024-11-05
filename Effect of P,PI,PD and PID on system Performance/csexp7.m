clear all;
close all;
clc;
s=tf('s');
sys=5/((1+5*s)*(1+10*s));
%Propotional controller with kc=2
Gc_p=2;
%PI controller with kc=2 and Ti=20
Gc_pi=2*(1+1/(20*s));
%PD controller with kc=2, Ti=20 and Td=2
Gc_pd=2*(1+2*s);
%PID controller with kc=2, Ti=20 and Td=2
Gc_pid=2*(1+1/(20*s)+2*s);
%closed loop system with proportional controller
sys_cl_p=feedback(sys*Gc_p,1);
%closed loop system with PI controller
sys_cl_pi=feedback(sys*Gc_pi,1);
%closed loop system with PD controller
sys_cl_pd=feedback(sys*Gc_pd,1);
%closed loop system with PID controller
sys_cl_pid=feedback(sys*Gc_pid,1);
% System outputs
t=0:0.1:50;
y_p=step(sys_cl_p,t);
y_pi=step(sys_cl_pi,t);
y_pd=step(sys_cl_pd,t);
y_pid=step(sys_cl_pid,t);
%plot
plot(t,y_p,'r-',t,y_pi,'k-.',t,y_pd,'b--',t,y_pid,'m.-')
xlabel('Time')
ylabel('System output')
legend('output P','output pi','output pd','output pid')