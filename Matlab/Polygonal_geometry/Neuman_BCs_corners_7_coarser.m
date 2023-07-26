%% Code for cleaning folders and memory
close all;clc;keep pphome;
Fname='Corners_7';

    if exist(Fname, 'dir')
       rmdir([Fname,'*'],'s')
    end

p=[]; p=stanparam(p); % Setting up basic p structure
p.plot.auxdict={'L','max u_1','min u_1'}; % Parameter names (not needed, but nice)
par=           [ 2]; % Parameters used in functions and Jacobian
p.fuha.outfu=@outfn; % Output function to be plotted, names are in above.
p.nc.ilam=1; % Parameter number to continue over
p.plot.bpcmp=2; % Which component of output function to plot.
p.plot.pcmp=1; % Component for plotting
huclean(p); % Set up figures in nice way

p.sw.sfem=-1; % Use OOPDE settings. Otherwise 0/1 for full/preassembled FEM settings
p.nc.neq=2; % Number of equations

p.fuha.sG=@sG; % Functions to be solved
p.sw.jac=0; % Use numeric Jacobian.

p.dim=1; % Spatial dimensions


% pde=Polys4(1/sqrt(3),4,3,.05); p.pdeo=pde; 
pde=Polys4(1,4,7,.1); p.pdeo=pde; 
% pde=Polys4(1/sqrt(2),4,4,.01); p.pdeo=pde;

p.np=pde.grid.nPoints; p.nu=2*p.np; p.sol.xi=1/(p.nu); 
[po,t,e]=getpte(p); p.mesh.bp=po; p.mesh.bt=t; p.mesh.be=e;

pdemesh(po,e,t);

p.fuha.cfu=@cf; % Semi-implicit part (in functions and Jacobian)
p.sw.verb=0; % Verbosity of calculation

p.sw.bifcheck=2; % Calculate bifurcations using eigenvalues, 0 turn off, 1 use LU decomposition
p.sw.spcalc=1; % Calculate eigenvalues (0/1 Eigenvalue computations off/on)
p.nc.neig=min(20,p.np); % Number of eigenvalues to calculate
p.nc.tol=1e-11; % Tolerance for finding branch

p.sol.ds=0.001; % Arclength step
p.nc.dsmin=1e-7; % Arclength minimum steplength
p.nc.dsmax=0.1; % Arclength max steplength
p.nc.dlammax=0.1; % Maximum step in the parameter
p.nc.lammax=7; % Max parameter value
p.nc.lammin=0; % Min parameter value
p.file.smod=10; % Output every n steps

p.plot.pstyle=1; %0 only plot the FEM mesh; 1 mesh-plot; 2 density-plot
p.sw.para=1; % Continuation variable 1: automatic switching via ? <> p.nc.lamdtol (0: natural parameter.; 2: arclength).

p.nc.mu1=0.5; % Threshold for bifcheck=2
p.nc.mu2=1e-5; % Threshold for bifcheck=2
p.nc.bisecmax=100;
p.nc.dsminbis=1e-12;


u=ones(p.np,1); v=0.9*ones(p.np,1); %ICs
p.u=[u; v; par']; % Complete description

p=oosetfemops(p);
p.nc.nsteps=50;
p=setfn(p,Fname,0.01);
p=cont(p,500);
%%
% for i=1:22
%  huclean(p); % Set up figures in nice way
p=swibra(Fname,'bpt1',[Fname,'_bp1_b'],-0.001);
p.plot.bpcmp=2;
p.plot.pcmp=1; % Component for plotting
p.nc.dsmax=0.01; % Arclength max steplength
p.nc.lammax=20; % Max parameter value
p=cont(p,1000);
%%
% for i=1:22
%  huclean(p); % Set up figures in nice way
p=swibra(Fname,'bpt1',[Fname,'_bp1_f'],0.001);
p.plot.bpcmp=2;
p.plot.pcmp=1; % Component for plotting
p.nc.dsmax=0.01; % Arclength max steplength
p.nc.lammax=20; % Max parameter value
p=cont(p,1000);
%%

p=swibra(Fname,'bpt2',[Fname,'_bp2_f'],0.001);
p.plot.bpcmp=2;
p.plot.pcmp=1; % Component for plotting
p.nc.dsmax=0.01; % Arclength max steplength
p.nc.lammax=20; % Max parameter value
p=cont(p,1000);
%%

p=swibra(Fname,'bpt2',[Fname,'_bp2_b'],-0.001);
p.plot.bpcmp=2;
p.plot.pcmp=1; % Component for plotting
p.nc.dsmax=0.01; % Arclength max steplength
p.nc.lammax=20; % Max parameter value
p=cont(p,1000);

%%

p=swibra(Fname,'bpt3',[Fname,'_bp3_b'],-0.001);
p.plot.bpcmp=2;
p.plot.pcmp=1; % Component for plotting
p.nc.dsmax=0.01; % Arclength max steplength
p.nc.lammax=20; % Max parameter value
p=cont(p,1000);
%%

p=swibra(Fname,'bpt3',[Fname,'_bp3_f'],0.001);
p.plot.bpcmp=2;
p.plot.pcmp=1; % Component for plotting
p.nc.dsmax=0.01; % Arclength max steplength
p.nc.lammax=20; % Max parameter value
p=cont(p,1000);



function r=sG(p,u) % pde for Schnak
par=u(p.nu+1:end); %{'a', 'b','d'}
u=u(1:p.nu);n=p.np;u1=u(1:n); u2=u(n+1:2*n); % Seperate parameters and variables
L=par(1);
f1=0.1-u1+u1.^2.*u2;
f2=0.9-u1.^2.*u2;
f=[f1;f2]; % Nonlinear kinetics

gr=p.pdeo.grid; fem=p.pdeo.fem; % Grid components
K=p.mat.K; N=spd(zeros(n,1));

Qu=p.mat.Qu; Qv=p.mat.Qv; bcu=p.mat.Gu; bcv=p.mat.Gv;
r=[K/L^2 N; N 10*K/L^2]*[u1;u2]-p.mat.M*f; % putting the equation together
end

function A=spd(v)
n=length(v);
A=spdiags(v,0,n,n);
end


function out=outfn(p,u)
% output to bifurcation diagram function
% u=u(1:p.nu);n=p.np;u1=u(1:n); u2=u(n+1:2*n); % Seperate parameters and variables
out=[u(p.nu+1:end); % parameters
    max(u(1:p.np));
    min(u(1:p.np))];
end