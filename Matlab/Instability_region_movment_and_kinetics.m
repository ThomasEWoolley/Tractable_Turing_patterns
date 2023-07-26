clear all
close all
clc

r_u=1;
r_v=2;
n=100;
% figure('position',[0 0.1 1 0.3])
% i=1;

for G=2
% subplot(1,3,i)
% i=i+1;
[theta_u,theta_v,F]=meshgrid(linspace(0,pi,n),linspace(0,pi,n),linspace(0,10,100));
f=4.*cos(theta_v).*cos(theta_u)/3+cos(theta_u).*r_v-cos(theta_v).*r_u;
g=double(f>0);
hh=g;
hh(hh==0)=nan;


isosurface(theta_u,theta_v,F,g)
hold on


xticks([0:pi/2:pi])
yticks([0:pi/2:pi])
xticklabels({0,'$\frac{\pi}{2}$','$\pi$'})
yticklabels({0,'$\frac{\pi}{2}$','$\pi$'})

set(gca,'fontsize',25)


T4ppnn=sqrt(r_u).*sqrt(r_v).*sqrt((3.*r_v+4.*cos(theta_v)).*cos(theta_u)-3.*cos(theta_v).*r_u).*sqrt(F-G)+r_u.*F.*cos(theta_u)+r_v.*cos(theta_v)-(3/4.*(F-G)).*r_u^2;
% T4npnn=-(4.*r_u.*F.*cos(theta_u)-3.*r_u.^2.*F-3.*r_u.^2.*G-4.*r_v.*cos(theta_v)...
%     -6.*r_v.^2-4.*sqrt(r_v).*sqrt(-(3.*r_v+4.*cos(theta_v)).*cos(theta_u)+3.*r_u.*cos(theta_v))...
%     .*sqrt(r_u).*sqrt(F-G));

T4Linear=(5/42.*sqrt(2)).*sqrt(7).*(theta_u.^2+(1/10).*theta_v.^2-14/5).*sqrt(F-G)...
    -(1/6).*F.*theta_u.^2-(1/3).*theta_v.^2+(1/12).*F+(1/4).*G+2/3;

T4=T4ppnn;
% T4(imag(T4)~=0)=1;

TT4=double(T4<0);
isosurface(theta_u,theta_v,F,TT4)

TTT4=TT4;
TTT4(TTT4==0)=nan;
hh=hh.*TTT4;
h=scatter3(theta_u(1:2:end),theta_v(1:2:end),F(1:2:end),20,hh(1:2:end),'filled');
xlabel('$\theta_u$')
ylabel('$\theta_v$')
zlabel('$F$')
alpha = 0.02;
view([150 40])
view([-25 40])
set(h, 'MarkerEdgeAlpha', alpha, 'MarkerFaceAlpha', alpha)
axis tight
end
% export_fig(['./Latex/Pictures/Instability_movement_region_ru_',num2str(r_u),'_.png'],'-r300')
% pause(1)
