clear all
close all
clc
p=[]; 
hmax=0.1; del=0.35; nbd=10;
p=stanparam(p);


for n=3:8

pde=Polys3(1,10,n,.75)
p.np=pde.grid.nPoints;  p.pdeo=pde; 

u=2*ones(p.np,1);

p.u=u;

subplot(2,4,n-2)
plotsol(p,1,1,1)
view(2)
axis equal
end
%%
clear all
close all
clc
p=[]; 
hmax=0.1; del=0.35; nbd=10;
p=stanparam(p);


for n=3:8

pde=Polys2(1,n,0.3);
p.np=pde.grid.nPoints;  p.pdeo=pde; 

u=2*ones(p.np,1);

p.u=u;

subplot(2,4,n-2)
plotsol(p,1,1,1)
view(2)
axis equal
end

%%

clear all
close all
clc
p=[]; 
hmax=0.1; del=0.35; nbd=10;
p=stanparam(p);


for n=3:8

pde=Polys4(1,10,n,.1);
p.np=pde.grid.nPoints;  p.pdeo=pde; 

u=2*ones(p.np,1);

p.u=u;

subplot(2,4,n-2)
plotsol(p,1,1,1)
view(2)
axis equal
end