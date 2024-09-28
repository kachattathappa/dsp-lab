clc; 
clear all; 
close all; 
 
% Define the two sequences 
x = [1 2 1 2];  % First sequence 
h = [1 2 3 4];  % Second sequence 
 
% Length of the sequences 
N = length(x); 
 
% Construct the circulant matrix for sequence 'x' 
% The first column is [x(1), x(N), x(N-1), ..., x(2)] 
% The first row is [x(1), x(2), ..., x(N)] 
X_circulant = toeplitz([x(1), fliplr(x(2:end))], x); 
 
% Perform circular convolution by matrix multiplication 
y = X_circulant * h'; 
 
% Display the result 
disp('Using Matrix Method.:'); 
disp(y');