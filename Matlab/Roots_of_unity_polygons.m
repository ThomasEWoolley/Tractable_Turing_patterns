clear all
close all
clc
nl=7;
set(groot,'DefaultFigureColor',[1 1 1]);
addpath(genpath('C:\Users\smatw1\Dropbox\EF'));
figure('Units','Normalized','position',[0 0.05 1 1/3])

for n=3:nl
    subplot(1,nl-2,n-2)
    z=[];
    for j=0:n
        z(j+1)=exp(2*pi*1i/n*j);
    end
    x=real(z);
    y=imag(z);
    plot(x,y,'ko','linewidth',3)
    hold on
    plot(x,y,'k','linewidth',3)
    
    
    
    
    t=linspace(0,2*pi,100);
    for k=1:length(t)
        z(k)=exp(t(k)*1i);
    end
    xc=real(z);
    yc=imag(z);
    plot(xc,yc,'r','linewidth',1)
    
    axis equal
    axis([-1 1 -1 1])
    xlabel('$x$','interpreter','latex')
    ylabel('$y$','interpreter','latex')
    title(['$n=$ ',num2str(n)],'interpreter','latex')
    set(gca,'fontsize',20)
end


export_fig('../Latex/Pictures/Polygons.png','-r300')