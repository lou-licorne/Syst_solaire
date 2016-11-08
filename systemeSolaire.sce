///////////////////////////////////////
//      systemeSolaire.sce
///////////////////////////////////////

/////////////////////////////////////
//          Parametres             //
/////////////////////////////////////

    funcprot(0) // A mort les messages d'avertissement de redef! ╭∩╮(-_-)╭∩╮

    // Arthur
    //////////////////////
    folder = 'C:\Users\Tutur\Documents\Cours - Travaux Fac\mathsInge\Syst_solaire\';    //Folder portable Arthur
    //folder = 'W:\mathsInge\Mini-projet 2\';   //Folder Fac Arthur

    // Lou
    //////////////////////
    //folder = 'C:\Users\Lou\Desktop\SYSTEME\';    //Folder portable Arthur
    //folder = 'W:\maths\Mini-Projet-2\'    //Folder Fac Lou
    //folder = 'louping/licorne/'   //Folder Louison

    exec(folder+'lesAstres.sce');
    exec(folder+'lesFonctions.sce');

/////////////////////////////////////
//          L'animation            //
/////////////////////////////////////

sol = soleil; te = terre; l=lune, ast=astronaute; // N'écrase pas les astres

function easterEgg = doABarrelRoll()    // Lançable via le terminal
//    while 1
    for i = 1:500
        drawlater();
        clf();
        
        //  Le Soleil Vert
//        sol = tourneSoleil(sol);  // Possibilité de faire tourner le soleil sur lui 
        afficheSoleil(sol);
        
        //  Mars One
        te = tourneTerre(te);
        te = tourneTerreSoleil(te);
        afficheTerre(te);
        
        //Calcul le nouveau centreTerre
        centreTerre = calculCentreAstre(te);
        
        //  Apollo 13
        l=tourneLune(l);
        afficheLune(l);
        
        //  Thomas Pesquet
        if (i < 200) then 
            ast=tourneAstronaute(ast);
        end
        afficheAstronaute(ast)
        
        xpause(5000);
        drawnow();
    end
    
    easterEgg = "https://www.youtube.com/watch?v=paNiFe_PQKA - Version française de Space Oddity"

endfunction

doABarrelRoll() // Auto exec sur F5
