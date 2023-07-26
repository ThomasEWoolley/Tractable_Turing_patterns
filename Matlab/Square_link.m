clear all
close all
clc

set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
figure('Units','Normalized','position',[0 0.05 2/3 1/3])
set(groot,'defaultAxesTickLabelInterpreter','latex');
subplot(1,3,1)
n=4;
z=[];
for j=0:4
    z(j+1)=exp(2*pi*1i/n*j);
end
x=real(z);
y=imag(z);
plot(x,y,'ko','linewidth',3)
hold on
plot(x,y,'k','linewidth',3)

t=linspace(0,2*pi,100);
for k=1:length(t)
    z(k)=exp(t(k)*1i);
end
xc=real(z);
yc=imag(z);
plot(xc,yc,'r','linewidth',1)
axis equal
xlabel('$x$','interpreter','latex')
ylabel('$y$','interpreter','latex')
set(gca,'fontsize',15)
axis([-1 1 -1 1])
xticks([-1 0 1])
yticks([-1 0 1])
xticklabels({'$-R$' 0 '$R$'})
yticklabels({'$-R$' 0 '$R$'})
title('Simulation domain','interpreter','latex')

subplot(1,3,2)
n=4;
z=[];
for j=0:4
    z(j+1)=exp(2*pi*1i/n*j)*exp(pi*1i/4);
end
x=real(z);
y=imag(z);
% plot(x,y,'ko','linewidth',3)
hold on
plot(x,y,'k','linewidth',3)

t=linspace(0,2*pi,100);
for k=1:length(t)
    z(k)=exp(t(k)*1i);
end
xc=real(z);
yc=imag(z);
plot(xc,yc,'r','linewidth',1)
axis equal
xlabel('$x$','interpreter','latex')
ylabel('$y$','interpreter','latex')
set(gca,'fontsize',15)
axis([-1 1 -1 1])
xticks([-1  1]/sqrt(2))
yticks([-1  1]/sqrt(2))
xticklabels({0 '$S$'})
yticklabels({0 '$S$'})
title('Analytical domain','interpreter','latex')

export_fig('../Latex/Pictures/Square_link.png','-r300')