// laLune.sce

clear; xdel(winsid());

// Vertices
x(1)=1; y(1)=0; z(1)=0;
x(2)=0; y(2)=2; z(2)=0;
x(3)=0; y(3)=0; z(3)=3;

// Draw patch
figure(1);
plot3d(x,y,z);

// Axes settings
xlabel("x",'fontsize',2);
ylabel("y",'fontsize',2);
zlabel("z",'fontsize',2);
h_axes = gca();
h_axes.font_size = 2;
h_axes.isoview = "on";
h_axes.box = "off";
h_axes.rotation_angles = [59,52];
h_axes.data_bounds = [-1.5,-0.5,0;2.5,2.5,3];
xgrid;
