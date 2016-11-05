/////////////////
//  Le Soleil  //
/////////////////

function afficheSoleil(sol)

    a=gca();
    a.data_bounds=[-12,-12,-12;12,12,12];

    face=zeros(3,4,6);
    face(:,:,1)=sol(:,[1 2 3 4]);
    face(:,:,2)=sol(:,[5 8 7 6]);
    face(:,:,3)=sol(:,[3 7 8 4]);
    face(:,:,4)=sol(:,[2 6 7 3]);
    face(:,:,5)=sol(:,[1 5 6 2]);
    face(:,:,6)=sol(:,[1 4 8 5]);

    x=matrix(face(1,:,:),4,6);
    y=matrix(face(2,:,:),4,6);
    z=matrix(face(3,:,:),4,6);

    plot3d(x,y,z)
    e=gce(); e.color_mode=3;

endfunction

function s = tourneSoleil(sol)
    tmps = %pi/45;
    R=[1 0 0;0 cos(tmps) -sin(tmps);0 sin(tmps) cos(tmps)];

    s = sol - centreSoleil*ones(1,size(sol,"c"));
    s = R*s;
    s = s + centreSoleil*ones(1,size(sol,"c"));

//    afficheSoleil(s);
endfunction

///////////////
//  La Lune  //
///////////////

function afficheLune(l)

    face=zeros(3,3,4);
    face(:,:,1)=l(:,[1 2 4]);
    face(:,:,2)=l(:,[2 3 4]);
    face(:,:,3)=l(:,[1 3 4]);
    face(:,:,4)=l(:,[1 2 3]);

    x=matrix(face(1,:,:),3,4);
    y=matrix(face(2,:,:),3,4);
    z=matrix(face(3,:,:),3,4);

    plot3d(x,y,z);
    e=gce(); e.color_mode=2;

endfunction

function l = tourneLune(l)
    tmps = %pi/25;
    R=[1 0 0;0 cos(tmps) -sin(tmps);0 sin(tmps) cos(tmps)];

    l = l - centreLune*ones(1,size(l,"c"));
    l = R*l;
    l = l + centreLune*ones(1,size(l,"c"));

//    afficheLune(l);
endfunction

////////////////
//  La Terre  //
////////////////

function afficheTerre(te)

    face=zeros(3,3,8);
    face(:,:,1)=te(:,[1 2 5]);
    face(:,:,2)=te(:,[2 3 5]);
    face(:,:,3)=te(:,[3 4 5]);
    face(:,:,4)=te(:,[1 4 5]);
    face(:,:,5)=te(:,[1 2 6]);
    face(:,:,6)=te(:,[2 3 6]);
    face(:,:,7)=te(:,[3 4 6]);
    face(:,:,8)=te(:,[1 4 6]);

    x=matrix(face(1,:,:),3,8);
    y=matrix(face(2,:,:),3,8);
    z=matrix(face(3,:,:),3,8);

    plot3d(x,y,z);
    e=gce(); e.color_mode=5;

endfunction

function t = tourneTerre(t)
    tmps = %pi/20;
    R=[ cos(tmps) -sin(tmps) 0;
        sin(tmps)  cos(tmps) 0;
            0           0    1];

    t = t - centreTerre*ones(1,size(t,"c"));
    t = R*t;
    t = t + centreTerre*ones(1,size(t,"c"));

    //afficheTerre(t);
endfunction

///////////////////////
//  Rotation Espace  //
///////////////////////

function t = tourneTerreSoleil(t)
    t2=%pi/20;
    
    R2=[cos(t2) -sin(t2) 0;
        sin(t2) cos(t2)  0;
            0       0    1];

    t = R2*t;

//    afficheTerre(t);
endfunction

function l = tourneTerreSoleil(l)
    t2=%pi/20;
    
    R2=[cos(t2) -sin(t2) 0;
        sin(t2) cos(t2)  0;
            0       0    1];

    l = R2*l;

//    afficheTerre(t);
endfunction

/////////////
//  Autre  //
/////////////

function tourneAstres(sol,te,l)
    for i=1:50
        drawlater();
        clf();

        sol = tourneSoleil(sol);
        te = tourneTerre(te);
        te = tourneTerreSoleil(te);
        l = tourneLune(l);

        xpause((1/25)*1000);
        drawnow();
    end
endfunction

function afficheSys()    
    sol = soleil; te = terre; l =lune;
    afficheSoleil(sol);
    afficheTerre(te);
    afficheLune(l);


    tourneAstres(sol, te, l);
endfunction

disp("Les fonctions ont bien été créées");
