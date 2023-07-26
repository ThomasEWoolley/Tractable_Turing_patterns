ccc

names={'pnpn','ppnn','nnpp','npnn','nnnn','nppn','npnp','nnpn'};

for i=names
Name=['Parameter_regions_for_Jacobians_',i{:}];
eval(Name);
end