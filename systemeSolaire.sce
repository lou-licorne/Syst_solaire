///////////////////////////////////////
//      systemeSolaire.sce
///////////////////////////////////////

//folder = 'W:\maths\Mini-Projet-2\'    //Folder Fac Lou
folder = 'W:\mathsInge\Mini-projet 2\';
//folder = '/home/arthur/Documents/Scilab/Mini-Projet 2/';    //Folder portable Arthur
//folder = 'louping/licorne/'   //Folder Louison
exec(folder+'lesAstres.sce');
exec(folder+'lesFonctions.sce');

/////////////////////////////////////
//          L'animation            //
/////////////////////////////////////

sol = soleil; te = terre; l=lune;
//afficheSoleil(sol);
//afficheTerre(te);
//afficheLune(lu);

//    while 1
for i = 1:500
    drawlater();
    clf();
    
    //  Le Soleil Vert
    sol = tourneSoleil(sol);
    afficheSoleil(sol);
    
    //  Mars One
    te = tourneTerre(te);
    te = tourneTerreSoleil(te);
    afficheTerre(te);
    
    //  Apollo 13
    l=tourneLune(l);
    l = tourneTerreSoleil(l);
    afficheLune(l);
    
    xpause((1/25)*100);
    drawnow();
end
