clear all
close all
clc
set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));

figure('Units','Normalized','position',[0 0.05 1/3 .5])
subplot(2,2,1)

n=6;
fn='Corners_';
plotbrastab([fn,num2str(n)],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)

plotbraunstab([fn,num2str(n)],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)



formatter(n)

subplot(2,2,3)

n=8;
fn='Corners_';


plotbrastab([fn,num2str(n)],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_b_bp3_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b_bp3_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_29'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_29'],'ms',0,'cmp',3)

plotbraunstab([fn,num2str(n)],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_b_bp3_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_b_bp3_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_29'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_29'],'ms',0,'cmp',3)

formatter(n)


subplot(2,2,2)
n=10;
fn='Corners_';


plotbrastab([fn,num2str(n)],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)


plotbraunstab([fn,num2str(n)],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)
formatter(n)

subplot(2,2,4)
n=200;
fn='Corners_';


plotbrastab([fn,num2str(n)],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)

plotbraunstab([fn,num2str(n)],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)

formatter(n)


export_fig('./Pictures/Bifs_6_200.png','-r300')


function formatter(n)
title(['$n=$ ',num2str(n)],'interpreter','latex')
xlabel('$R$','interpreter','latex')
ylabel('$\max(u) \& \min(u)$','interpreter','latex')
set(gca,'fontsize',15)
axis([2 5 0 2])
end