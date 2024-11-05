clear all;
close all;
clc;
s=tf('s');
sys=1/(s*(s+2)*(s+4)*(s+5))
rlocus(sys)
