clear all;
close all;
clc;
s=tf('s');
sys=200/(s*(s+1)*(s+2)*(s+3))
syscl=feedback(sys,1)
p=pole(syscl)
pmax=max(real(p))
length(pmax)
if pmax<0
 disp('System is stable in closed cloop')
end
if pmax>0
 disp('System is unstable in closed loop')
end