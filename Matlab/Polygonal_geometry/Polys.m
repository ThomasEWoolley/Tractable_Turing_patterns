classdef Polys< pde
    % diskpdeo2: alternative disk pdeo, generates radially symmetric mesh
    %  pdeo=diskpdeo2(R,nr,nphi)
    % R=radius, nr,nphi=#of discret.points in r and phi,
    % based on pts2dom meshing (points2domain, for octave)
    methods(Access = public)
        function o=Polys(R,nr,nphi,hmax) % constructor
            o.grid=grid2D; r=linspace(0,R,nr); x=[]; y=[];
            for i=1:nr;
                %        th=linspace(0,2*pi,nphi); th=th(1:end-1);
                %        x=[x r(i)*cos(th)]; y=[y r(i)*sin(th)];
                z=r(i)*exp(1i*[0:nphi-1]*2*pi/nphi);
                x=[x real(z)];
                y=[y imag(z)];
            end
            o.grid.pts2dom([x;y]); % use point2domain meshing
            h=1;
            while h > hmax;
                o.grid.refineMesh;
                h = h/2;
            end
            o.fem=lagrange12D;
        end
    end
    methods(Access = protected) % only here since required by pde-class
        function r=df(~,~,~); r=0; end % rather use p.fuha.sG in pderesi
    end
end

