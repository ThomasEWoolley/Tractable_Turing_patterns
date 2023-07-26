% ccc
[a,b,t2]=meshgrid(linspace(0,1),linspace(0,1),linspace(0,pi));


E1=(-a.^3-3*b.*a.^2+(-3*b.^2-1).*a-b.^3+b) < 0;
i=1;

figure('position',[0 0.1 1 1/3])
for t1=linspace(0,pi,25)
    E2=(4*cos(t2)*cos(t1)-6*cos(t2)+3*cos(t1)) >0;
    E3=-b+(4/3*b).*cos(t1)+(1/3)*b.*cos(t2)+(1/4)*a+...
        2*sqrt(2)*sqrt(b.*(4*cos(t2)*cos(t1)-6*cos(t2)+...
        3*cos(t1)).*(a+b).^2./(36*a+36*b)) < 0;

    E=E1.*E2.*E3;

    subplot(5,5,i)
    isosurface(a,b,t2,E)
    xlabel('a')
    ylabel('b')
    zlabel('t2')
    title(num2str(t1))
   axis([0 1 0 1 0 pi])
   view([-35 20])
       camlight; lighting phong
    i=i+1;
end