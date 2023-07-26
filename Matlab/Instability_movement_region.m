clear all
close all
clc

for r_u=[0.01 0.1 1 10];
    clf
n=100;
[theta_u,theta_v,r_v]=meshgrid(linspace(0,pi,n),linspace(0,pi,n),linspace(0,5,100));
f=4*cos(theta_v).*cos(theta_u)/3+cos(theta_u).*r_v-cos(theta_v).*r_u;
g=double(f>0);
hh=g;
hh(hh==0)=nan;


isosurface(theta_u,theta_v,r_v,g)
hold on
h=scatter3(theta_u(1:2:end),theta_v(1:2:end),r_v(1:2:end),20,hh(1:2:end),'filled');
xlabel('$\theta_u$')
ylabel('$\theta_v$')
zlabel('$r_v$')
alpha = 0.02;
view([150 40])
% view([-40 40])
% N = h.MarkerHandle.FaceColorData;
% N(4,:) = alpha;
% h.MarkerHandle.FaceColorData = N;
set(h, 'MarkerEdgeAlpha', alpha, 'MarkerFaceAlpha', alpha)
axis tight

xticks([0:pi/2:pi])
yticks([0:pi/2:pi])
xticklabels({0,'$\frac{\pi}{2}$','$\pi$'})
yticklabels({0,'$\frac{\pi}{2}$','$\pi$'})

set(gca,'fontsize',25)
export_fig(['../Latex/Pictures/Instability_movement_region_ru_',num2str(r_u),'_.png'],'-r300')
% pause(1)
end