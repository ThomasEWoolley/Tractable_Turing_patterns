ccc

[r,theta]=meshgrid(linspace(0,1,100),linspace(0,2*pi,100));

%%
j=1;
for p=0:2
    for i=1:3
k=BessDerivZeros(p,i);
J=besselj(p,k*r);

Z(:,:,j)=J.*cos(p*theta);
j=j+1;
    end
end


%%
close all
for i=1:9
    subplot(3,3,i)
    pcolor(r.*cos(theta),r.*sin(theta),Z(:,:,i))
    shading interp
    caxis([-1 1])
    
    if mod(i,3)==1
        ylabel(['$p=$',num2str(i/3-1/3)])
    end
    if i==1
        title({'First zero'; 'derivative'})
    end
        
    if i==2
        title({'Second zero'; 'derivative'})
    end
        
    if i==3
        title({'Third zero'; 'derivative'})
    end
    xticklabels({})
    yticklabels({})
    axis square
end
export_fig(['..\..\Latex\Pictures\Circle_frequencies.png'],'-r300')


% %%
% close all
% for i=7
%     
%     surf(r.*cos(theta),r.*sin(theta),Z(:,:,i))
%     shading interp
%     caxis([min(Z(:)) max(Z(:))])
%     
%     if mod(i,3)==1
%         ylabel(['$p=$',num2str(i/3-1/3)])
%     end
%     if i==1
%         title({'First zero'; 'derivative'})
%     end
%         
%     if i==2
%         title({'Second zero'; 'derivative'})
%     end
%         
%     if i==3
%         title({'Third zero'; 'derivative'})
%     end
%     xticklabels({})
%     yticklabels({})
%     axis square
% end


