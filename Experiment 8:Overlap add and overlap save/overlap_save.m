clc; 
clear; 
close all; 
x = input("Enter the input sequence x : "); 
h = input("Enter the impulse response h :"); 
N = length(h); 
y = ovrlsav(x, h, N); 
disp("Using Overlap and Save method"); 
disp(y); 
disp("Verification"); 
disp(conv(x,h)); 
function y = ovrlsav(x, h, N) 
    if (N < length(h)) 
        error("N must be greater than the length of h"); 
    end 
    Nx = length(x); 
    M = length(h); 
    M1 = M - 1; 
    L = N - M1; 
    x = [zeros(1, M1), x, zeros(1, N-1)]; 
    h = [h, zeros(1, N - M)]; 
    K = floor((Nx + M1 - 1) / L); 
    Y = zeros(K + 1, N); 
    for k = 0:K 
        xk = x(k*L + 1 : k*L + N); 
        Y(k+1, :) = cconv(xk, h, N); 
    end 
    Y = Y(:, M:N)'; 
    y = (Y(:))'; 
end