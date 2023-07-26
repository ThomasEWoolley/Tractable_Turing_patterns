clear all
close all
clc
set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
figure('Units','Normalized','position',[0 0.05 1/4 1/3])
list_factory = fieldnames(get(groot,'factory'));
index_interpreter = find(contains(list_factory,'Interpreter'));
for i = 1:length(index_interpreter)
    default_name = strrep(list_factory{index_interpreter(i)},'factory','default');
    set(groot, default_name,'latex');
end
n=4;
fn='Corners_test_';
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n)],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',3)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbraunstab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbraunstab([fn,'4_L5_f'],'ms',0,'cmp',2)
plotbraunstab([fn,'4_L5_f'],'ms',0,'cmp',3)
% 

plotbrastab([fn,num2str(n)],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n)],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp1_f'],'ms',0,'cmp',3)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',2)
plotbrastab([fn,num2str(n),'_bp2_f'],'ms',0,'cmp',3)
plotbrastab([fn,'4_L5_f'],'ms',0,'cmp',2)
plotbrastab([fn,'4_L5_f'],'ms',0,'cmp',3)

%%
YY=0;
epsilon=0.1;
L=linspace(pi,pi+0.2);

% yp=1+(3*sqrt(6)*sqrt(pi*(19*YY^4 + 12*YY^2 + 19)*(L-pi)/epsilon^2*(YY^2 + 1)))/(5*pi*(19*YY^4 + 12*YY^2 + 19))*epsilon*10/3;
% yn=1-(3*sqrt(6)*sqrt(pi*(19*YY^4 + 12*YY^2 + 19)*(L-pi)/epsilon^2*(YY^2 + 1)))/(5*pi*(19*YY^4 + 12*YY^2 + 19))*epsilon*10/3;

yp=1+(sqrt(6)*sqrt(19)/95*10*sqrt((L-pi)/pi));
yn=1-(sqrt(6)*sqrt(19)/95*10*sqrt((L-pi)/pi));

plot(L,yp,'b--','linewidth',3)
plot(L,yn,'b--','linewidth',3)


% YY=1;
% yp=1+2*(3*sqrt(6)*sqrt(pi*(19*YY^4 + 12*YY^2 + 19)*(L-pi)/0.1^2*(YY^2 + 1)))/(5*pi*(19*YY^4 + 12*YY^2 + 19))*epsilon*10/3;
% yn=1-2*(3*sqrt(6)*sqrt(pi*(19*YY^4 + 12*YY^2 + 19)*(L-pi)/0.1^2*(YY^2 + 1)))/(5*pi*(19*YY^4 + 12*YY^2 + 19))*epsilon*10/3;
% plot(L,yp,'y--','linewidth',3)
% plot(L,yn,'y--','linewidth',3)

yp=1+2*(sqrt(6)/25*10*sqrt((L-pi)/pi));
yn=1-2*(sqrt(6)/25*10*sqrt((L-pi)/pi));
plot(L,yp,'y--','linewidth',3)
plot(L,yn,'y--','linewidth',3)

xlabel('$R$')
ylabel('$\max(u)\, \&\, \min(u)$')
axis([3, 3.44 0.5 1.7])
export_fig(['../Latex/Pictures/Non_linear_comparison_square.png'],'-r300')