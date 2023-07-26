close all
clc

plotbra('Corners_4','cmp',2)
plotbra('Corners_4_bp1_bp1','cmp',2)
plotbra('Corners_4','cmp',3)
plotbra('Corners_4_bp1_bp1','cmp',3)

YY=0;
epsilon=0.1;
L=linspace(pi,pi+1);

yp=1+(3*sqrt(6)*sqrt(pi*(19*YY^4 + 12*YY^2 + 19)*(L-pi)/0.1^2*(YY^2 + 1)))/(5*pi*(19*YY^4 + 12*YY^2 + 19))*epsilon*10/3;
yn=1-(3*sqrt(6)*sqrt(pi*(19*YY^4 + 12*YY^2 + 19)*(L-pi)/0.1^2*(YY^2 + 1)))/(5*pi*(19*YY^4 + 12*YY^2 + 19))*epsilon*10/3;
plot(L,yp,'b','linewidth',3)
plot(L,yn,'b','linewidth',3)


YY=1;
yp=1+2*(3*sqrt(6)*sqrt(pi*(19*YY^4 + 12*YY^2 + 19)*(L-pi)/0.1^2*(YY^2 + 1)))/(5*pi*(19*YY^4 + 12*YY^2 + 19))*epsilon*10/3;
yn=1-2*(3*sqrt(6)*sqrt(pi*(19*YY^4 + 12*YY^2 + 19)*(L-pi)/0.1^2*(YY^2 + 1)))/(5*pi*(19*YY^4 + 12*YY^2 + 19))*epsilon*10/3;
plot(L,yp,'g','linewidth',3)
plot(L,yn,'g','linewidth',3)

p.plot.pcmp=1; % Component for plotting