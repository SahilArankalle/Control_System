clear all;
close all;
clc;
s=tf('s');
sys=200/(s*(s+2)*(s+4)*(s+5))
nyquist(sys)