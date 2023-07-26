clear all
close all
clc
% r=1;
% R=r*sqrt(3);
R=1;
r=R/sqrt(3);
n=100;
[u,v]=meshgrid(linspace(-2*r,r,n),linspace(-2*r,r,n));
w=-u-v;
w(w>r)=nan;

y=R/sqrt(3)-u-R/sqrt(3);
x=R+1/sqrt(3)*(v-w)-R;
plot(x,y)
hold on
% plot([-2 2],[-2 2])
% z=exp(1i*2*pi/3)*(x+y*1i);
% plot(real(z),imag(z))



y=-w;
x=-1/(sqrt(3))*(v-u);
plot(x,y)
axis equal