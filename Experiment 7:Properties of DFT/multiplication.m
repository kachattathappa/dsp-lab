clc; 
clear; 
close all; 
x1=[1 2 3 4]; 
x2=[2 1 2 1]; 
l=length(x1); 
m=length(x2); 
N=max(l,m); 
y1=x1.*x2; 
x1k=fft(x1); 
x2k=fft(x2); 
rhsk=cconv(x1k,x2k,N)/N; 
disp('LHS='); 
disp(y1); 
disp('RHS='); 
disp(ifft(rhsk)); 
