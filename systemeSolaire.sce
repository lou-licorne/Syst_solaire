///////////////////////////////////////
//      systemeSolaire.sce
///////////////////////////////////////

/////////////////////////////////////
//          Parametres             //
/////////////////////////////////////

    funcprot(0) // A mort les messages d'avertissement de redef! ╭∩╮(-_-)╭∩╮

    // Arthur
    //////////////////////
    //folder = '/home/arthur/Documents/Scilab/Mini-Projet 2/';    //Folder portable Arthur
    folder = 'C:\Users\Tutur\Documents\Cours - Travaux Fac\mathsInge\Syst_solaire\';    //Folder portable Arthur
    //folder = 'W:\mathsInge\Mini-projet 2\';   //Folder Fac Arthur

    // Lou
    //////////////////////
    //folder = 'W:\maths\Mini-Projet-2\'    //Folder Fac Lou
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

function doABarrelRoll()    // Lançable via le terminal
//    while 1
    for i = 1:50
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
//        l = tourneTerreSoleil(l);
        afficheLune(l);
        
        xpause((1/25)*100);
        drawnow();
    end
endfunction

doABarrelRoll() // Auto exec sur F5
