function p=oosetfemops(p)
gr=p.pdeo.grid; fem=p.pdeo.fem; 
[K,M,~]=fem.assema(gr,1,1,1);
p.mat.M=[M 0*M; 0*M M]; p.mat.K=K;

E=center2PointMatrix(gr); % to map element differentiation matrices to nodal ones
p.mat.p2c=point2CenterMatrix(gr); % to interpolate from nodes to element centers
end 
