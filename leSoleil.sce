//  leSoleil.sce

//Clear
clear; xdel(winsid());

/////////////////////////////////////
//           Les formes            //
/////////////////////////////////////

//Soleil
xCube = [ 0 0 0 1 1 0; 
          1 1 0 1 0 1;  
          1 1 0 1 0 1; 
          0 0 0 1 1 0 ];

yCube = [ 1 0 1 1 0 1; 
          1 0 1 1 0 1;
          0 1 0 0 0 1;
          0 1 0 0 0 1 ];

zCube = [ 0 1 0 0 0 0; 
          0 1 1 1 0 0;
          0 1 1 1 1 1;
          0 1 0 0 1 1 ];

//plot3d(xCube, yCube, zCube);

//Lune
xOcta = [ 1 1 1 1  1  1  1  1;
          0 0 2 0  0  0  2  0;
          0 2 2 2  0  2  2  2 ];

yOcta = [ 2 2 2 2 -2 -2 -2 -2;
          0 0 0 0  0  0  0  0;
          0 0 0 0  0  0  0  0 ];

zOcta = [ 1 1 1 1  1  1  1  1;
          0 0 2 2  0  0  2  2;
          2 0 0 2  2  0  0  2 ];

//plot3d(xOcta, yOcta, zOcta);

//Terre
xTetra = [ 1 1 1  1  1  1;
           0 0 1  0  0  1;
           2 1 2  2  1  2 ];

yTetra = [ 2 2 2 -2 -2 -2;
           0 0 0  0  0  0;
           0 0 0  0  0  0 ];

zTetra = [ 1 1 1  1  1  1;
           0 0 2  0  0  2;
           0 2 0  0  2  0 ];

//plot3d(xTetra, yTetra, zTetra);

/////////////////////////////////////
//          L'animation            //
/////////////////////////////////////

//for i=1:0.1:4
//    drawlater()
//    clf()
//    a=gca() //get the current axes
//    a.data_bounds=[-1 -1 -1; 
//                    4  2  2 ];
//    
//    //Soleil Vert
//    plot3d(xCube, yCube, zCube);
//    e=gce(); e.color_mode=3; // change color
//    
//    // Voiture Bleue
//    
//    
//    //Mars
//    plot3d(xCube+2, yCube, zCube);
//    e=gce(); e.color_mode=5; // change color
//
//    drawnow();
//end
