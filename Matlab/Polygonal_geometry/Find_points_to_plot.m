close all
clear all
clc
n=5;


point=4.2;


D=dir(['./Corners_',num2str(n),'_*']);
dirFlags = [D.isdir];
subFolders = D(dirFlags);
subFolderNames = {subFolders.name};
l=1;


for i=1:length(subFolderNames)
    
    FileNames=dir([subFolderNames{i},'/pt*']);
    FileNames = {FileNames.name};
    
    for j=1:length(FileNames)
        p=loadp(subFolderNames{i},FileNames{j}(1:end-4));
        
        if abs(p.u(end)-point)<0.1
           Possible_vecs(l,:)=[i,j,p.branch(3,end),~ismember(p.branch(2,end),[-2 -1 1 2]),abs(p.u(end)-point)]; 
           l=l+1;
        end
    end
    
end
save(['Plotting_indices_n',num2str(n),'p',num2str(point),'.mat'],'Possible_vecs','subFolderNames')



function formatter
caxis([0.4 1.7])
axis equal
axis off
colormap('default')
colorbar off
set(gca,'fontsize',15)
end