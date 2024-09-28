%%Linear Convolution using Circular Convolution 
clc; 
clear all; 
close all; 
x = [1 2 3 4]; 
h = [1 1 1 ]; 
l = length(x); 
m = length(h); 
k = l+m-1; 
x = [x zeros(1,k-l)]; 
h = [h zeros(1,k-m)]; 
X_k = fft(x); 
H_k = fft(h); 
Y_k = X_k.*H_k; 
y = ifft(Y_k); 
disp("Linear Convolution using Circular Convolution :"); 
disp(y);