clear all
close all
clc

set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
figure('Units','Normalized','position',[0 0.05 1/2 1/3])
set(groot,'defaultAxesTickLabelInterpreter','latex');

[x,y]=meshgrid(linspace(0,1));

z1=cos(pi*x).*cos(0*y);
z2=cos(0*x).*cos(pi*y);
z3=1/2*(cos(pi*x).*cos(0*y)+cos(0*x).*cos(pi*y));

subplot(1,3,1)
pcolor(x,y,z1)
formatter

subplot(1,3,2)
pcolor(x,y,z2)
formatter


subplot(1,3,3)
pcolor(x,y,z3)
formatter
export_fig('../Latex/Pictures/Square_modes.png','-r300')


function formatter
axis equal
axis tight
shading interp
xlabel('$x$','fontsize',15,'interpreter','latex')
ylabel('$y$','fontsize',15,'interpreter','latex')
xticks([0  1])
yticks([0 1])
xticklabels({0 '$S$'})
yticklabels({0 '$S$'})
caxis([-1 1])
set(gca,'fontsize',15)
end
