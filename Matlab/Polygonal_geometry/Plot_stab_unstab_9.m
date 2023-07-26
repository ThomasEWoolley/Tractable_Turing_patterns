clear all
close all
clc
set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
figure('Units','Normalized','position',[0 0.05 1/4 1/3])

load Plotting_indices_n9p3.mat
[~,I]=sort(Possible_vecs(:,5));
Possible_vecs=Possible_vecs(I,:);
Unstable_sol_index=Possible_vecs(Possible_vecs(:,3)==1,:);
Stable_sol_index=Possible_vecs(Possible_vecs(:,3)==0,:);
    
tiledlayout(2,2);
nexttile
FileNames=dir([subFolderNames{Stable_sol_index(1,1)},'/pt*']);
FileNames = {FileNames.name};
ps=loadp(subFolderNames{Stable_sol_index(1,1)},FileNames{Stable_sol_index(1,2)}(1:end-4));
[ps.u(end), max(ps.u(1:ps.np)), min(ps.u(1:ps.np)),Stable_sol_index(1,1),Stable_sol_index(1,2)]
 Turner=(ps.mesh.bp(1,:)+1i*ps.mesh.bp(2,:)).*exp(-1i*2*pi/9*2);ps.mesh.bp=[real(Turner);imag(Turner)];
pdeplot(ps.mesh.bp, ps.mesh.be, ps.mesh.bt,'xydata',ps.u(1:ps.np))
title('$R=3$, Stable','interpreter','Latex')
formatter
colorbar

nexttile
FileNames=dir([subFolderNames{Unstable_sol_index(1,1)},'/pt*']);
FileNames = {FileNames.name};
pu=loadp(subFolderNames{Unstable_sol_index(1,1)},FileNames{Unstable_sol_index(1,2)}(1:end-4));
% Turner=(pu.mesh.bp(1,:)+1i*pu.mesh.bp(2,:)).*exp(1i*2*pi/8*4);pu.mesh.bp=[real(Turner);imag(Turner)];
[pu.u(end), max(pu.u(1:pu.np)), min(pu.u(1:pu.np)),Unstable_sol_index(1,1),Unstable_sol_index(1,2)]
pdeplot(pu.mesh.bp, pu.mesh.be, pu.mesh.bt,'xydata',pu.u(1:pu.np))
title('$R=3$, Unstable','interpreter','Latex')
formatter

load Plotting_indices_n9p4.mat
[~,I]=sort(Possible_vecs(:,5));
Possible_vecs=Possible_vecs(I,:);
Unstable_sol_index=Possible_vecs(Possible_vecs(:,3)==1,:);
Stable_sol_index=Possible_vecs(Possible_vecs(:,3)==0,:);

nexttile
FileNames=dir([subFolderNames{Stable_sol_index(1,1)},'/pt*']);
FileNames = {FileNames.name};
ps=loadp(subFolderNames{Stable_sol_index(1,1)},FileNames{Stable_sol_index(1,2)}(1:end-4));
[ps.u(end), max(ps.u(1:ps.np)), min(ps.u(1:ps.np)),Stable_sol_index(1,1),Stable_sol_index(1,2)]
% ps.mesh.bp=[real((ps.mesh.bp(1,:)+1i*ps.mesh.bp(2,:)).*exp(1i*2*pi/5));imag((ps.mesh.bp(1,:)+1i*ps.mesh.bp(2,:)).*exp(1i*2*pi/5))];
pdeplot(ps.mesh.bp, ps.mesh.be, ps.mesh.bt,'xydata',ps.u(1:ps.np))
title('$R=4$, Stable','interpreter','Latex')
formatter

nexttile
FileNames=dir([subFolderNames{Unstable_sol_index(1,1)},'/pt*']);
FileNames = {FileNames.name};
pu=loadp(subFolderNames{Unstable_sol_index(1,1)},FileNames{Unstable_sol_index(1,2)}(1:end-4));
Turner=(pu.mesh.bp(1,:)+1i*pu.mesh.bp(2,:)).*exp(1i*2*pi/7*2);pu.mesh.bp=[real(Turner);imag(Turner)];
[pu.u(end), max(pu.u(1:pu.np)), min(pu.u(1:pu.np)),Unstable_sol_index(1,1),Unstable_sol_index(1,2)]
pdeplot(pu.mesh.bp, pu.mesh.be, pu.mesh.bt,'xydata',pu.u(1:pu.np))
title('$R=4$, Unstable','interpreter','Latex')
formatter

export_fig('./Pictures/n9_stab_unstab.png','-r300')

function formatter
caxis([0.6 1.4])
axis vis3d
axis equal
% axis square
axis tight
axis off
colormap('default')
colorbar off
set(gca,'fontsize',15)
end