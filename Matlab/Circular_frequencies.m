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
figure('Units','Normalized','position',[0 0.05 1/3 1/3])

[r,theta]=meshgrid(linspace(0,1,100),linspace(0,2*pi,100));


j=1;
for p=0:2

    k=BessDerivZeros(p,1);
    J=besselj(p,k*r);

    Z(:,:,j)=J.*cos(p*theta);
    j=j+1;
end



for i=1:3
    subplot(1,3,i)
    pcolor(r.*cos(theta),r.*sin(theta),Z(:,:,i))
    shading interp
    caxis([-1 1])

    title(['$p=$ ',num2str(i-1)])
    xticklabels({})
    yticklabels({})
    axis square
    axis off
    set(gca,'fontsize',15)
end


export_fig(['..\Latex\Pictures\Circle_frequencies.png'],'-r300')
