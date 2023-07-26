clear all
close all
clc

r_u=1;
r_v=2;
G=5;
alpha = 0.02;
n=100;
[theta_u,theta_v,F]=meshgrid(linspace(0,pi,n),linspace(0,pi,n),linspace(0,G,100));

f1=(6.*r_v+8.*cos(theta_v)).*cos(theta_u)-6.*cos(theta_v).*r_u;
f1lin=(-3.*r_v-4).*theta_u.^2+(-4+3.*r_u).*theta_v.^2-6.*r_u+6.*r_v+8;
f2=sqrt(r_v).*sqrt((3.*r_v + 4.*cos(theta_v)).*cos(theta_u) - 3.*r_u.*cos(theta_v)).*sqrt(r_u).*sqrt(F - G) - r_u.*F.*cos(theta_u) - r_v.*cos(theta_v) + ((3.*F + 3.*G).*r_u.^2)/4 - (3.*r_v.^2)/2;
f2lin=3.*(((F + G).*r_u.^2 + (2.*F.*(theta_u.^2 - 2).*r_u)/3 - 2.*r_v.*(-theta_v.^2/3 + r_v + 2/3)).*sqrt(3.*r_v + 4 - 3.*r_u) - ((-theta_v.^2 + 4).*sqrt(r_v).*r_u.^(3/2) + sqrt(r_u).*((theta_u.^2 - 4).*r_v.^(3/2) + (4.*sqrt(r_v).*(theta_u.^2 + theta_v.^2 - 4))/3)).*sqrt(F - G))/(4.*sqrt(3.*r_v + 4 - 3.*r_u));

g1=double(f1>0);
g1lin=double(f1lin>0);
g2=double(f2<0);
g2lin=double(f2lin<0);
h1=g1;
h1lin=g1lin;
h2=g2;
h2lin=g2lin;

h1(h1==0)=nan;
h1lin(h1lin==0)=nan;
h2(h2==0)=nan;
h2lin(h2lin==0)=nan;


s1=isosurface(theta_u,theta_v,F,g1);
hold on
s2=isosurface(theta_u,theta_v,F,g1lin);
p1 = patch(s1);
set(p1,'FaceColor',[1 0 0]);  
set(p1,'EdgeColor','none');
p2 = patch(s2);
set(p2,'FaceColor',[0 0 1]);  
set(p2,'EdgeColor','none');


h=scatter3(theta_u(1:2:end),theta_v(1:2:end),F(1:2:end),20,h1(1:2:end),'filled');
set(h, 'MarkerEdgeAlpha', alpha, 'MarkerFaceAlpha', alpha)
h=scatter3(theta_u(1:2:end),theta_v(1:2:end),F(1:2:end),20,h1lin(1:2:end),'filled');
set(h, 'MarkerEdgeAlpha', alpha, 'MarkerFaceAlpha', alpha*10)


xlabel('$\theta_u$')
ylabel('$\theta_v$')
zlabel('$F$')
view([150 40])
view([-25 40])
set(gca,'fontsize',25)
axis tight
camlight;
lighting gouraud;
xticks([0:pi/2:pi])
yticks([0:pi/2:pi])
xticklabels({0,'$\frac{\pi}{2}$','$\pi$'})
yticklabels({0,'$\frac{\pi}{2}$','$\pi$'})


figure

s3=isosurface(theta_u,theta_v,F,g2);
hold on
s4=isosurface(theta_u,theta_v,F,g2lin);

p3 = patch(s3);
set(p3,'FaceColor',[0 0 1]);  
set(p3,'EdgeColor','none');
p4 = patch(s4);
set(p4,'FaceColor',[0 0 0]);  
set(p4,'EdgeColor','none');

h=scatter3(theta_u(1:2:end),theta_v(1:2:end),F(1:2:end),20,h2(1:2:end),'filled');
%,'MarkerFaceColor',[1 0 0]);
set(h, 'MarkerEdgeAlpha', alpha, 'MarkerFaceAlpha', alpha)
h=scatter3(theta_u(1:2:end),theta_v(1:2:end),F(1:2:end),20,h2lin(1:2:end),'filled');
set(h, 'MarkerEdgeAlpha', alpha, 'MarkerFaceAlpha', alpha*10)


xlabel('$\theta_u$')
ylabel('$\theta_v$')
zlabel('$F$')
view([150 40])
view([-25 40])
set(gca,'fontsize',25)
axis tight
camlight;
lighting gouraud;
xticks([0:pi/2:pi])
yticks([0:pi/2:pi])
xticklabels({0,'$\frac{\pi}{2}$','$\pi$'})
yticklabels({0,'$\frac{\pi}{2}$','$\pi$'})


% end
% export_fig(['./Latex/Pictures/Instability_movement_region_ru_',num2str(r_u),'_.png'],'-r300')
% pause(1)
