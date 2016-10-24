///////////////////////////////////////
//      systemeSolaire.sce
///////////////////////////////////////

folder = 'W:\maths\Mini-Projet-2\'
exec(folder+'lesAstres.sce');
exec(folder+'lesFonctions.sce');

indiceSoleil = 1;
indiceTerre = 0.5;
indiceLune = 0.2;

disp(coucherMatrice(xCube, yCube, zCube));

/////////////////////////////////////
//          L'animation            //
/////////////////////////////////////

for i=1:0.1:4
    drawlater()
    clf(); //Clear
    a=gca() //get the current axes
    a.data_bounds=[-1 -1 -1; 
                    4  2  2 ];
    
    //Soleil Vert
    plot3d(xCube*indiceSoleil, yCube*indiceSoleil, zCube*indiceSoleil);
    e=gce(); e.color_mode=3; // change color
    
    // Voiture Bleue
    plot3d( (xOcta+10)*indiceLune, yOcta*indiceLune, zOcta*indiceLune);
    
    //Mars
    plot3d( (xTetra+3+indiceSoleil)*indiceTerre, (yTetra+0.5+indiceTerre)*indiceTerre, (zTetra)*indiceTerre );
    e=gce(); e.color_mode=5; // change color

    drawnow();
end
