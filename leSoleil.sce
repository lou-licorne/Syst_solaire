//  leSoleil.sce

clear; xdel(winsid());

a=gca() //get the current axes
a.data_bounds=[-10 -1 -1; 4 4  2 ]

x = [zeros(4, 2), ones( 4, 2), zeros(4, 1)];

y = ones(4, 5);
y(2:3,2:3) = 0;

z = [zeros(2, 5); ones( 2, 5)];


for i=1:0.1:40
    drawlater()
    clf()
    a=gca() //get the current axes
    a.data_bounds=[-11 -11 -1; 11 11  1 ]
    
    //Soleil Vert
    plot3d2(x, y, z);
    e=gce();
    e.color_mode=3; // change color
    
    // Voiture Bleue
    if i<=10 then
        disp(i);
        x = x+i;
        y = y+i;
        plot3d2(x, y, z);
    else
        if (i<=20) & (i>10) then
            
            plot3d2(x+i-10, y-i+10, z);
        else                     
            if (i<=30) & (i>20) then
                plot3d2(x-i+20, y-i+20, z);
            else
                plot3d2(x-i+30, y+i-30, z);
            end
        end
    end
    
    //Mars
    plot3d2(x+2, y, z);
    e=gce();
    e.color_mode=5; // change color

    drawnow();
end
