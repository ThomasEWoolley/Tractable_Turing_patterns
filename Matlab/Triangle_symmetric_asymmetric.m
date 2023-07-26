ccc
figure('Units','Normalized','position',[0 0.05 1/3 1/3])

r=1/(2*sqrt(3));
h=2*sqrt(3)*r;
n=500;
[u,v]=meshgrid(linspace(-2*r,r,n),linspace(-2*r,r,n));
w=-u-v;
w(w>r)=nan;

y=r-u;
x=h/2+1/sqrt(3)*(v-w);
plot(x,y)
axis equal


c1=pi/(3*r);
c2=pi/(9*r);
subplot(1,2,1)
m=1;
n=0;
l=-m-n;
T=cos(c1*l*(u+2*r)).*cos(c2*(m-n)*(v-w))+...
    cos(c1*m*(u+2*r)).*cos(c2*(n-l)*(v-w))+...
    cos(c1*n*(u+2*r)).*cos(c2*(l-m)*(v-w));
%%

pcolor(x,y,T)
title('Symmetric solution')
formatter

subplot(1,2,2)
T=cos(c1*l*(u+2*r)).*sin(c2*(m-n)*(v-w))+...
    cos(c1*m*(u+2*r)).*sin(c2*(n-l)*(v-w))+...
    cos(c1*n*(u+2*r)).*sin(c2*(l-m)*(v-w));


pcolor(x,y,T)
title('Antisymmetric solution')
formatter

export_fig(['..\Latex\Pictures\Triangle_symmetric_asymmetric.png'],'-r300')


function formatter
shading interp
axis equal
axis tight
axis off
set(gca,'fontsize',15)
caxis([-1 1]*3*sqrt(3)/2)
end


