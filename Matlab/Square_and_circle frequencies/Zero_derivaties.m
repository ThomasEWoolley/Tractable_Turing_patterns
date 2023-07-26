ccc

x=linspace(0,12,100);

plot(x,besselj(0,x),'r')
hold on
plot(x,besselj(1,x),'b')
%plot(x,besselj(2,x))
xlabel('$k$')

ylim([-1 1])

Z=BessDerivZeros(0:1,1:3);



for i=1:3
    x=Z(1,i);
    y=besselj(0,Z(1,i));
    p=plot(x,y,'ro');

    if i==1
    ha = annotation('textarrow','String',{'First zero';'derivative'});  % store the arrow information in ha
    end
    if i==2
    ha = annotation('textarrow','String',{'Second zero';'derivative'});  % store the arrow information in ha
    end
    if i==3
    ha = annotation('textarrow','String',{'Third zero';'derivative'});  % store the arrow information in ha
    end
    ha.Parent = gca;           % associate the arrow the the current axes
    ha.X = [x x];          % the location in data units
    ha.Y = [1.2 y];
    ha.LineWidth  = 2;
end

for i=1:3
    plot(Z(2,i),besselj(1,Z(2,i)),'bo')
end
axis tight
ylim([-1 2])
legend('$J_0(k)$','$J_1(k)$','location','no','Orientation','horizontal')
export_fig('..\..\Latex\Pictures\Zero_derivs.png','-r300')
