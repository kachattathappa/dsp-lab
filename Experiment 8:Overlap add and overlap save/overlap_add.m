clc; 
close all; 
clear; 
x = input('Enter the input sequence x : '); 
h = input('Enter the impulse response h : '); 
L = length(h); 
N = length(x); 
M = length(h); 
x_padded = [x, zeros(1, L - 1)]; 
y = zeros(1, N + M ); 
num_sections = (N + L - 1) / L; 
for n = 0:num_sections-1 
    start_idx = n * L + 1; 
    end_idx = start_idx + L - 1; 
    x_section = x_padded(start_idx:min(end_idx, end)); 
    conv_result = conv(x_section, h); 
    y(start_idx:start_idx + length(conv_result) - 1) =y(start_idx:start_idx 
+ length(conv_result) - 1) + conv_result; 
end 
y = y(1:N + M - 1); 
y_builtin = conv(x, h); 
disp('Overlap-add convolution result:'); 
disp(y); 
disp('Built-in convolution result:'); 
disp(y_builtin); 