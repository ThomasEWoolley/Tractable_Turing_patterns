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

plotbrastab('Corners_3','ms',0,'cmp',2)
plotbrastab('Corners_3_bp1_b','ms',0,'cmp',2)
plotbrastab('Corners_3','ms',0,'cmp',3)
plotbrastab('Corners_3_bp1_b','ms',0,'cmp',3)

plotbraunstab('Corners_3','ms',0,'cmp',2)
plotbraunstab('Corners_3_bp1_b','ms',0,'cmp',2)
plotbraunstab('Corners_3','ms',0,'cmp',3)
plotbraunstab('Corners_3_bp1_b','ms',0,'cmp',3)

YY=0;
epsilon=0.1;
lc=4*sqrt(2)*pi/(3*sqrt(3));
L=linspace(lc-epsilon,lc+epsilon);

yn=1-(9*(L-lc)/epsilon*sqrt(2))/(20*pi)*epsilon*10/3*3;
yp=1+(9*(L-lc)/epsilon*sqrt(2))/(20*pi)*epsilon*10/3*1.5;

 yp=1+(L-lc)*(-1)*9*sqrt(6)/(4*pi);
 yn=1-(L-lc)*(-1)*9*sqrt(6)/(8*pi);
plot(L,yp,'b','linewidth',3)
plot(L,yn,'b','linewidth',3)

xlabel('$R$')
ylabel('$\max(u)\, \&\, \min(u)$')
axis([3, 4 0.5 1.5])
