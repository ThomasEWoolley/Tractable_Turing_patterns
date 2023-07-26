%% Code for cleaning folders and memory
close all;clc;keep pphome;
listing=dir;
Ids=[listing.isdir];
Ids(1:2)=[];

for i=find(Ids)
    rmdir(listing(i+2).name,'s')
end

p=[]; p=stanparam(p); % Setting up basic p structure
p.plot.auxdict={'L'    ,'r_1','r_2','theta_1','theta_2','J', 'alpha', 'beta', 'max u_1','min u_1'}; % Parameter names (not needed, but nice)
par=           [ 0.4   , 1   ,  1  , 1.8     , 2.2     , 1 , 1       ,  3 ]; % Parameters used in functions and Jacobian
p.fuha.outfu=@outfn; % Output function to be plotted, names are in above.
p.nc.ilam=1; % Parameter number to continue over
p.plot.bpcmp=9; % Which component of output function to plot.
p.plot.pcmp=1; % Component for plotting of u=[u,v]
huclean(p); % Set up figures in nice way

p.sw.sfem=-1; % Use OOPDE settings. Otherwise 0/1 for full/preassembled FEM settings
p.nc.neq=2; % Number of equations

p.fuha.sG=@sG; % Functions to be solved
p.fuha.Mixed_term=@Mixed_term; % Crossterm function
p.sw.jac=0; % Use numeric Jacobian.

% Space setup and number of elements to be used, space is [-lx,lx]X[-ly,ly].
p.dim=2; % Spatial dimensions
lx=0.5;ly=lx;nx=20;ny=nx;
sw.sym=2;
pde=stanpdeo2D(lx,ly,nx,ny,sw); % PDE setup
p.pdeo=pde;p.np=pde.grid.nPoints;p.nu=2*p.np;p.nt=pde.grid.nElements;
p.sw.verb=0; % Verbosity of calculation
p.sol.xi=1/p.nu; % Normalisation weights

p.sw.bifcheck=2; % Calculate bifurcations using eigenvalues, 0 turn off, 1 use LU decomposition
p.sw.spcalc=1; % Calculate eigenvalues (0/1 Eigenvalue computations off/on)
p.nc.neig=min(50,p.np); % Number of eigenvalues to calculate
% p.nc.neig=min(20,p.np); % Number of eigenvalues to calculate
p.nc.tol=1e-11; % Tolerance for finding branch
p.nc.nsteps=1000; % Number of continuation steps

p.sol.ds=0.0001; % Arclength step
p.nc.dsmin=1e-4; % Arclength minimum steplength
p.nc.dsmax=0.1; % Arclength max steplength
p.nc.dlammax=0.1; % Maximum step in the parameter
p.nc.lammax=0.7; % Max parameter value
p.nc.lammin=0; % Min parameter value
p.nc.mu2=0.01; % Threshold for bifcheck=2
p.file.smod=10; % Output every n steps

p.sw.para=1; % Continuation variable 1: automatic switching via ? <> p.nc.lamdtol (0: natural parameter.; 2: arclength).
p.plot.pstyle=2; %0 only plot the FEM mesh; 1 mesh-plot; 2 density-plot

u=(par(7)+par(8))*ones(p.np,1); v=par(8)/(par(7)+par(8))^2*ones(p.np,1);  %ICs
p.u=[u; v; par']; % Complete description


p=setfn(p,'hom',0.01); % Set first file name and step size
% p=findbif(p,1);
p=cont(p);

%%
for i=1
%  huclean(p); % Set up figures in nice way
p=swibra('hom',['bpt',num2str(i)],['1B',num2str(i)],-0.001);
p.sol.ds=0.0001; % Arclength step
p.nc.dsmax=0.1; % Arclength max steplength
p.nc.dsmin=1e-6; % Arclength minimum steplength
p=cont(p);
end
% %%
% for i=1:3
% %  huclean(p); % Set up figures in nice way
% p=swibra('1B2',['bpt',num2str(i)],['1B2B',num2str(i)],-0.001);
% p.sol.ds=0.0001; % Arclength step
% p.nc.dsmax=0.1; % Arclength max steplength
% p.nc.dsmin=1e-6; % Arclength minimum steplength
% p=cont(p);
% end
%%
p = swiparf ( '1B1' , 'pt10' , 'Swi_theta1' ,4);
clf(2)
p.sol.ds=-0.0001; % Arclength step
p.nc.dsmax=0.1; % Arclength max steplength
p.nc.lammin =0;
p.nc.lammax =2*pi;
p = cont(p);
% p=findbif(p,1);
%%
p=swibra('Swi_theta1','bpt1','Theta_bif',0.001);
p=cont(p);
function r=sG(p,u)
n=p.np;
U=u(1:n); V=u(n+1:2*n);U_V=u(1:p.nu);
Uc=p.mat.p2c*U;Vc=p.mat.p2c*V;

par=u(p.nu+1:end);
L=par(1);r_1=par(2);r_2=par(3);theta_1=par(4);
theta_2=par(5);J=par(6);alpha=par(7);beta=par(8);

f1=alpha-U+U.^2.*V+(alpha+beta-U).^3;
f2=beta-U.^2.*V+(beta/(alpha+beta)^2-V).^3;
f=[f1;f2]; % semilin.nonlinearity

[c1,c2]=p.fuha.Mixed_term(Uc,Vc,theta_1,theta_2); % quasilin. coefficient,

gr=p.pdeo.grid; fem=p.pdeo.fem;
[K12,~,~]=fem.assema(gr,c1,0,0); % assemble matrix for cross-diff
[K21,~,~]=fem.assema(gr,c2,0,0); % assemble matrix for cross-diff
K=p.mat.K; 

r=[J*r_1^2/4*K 0*K; 0*K J*r_2^2/4*K]*[U.*V;U.*V]/L^2+[0*K -r_1*J*K12/3; r_2*J*K21/3  0*K]*U_V/L^2-p.mat.M*f; % putting rhs together
end


function [c1,c2]=Mixed_term(u,v,theta_1,theta_2) % diffusion tensor, for \pa_u div(c(u)grad v)
c1=[u*cos(theta_1) -u*sin(theta_1);u*sin(theta_1) u*cos(theta_1)]';
c2=[v*cos(theta_2) -v*sin(theta_2);v*sin(theta_2) v*cos(theta_2)]';
end

function out=outfn(p,u)
% output to bifurcation diagram function
% u=u(1:p.nu);n=p.np;u1=u(1:n); u2=u(n+1:2*n); % Seperate parameters and variables
out=[u(p.nu+1:end); % parameters
    max(u(1:p.np));
    min(u(1:p.np))];
end
