function tc_3()
%%
szX = [8, 8, 8, 5, 3];
szF = [3, 2, 2, 5, 4];
szB = [1, 4];
stride = [3,2,2];
pad = [0,0, 0,0, 0,0];
desc = 'cpu array, regular case, stride bigger than 1';

h = t_c3d.dg_cpu(szX,szF,szB, stride, pad, desc);

hu = t_c3d.unit(h);
hu.run();
%%
szX = [7, 7, 7, 5, 3];
szF = [3, 2, 2, 5, 1];
szB = [1, 4];
stride = [1,3,2];
pad = [0,0, 0,0, 0,0];
desc = 'cpu array, regular case, stride bigger than 1';

h = t_c3d.dg_cpu(szX,szF,szB, stride, pad, desc);

hu = t_c3d.unit(h);
hu.run();
