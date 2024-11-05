clear all;
close all;
clc;
s=tf('s');
sys=100/(s*(s+2)*(s+4)*(s+5))
margin(sys)
[gm pm wpc wgc]=margin(sys)
if 20*log10(gm)>0
disp('System is stable')
else if 20*log10(gm)<1
disp('System is unstable')
else if 20*log10(gm)==1
disp('System is marginally stable')
end
end
end