ccc
gv=0.9;
[ru,rv,gu]=meshgrid(linspace(2,10),linspace(2,10),linspace(gv,20));
% f1=-(1/4).*ru.*(3.*ru-4).*gu+sqrt(ru).*sqrt(3.*rv+4-3.*ru).*sqrt(rv).*sqrt(gu-gv)+(3/4.*gv).*ru.^2+rv;
[~,~,f1]=angs(ru,rv,-1,1,-gu,gv,0,0);
f1z=double(f1<0);
g1=f1z;
% g1(imag(g1)~=0)=0;
g1(ru>rv)=0;
n1=g1;
n1(g1==0)=nan;

figure('position',[0 0.1 .25 .6])

ax(1)=subplot(2,1,1);
isosurface(ru,rv,gu,g1,0.8)
hold on
h=scatter3(ru(:),rv(:),gu(:),1,n1(:),'filled');

alpha = 0.1;
set(h, 'MarkerEdgeAlpha', alpha, 'MarkerFaceAlpha', alpha)
xlabel('$r_u$')
ylabel('$r_v$')
zlabel('$g_u$')
view([180-60 30])
box on
axis tight

ru=8;
rv=10;
gu=5;
gv=0.9;
[thetau,thetav]=meshgrid(linspace(0,pi,300),linspace(0,pi,300));
[ang1,ang2,~]=angs(ru,rv,-1,1,-gu,gv,thetau,thetav);

ax(2)=subplot(2,1,2);
p1=pcolor(thetau,thetav,ang1.*ang2);

% set(p1,'facealpha',0.3)
% hold on
% p2=pcolor(thetau,thetav,ang2+1);
% set(p2,'facealpha',0.3)
shading interp
xlabel('$\theta_u$')
ylabel('$\theta_v$')
xticks([0:pi/2:pi])
yticks([0:pi/2:pi])
xticklabels({0,'$\frac{\pi}{2}$','$\pi$'})
yticklabels({0,'$\frac{\pi}{2}$','$\pi$'})
axis equal
axis tight
% legend('Geometric inequality','Geometric and kinetic inequality','location','se')
title(['$(',num2str(ru),',',num2str(rv),',',num2str(gu),',',num2str(gv),')$'],'fontsize',15)
subplot(2,1,1);
hold on
h=scatter3(ru,rv,gu,100,'filled');
set(h, 'Markerfacecolor', 'w', 'Markeredgecolor', 'k')



colormap(ax(1),parula)
colormap(ax(2),[1 1 1;0 0 0])

export_fig(['..\Latex\Pictures\Jacobian_structure_npnp.png'],'-r300')
%%
[a,b,c]=angs(ru,rv,1,1,-gu,-gv,0,0)

function [ang1,ang2,f1]=angs(ru,rv,fu,fv,gu,gv,thetau,thetav)
% [thetau,thetav]=meshgrid(linspace(0,pi),linspace(0,pi));
ang1=(6.*rv+8.*cos(thetav)).*cos(thetau)-6.*cos(thetav).*ru;
f1=sqrt(ru).*sqrt((3*rv + 4*cos(thetav)).*cos(thetau)...
    - 3*cos(thetav).*ru).*sqrt(rv).*sqrt(fu*gv - fv*gu)...
    + rv.*(cos(thetav) + (3*rv)/4).*fv - ru.*(cos(thetau)...
    - (3*ru)/4).*gu - (3*rv.^2*fu)/4 - (3*gv.*ru.^2)/4;
ang1(imag(ang1)~=0)=0;
ang1=double(ang1>0);

ang2=f1;
ang2(imag(ang2)~=0)=0;
ang2=double(ang2<0);


ang1(ang1==0)=nan;
ang2(ang2==0)=nan;
end