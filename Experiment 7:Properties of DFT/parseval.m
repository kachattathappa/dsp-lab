clc; 
clear; 
close all; 
x=[1 2 3 4]; 
N=length(x); 
e=sum(abs(x).^2); 
X=fft(x); 
ek=sum(abs(X).^2)/N; 
disp('LHS='); 
disp(e); 
disp('RHS='); 
disp(ek); 