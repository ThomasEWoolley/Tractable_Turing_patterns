close all
clear all
clc

set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
list_factory = fieldnames(get(groot,'factory'));
index_interpreter = find(contains(list_factory,'Interpreter'));
for i = 1:length(index_interpreter)
    default_name = strrep(list_factory{index_interpreter(i)},'factory','default');
    set(groot, default_name,'latex');
end
figure('Units','Normalized','position',[0 0.05 1/4 1/3])
x=linspace(0,12,100);

plot(x,besselj(0,x),'r','linewidth',3)
hold on
plot(x,besselj(1,x),'b','linewidth',3)
%plot(x,besselj(2,x))
xlabel('$k\rho$')



Z=BessDerivZeros(0:1,1:3);
axis tight
ylim([-2 2])


for i=1:3
    x=Z(1,i);
    y=besselj(0,Z(1,i));
    p=plot(x,y,'ro','linewidth',3);

    if i==1
    ha = annotation('textarrow','String',{'First zero';'derivative'});  % store the arrow information in ha
%     hb = annotation('arrow');  % store the arrow information in ha
    end
    if i==2
    ha = annotation('textarrow','String',{'Second zero';'derivative'});  % store the arrow information in ha
%     hb = annotation('arrow');  % store the arrow information in ha
    end
    if i==3
    ha = annotation('textarrow','String',{'Third zero';'derivative'});  % store the arrow information in ha
%     hb = annotation('arrow');  % store the arrow information in ha
    end
    ha.Parent = gca;           % associate the arrow the the current axes
    ha.X = [x x];          % the location in data units
    ha.Y = [1.2 y];
    ha.LineWidth  = 2;

    xb=Z(2,i);
    yb=besselj(1,Z(2,i));
%     hb.Parent = gca;           % associate the arrow the the current axes
%     hb.X = [x xb];          % the location in data units
%     hb.Y = [1.2 yb];
%     hb.LineWidth  = 2;



x1 = x;
x2 = xb;
y1 = 1.3;
y2 = yb+.1;
xL = xlim;
yL = ylim;
ah = gca;
aPos = ah.Position;
ahx = [aPos(1), aPos(1)+aPos(3)];
ahy = [aPos(2), aPos(2)+aPos(4)];
x1p = interp1(xL, ahx, x1);
x2p = interp1(xL, ahx, x2);
y1p = interp1(yL, ahy, y1);
y2p = interp1(yL, ahy, y2);
arh2 = annotation('arrow');
arh2.Units = 'normalized';
arh2.Position = [x1p, y1p, x2p-x1p, y2p-y1p];
arh2.Color = 'k';
arh2.LineWidth  = 2;
end

for i=1:3
    plot(Z(2,i),besselj(1,Z(2,i)),'bo','linewidth',3)
end

legend('$B_0(k\rho)$','$B_1(k\rho)$','location','s','Orientation','horizontal')
set(gca,'fontsize',15)
export_fig('..\Latex\Pictures\Zero_derivs.png','-r300')


%%
close all
clear all
clc

set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
list_factory = fieldnames(get(groot,'factory'));
index_interpreter = find(contains(list_factory,'Interpreter'));
for i = 1:length(index_interpreter)
    default_name = strrep(list_factory{index_interpreter(i)},'factory','default');
    set(groot, default_name,'latex');
end
figure('Units','Normalized','position',[0 0.05 1/4 1/3])
n=4;
Z=BessDerivZeros(0:n,1);
plot(0:n,Z,'ko','linewidth',3)
set(gca,'fontsize',15)
xlabel('$p$')
ylabel('$kR$')
export_fig('..\Latex\Pictures\First_deriv.png','-r300')
