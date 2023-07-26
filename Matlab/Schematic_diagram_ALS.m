clear all
close all
clc

set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
figure('Units','Normalized','position',[0 0.05 1/4 1/3])
set(groot,'defaultAxesTickLabelInterpreter','latex');
n=9;
z=[];
for j=0:2
    z(j+1)=exp(2*pi*1i/n*j);
end
x=real(z);
y=imag(z);
plot(x,y,'ko','linewidth',3)
hold on
plot(x,y,'k','linewidth',3)

z=[];
for j=0:3
    z(j+1)=exp(2*pi*1i/n*j);
end
x=real(z);
y=imag(z);
plot(x,y,'ko','linewidth',3)
hold on
plot(x,y,'k--','linewidth',3)
plot([1 0 x(2)],[0 0 y(2)],'b')

z=[];
for j=0:1
    z(j+1)=exp(-2*pi*1i/n*j);
end
x=real(z);
y=imag(z);
plot(x,y,'ko','linewidth',3)
hold on
plot(x,y,'k--','linewidth',3)


t=linspace(0,2*pi,100);
for k=1:length(t)
    z(k)=exp(t(k)*1i);
end
xc=real(z);
yc=imag(z);
plot(xc,yc,'r','linewidth',1)
axis equal
axis([-1 1 -1 1])
xticks([-1 0 1])
yticks([-1 0 1])
xticklabels({'$-R$' 0 '$R$'})
yticklabels({'$-R$' 0 '$R$'})

% g=gtext('$2\pi/n$','interpreter','latex','fontsize',15)
text(0.2,0.1,'$2\pi/n$','interpreter','latex','fontsize',15)

% g=gtext('$S$','interpreter','latex','fontsize',15)
text(0.754,0.266,'$S$','interpreter','latex','fontsize',15)

xlabel('$x$','interpreter','latex')
ylabel('$y$','interpreter','latex')
set(gca,'fontsize',15)


export_fig('../Latex/Pictures/Polygon_schematic.png','-r300')