clear all
close all
clc

n=6;
r=3;
for j=linspace(0,r,10)
for i=1:n
    z=j*linspace(exp(2*pi*1i/n*(i-1)),exp(2*pi*1i/n*i),11);

    plot(real(z),imag(z),'.')
    hold on
    axis equal
end
end