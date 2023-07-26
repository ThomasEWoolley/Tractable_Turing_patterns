ccc


M=mphload(['../Comsol/Tri_sq_circ.mph'],'Model');
Q=mphsolutioninfo(M);
%%
close all
figure('Units','Normalized','position',[0 0.05 1/3 0.85])
for i=1:6
    subplot(6,1,i)
    U=mpheval(M,'u','t',10000,'dataset','dset2','outersolnum',i);
    h=trisurf(triangulation(double(U.t+1)',U.p(1,:)',U.p(2,:)',U.d1(1,:)'));
    axis equal
    axis([-8.85 10.6 -4 4])

% axis tight
%     xlim([-8.85 10.6])
    
%     axis tight
    axis off
%     set(gca,'XTick',[], 'YTick', [])
    view(2)
    
    shading interp
    title(['$R=$ ',num2str(Q.sol2.values{2}(i))],'interpreter','latex')
    set(gca,'fontsize',15)
    
    caxis([0.6 1.5])
    set(gca,'fontsize',12)
%     if mod(i,5)==1
% colorbar('location','southoutside')
%     end

end

export_fig(['../Latex/Pictures/Tri_sq_circ.png'],'-r300')
