ccc

[x,y]=meshgrid(linspace(0,1,100),linspace(0,1,100));

i=1;
for n=0:2
    for m=0:2
        
        Z(:,:,i)=cos(n*pi*x).*cos(m*pi*y);
        i=i+1;
    end
end

%%
close all
for i=1:9
    subplot(3,3,i)
    pcolor(x,y,Z(:,:,i))
    shading interp
    caxis([-1 1])
    
    if i<4
        title(['$n=$',num2str(i-1)])
    end
    if mod(i,3)==1
        ylabel(['$m=$',num2str(i/3-1/3)])
    end
    xticklabels({})
    yticklabels({})
    axis square
end

export_fig(['..\..\Latex\Pictures\Square_frequencies.png'],'-r300')

