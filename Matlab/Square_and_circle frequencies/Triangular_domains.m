ccc

[r,theta]=meshgrid(linspace(0,1,100),linspace(0,2*pi,100));

x=r.*cos(theta);
y=r.*sin(theta);

plot(x,y)

%%

ccc
r=1;
h=2*sqrt(3);
[v,w]=meshgrid(linspace(-2*r,r,100),linspace(-2*r,r,100));
u=-v-w;
u(u>r)=nan;

y=r-u;
x=(v-w)/sqrt(3)+h/2;

plot(x,y)
axis equal