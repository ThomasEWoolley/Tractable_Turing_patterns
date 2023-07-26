clear all
close all
clc
set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
figure('Units','Normalized','position',[0 0.05 1/3 0.85])

n=3;
fn='Corners_';
subplot(3,1,1)


plotbrastab([fn,num2str(n)],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_bp1_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_bp1_b'],'ms',0,'cmp',3)

plotbraunstab([fn,num2str(n)],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_bp1_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_bp1_b'],'ms',0,'cmp',3)


formatter(n)
axis([2 6 0 2])

%  %%
% clear all
% close all
% clc

subplot(3,1,2)
n=4;
fn='Corners_test_';

plotbraunstab([fn,num2str(n)],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp2_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp2_b'],'ms',0,'cmp',3)
plotbraunstab([fn,'4_L5_f'],'ms',0,'cmp',2)
plotbraunstab([fn,'4_L5_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_b_bp3_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_b_bp3_b'],'ms',0,'cmp',3)


plotbrastab([fn,num2str(n)],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp2_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp2_b'],'ms',0,'cmp',3)
plotbrastab([fn,'4_L5_f'],'ms',0,'cmp',2)
plotbrastab([fn,'4_L5_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_b_bp3_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b_bp3_b'],'ms',0,'cmp',3)

formatter(n)
axis([2 6 0 2])
% %%
% clear all
% close all
% clc

subplot(3,1,3)
n=5;
fn='Corners_';
plotbrastab([fn,num2str(n)],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)

plotbraunstab([fn,num2str(n)],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)



formatter(n)
axis([2 6 0 2])

export_fig('./Pictures/Bifs_2_5.png','-r300')
%%
clear all
close all
clc

figure('Units','Normalized','position',[0 0.05 1/3 0.85])
subplot(4,2,1)

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

% %%
% clear all
% close all
% clc

subplot(4,2,3)
n=7;
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
plotbrastab([fn,num2str(n),'_41'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_41'],'ms',0,'cmp',3)

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
plotbraunstab([fn,num2str(n),'_41'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_41'],'ms',0,'cmp',3)

formatter(n)

% %%
% clear all
% close all
% clc
subplot(4,2,5)

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

% %%
% clear all
% close all
% clc

subplot(4,2,7)
n=9;
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

n=10;
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

formatter(9)

% %%
% clear all
% close all
% clc

subplot(4,2,2)
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

% %%
% clear all
% close all
% clc

subplot(4,2,4)
n=100;
fn='Corners_';



plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_35100'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_35100'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_31100'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_31100'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_311001'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_311001'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_b'],'ms',0,'cmp',3)

plotbraunstab([fn,num2str(n)],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp3_b'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_35100'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_35100'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_31100'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_31100'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_311001'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_311001'],'ms',0,'cmp',3)

formatter(n)

% %%
% clear all
% close all
% clc

subplot(4,2,6)
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


% export_fig('./Pictures/Bifs_6_200.png','-r300')


function formatter(n)
title(['$n=$ ',num2str(n)],'interpreter','latex')
xlabel('$R$','interpreter','latex')
ylabel('$\max(u) \& \min(u)$','interpreter','latex')
set(gca,'fontsize',15)
axis([2 5 0 2])
end