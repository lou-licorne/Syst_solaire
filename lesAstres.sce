//////////////////////
//  Initialisation  //
//////////////////////

//Soleil
soleil=[-1  1  1; 
         1  1  1; 
         1 -1  1; 
        -1 -1  1; 
        -1  1 -1; 
         1  1 -1; 
         1 -1 -1; 
        -1 -1 -1]';
centreSoleil=[0 0 0]';

//Terre
terre=[0 1 1;
       1 1 2;
       2 1 1; 
       1 1 0;
       1 2 1;
       1 0 1]'-1;
terre(1,:)=terre(1,:)+10;
centreTerre = [0 0 0]';
centreTerre(1,:)=centreTerre(1,:)+10;

//Lune
lune=[1 1 1;
      2 0 2;
      0 0 2;
      1 0 0]'/3;
lune(1,:)=lune(1,:)+7;
centreLune = [1 0.5 1]'/3;
centreLune(1,:)=centreLune(1,:)+12;

disp("Les astres ont bien été créés");
