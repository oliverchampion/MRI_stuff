function sol = fit_stuff(WM,GM,data,x0)
    %% this function is written by Oliver Gurney-Champion (o.j.gurney-champion@amsterdamumc.nl)
    % this function determines the concentration of a metabolite in the WM
    % and GM.
    % WM = vector with fraction of white matter in voxels
    % GM = vector with fraction of grey matter in voxels
    % data = vector with the total concentration of the metabolite
    % optional: x0 is initial guess of the concentration of the metabolite
    % per voxel
    %
    % sol(1) = concentration in WM
    % sol(2) = concentration in GM
    %

    if ~exist('x0','var')
        sprintf('no initial guess was given; default of [0.1, 0.1]  was used instead')
        x0=[0.1,0.1];
    end
    
    my_fun=@(y) sum((WM*y(1)+GM*y(2)-data).^2);
    sol = fminsearch(my_fun,x0);
end
    