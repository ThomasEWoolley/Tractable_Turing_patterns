clear all
close all
clc

set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
figure('Units','Normalized','position',[0 0.05 2/3 1/3])
set(groot,'defaultAxesTickLabelInterpreter','latex');
subplot(1,3,1)
n=3;
z=[];
for j=0:3
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
n=3;
z=[];
for j=0:3
    z(j+1)=exp(2*pi*1i/n*j)*exp(-pi*1i/6);
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
xticks([-1  1]*sqrt(3)/2)
yticks([-1/2  1])
xticklabels({'0' '$S$'})
yticklabels({'0' '$S\sqrt{3}/2$'})
title('Analytical domain','interpreter','latex')

export_fig('../Latex/Pictures/Triangle_domains.png','-r300')
%%

figure('Units','Normalized','position',[0 0.05 1/3 1/3])
n=3;
z=[];
for j=0:3
    z(j+1)=exp(2*pi*1i/n*j)*exp(-pi*1i/6);
end
x=real(z);
y=imag(z);
% plot(x,y,'ko','linewidth',3)
hold on
plot(x,y,'k','linewidth',3)

t=linspace(0,2*pi,100);
for k=1:length(t)
    z(k)=1/2*exp(t(k)*1i);
end
xc=real(z);
yc=imag(z);
plot(xc,yc,'b','linewidth',1)
axis equal
axis([-1 1 -1 1.2])
axis off
text(0,-.1,'(0,0,0)','interpreter','latex')
text(real(0.13*exp(pi/6*1i)),imag(0.13*exp(pi/6*1i))+.1,'$r=S/(2\sqrt{3})$','interpreter','latex','Rotation',30,'HorizontalAlignment','center')
text(1,-.5,'$(r,r,-2r)$','interpreter','latex')
text(-1,-.5,'$(-2r,r,r)$','interpreter','latex','HorizontalAlignment','right')
text(0,1.15,'$(r,-2r,r)$','interpreter','latex','HorizontalAlignment','center')
% text(0,0,'(r,-2r,r)','interpreter','latex')
text(0,-.7,'$X=r$','interpreter','latex','HorizontalAlignment','center','fontsize',15)
text(real(0.7*exp(pi/6*1i)),imag(0.7*exp(pi/6*1i)),'$Y=r$','interpreter','latex','HorizontalAlignment','center','Rotation',-60,'fontsize',15)
text(real(0.7*exp(5*pi/6*1i)),imag(0.7*exp(5*pi/6*1i)),'$Z=r$','interpreter','latex','HorizontalAlignment','center','Rotation',60,'fontsize',15)
plot([0 real(1/2*exp(pi/6*1i))],[0 imag(1/2*exp(pi/6*1i))],'b','linewidth',1)

% xlabel('$x$','interpreter','latex')
% ylabel('$y$','interpreter','latex')
% set(gca,'fontsize',15)
% axis([-1 1 -1 1])
% xticks([-1 0  1]*sqrt(3)/2)
% yticks([-.5 0 1])
% xticklabels({'$-S/2$' '0' '$S/2$'})
% yticklabels({'$-R/2$' '0' '$R$'})
title('Triangular coordinates','interpreter','latex')
set(gca,'fontsize',15)

export_fig('../Latex/Pictures/Triangle_geometry.png','-r300')