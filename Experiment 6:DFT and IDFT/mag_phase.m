clc; 
clear; 
close all; 
xn=[1 1 1]; 
N=input('Enter the value of N:'); 
L=length(xn); 
if(N<L) 
    error('N must be greater than or equal to L'); 
end 
x=[xn,zeros(1,N-L)]; 
N=length(x); 
Xk=zeros(N,1); 
for k=0:N-1 
    for n =0:N-1 
        Xk(k+1)=Xk(k+1)+x(n+1)*exp(-1i*2*pi*n*k/N); 
    end 
end 
mgXk=abs(Xk); 
phaseXk=angle(Xk); 
k=0:N-1; 
subplot(2,1,1); 
stem(k,mgXk); 
hold on 
plot(k,mgXk); 
title('DFT sequence'); 
xlabel('Frequency'); 
ylabel('Magnitude'); 
subplot(2,1,2); 
stem(k,phaseXk); 
hold on 
plot(k,phaseXk); 
title('Phase of the DFT sequence'); 
xlabel('Frequency'); 
ylabel('Phase');