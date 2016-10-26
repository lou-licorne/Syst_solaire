///////////////////////////////////////
//      systemeSolaire.sce
///////////////////////////////////////

//folder = 'W:\maths\Mini-Projet-2\'    //Folder Fac
folder = '/home/arthur/Documents/Scilab/Mini-Projet 2/';    //Folder portable Arthur
//folder = 'louping/licorne/'   //Folder Louison
exec(folder+'lesAstres.sce');
exec(folder+'lesFonctions.sce');

indiceSoleil = 1;
indiceTerre = 0.5;
indiceLune = 0.2;

/////////////////////////////////////
//          L'animation            //
/////////////////////////////////////

i = 0;
//while 1   // boucle infinie
    i = i + 0.1;
    
    drawlater()
//    clf(); //Clear
    a=gca() //get the current axes
    a.data_bounds=[-1 -1 -1; 
                    4  2  2 ];
    
    //Soleil Vert
    Soleil = coucherMatrice(xCube*indiceSoleil, yCube*indiceSoleil, zCube*indiceSoleil)
    rSoleil = rotation( Soleil, 0, 0, (i*%pi/10) );
    disp(rSoleil);
    plot3d(rSoleil(1, :), rSoleil(2,:), rSoleil(3,:) );
    e=gce(); e.color_mode=3; // change color
    
    // Voiture Bleue
    plot3d( (xOcta+10)*indiceLune, yOcta*indiceLune, zOcta*indiceLune);
    
    //Mars
    plot3d( (xTetra+3+indiceSoleil)*indiceTerre, (yTetra+0.5+indiceTerre)*indiceTerre, (zTetra)*indiceTerre );
    e=gce(); e.color_mode=5; // change color

    drawnow();
//end
