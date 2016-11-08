/////////////////
//  Le Soleil  //
/////////////////

function afficheSoleil(sol)

    a=gca();
    a.data_bounds=[-20,-20,-12;
                    20, 20, 12];

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
    R=[ cos(tmps) -sin(tmps) 0;
        sin(tmps)  cos(tmps) 0;
            0           0    1];

    s = sol - centreSoleil*ones(1,size(sol,"c"));
    s = R*s;
    s = s + centreSoleil*ones(1,size(sol,"c"));
endfunction

///////////////
//  La Lune  //
///////////////

function afficheLune(l)
    tmpsInclinaison = %pi/8;
    centreLune = calculCentreAstre(l);
    RInclinaison=[ 1               0                  0  ;
                   0 cos(tmpsInclinaison) -sin(tmpsInclinaison);
                   0 sin(tmpsInclinaison)  cos(tmpsInclinaison)];

    l = l - centreLune*ones(1,size(l,"c"));
    l = RInclinaison*l;
    l = l + centreLune*ones(1,size(l,"c"));

    face=zeros(3,3,4);
    face(:,:,1)=l(:,[1 2 4]);
    face(:,:,2)=l(:,[2 3 4]);
    face(:,:,3)=l(:,[1 3 4]);
    face(:,:,4)=l(:,[1 2 3]);

    x=matrix(face(1,:,:),3,4);
    y=matrix(face(2,:,:),3,4);
    z=matrix(face(3,:,:),3,4);

    plot3d(x,y,z, alpha=90, theta=360); // Vue Lune
    //plot3d(x,y,z);
    e=gce(); e.color_mode=2;

endfunction

function l = tourneLune(l)
    tmps = %pi/50;
    Inclinaison = 1/8;
    R=[ cos(tmps) -sin(tmps) 0;
        sin(tmps)  cos(tmps) 0;
            0           0    1];

    l = l - centreTerre*ones(1,size(l,"c"));
    l = R*l;
    l = l + centreTerre*ones(1,size(l,"c"));
endfunction

////////////////
//  La Terre  //
////////////////

function afficheTerre(t)

    //Inclinaison de la terre de 1/8
    tmpsInclinaison = %pi/8;
    centreTerre = calculCentreAstre(te);
    RInclinaison=[ 1               0                  0  ;
                   0 cos(tmpsInclinaison) -sin(tmpsInclinaison);
                   0 sin(tmpsInclinaison)  cos(tmpsInclinaison)];

    t = t - centreTerre*ones(1,size(t,"c"));
    t = RInclinaison*t;
    t = t + centreTerre*ones(1,size(t,"c"));

    face=zeros(3,3,8);
    face(:,:,1)=t(:,[1 2 5]);
    face(:,:,2)=t(:,[2 3 5]);
    face(:,:,3)=t(:,[3 4 5]);
    face(:,:,4)=t(:,[1 4 5]);
    face(:,:,5)=t(:,[1 2 6]);
    face(:,:,6)=t(:,[2 3 6]);
    face(:,:,7)=t(:,[3 4 6]);
    face(:,:,8)=t(:,[1 4 6]);

    x=matrix(face(1,:,:),3,8);
    y=matrix(face(2,:,:),3,8);
    z=matrix(face(3,:,:),3,8);

    plot3d(x,y,z, alpha=90, theta=360);
    //plot3d(x,y,z);
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
endfunction

function ast = calculCentreAstre(astre)
    
    for i=1:size(astre, "r")
        temp = 0;
        for j=1:size(astre, "c")
            temp = temp + astre(i, j)
        end
        ast(i) = temp/size(astre, "c");
    end
    
endfunction

///////////////////////
//  Rotation Espace  //
///////////////////////

function t = tourneTerreSoleil(te)
    t2=%pi/200;
    
    R2=[cos(t2) -sin(t2) 0;
        sin(t2) cos(t2)  0;
            0       0    1];

    t = R2*te;
endfunction

function l = tourneLuneTerre(lune)
    t2=%pi/2;
    
    R=[ cos(t2) -sin(t2) 0;
        sin(t2) cos(t2)  0;
            0       0    1]

    l = l - centreTerre*ones(1, size(l, "c")) - centreLune*ones(1, size(l, "c"));
    l = R*l;
    l = l + centreTerre*ones(1, size(l, "c")) + centreLune*ones(1, size(l, "c"));
endfunction

/////////////////
//  La fusée   //
/////////////////

function afficheAstronaute(astro)

    face=zeros(3,4,6);
    face(:,:,1)=astro(:,[1 2 3 4]);
    face(:,:,2)=astro(:,[5 8 7 6]);
    face(:,:,3)=astro(:,[3 7 8 4]);
    face(:,:,4)=astro(:,[2 6 7 3]);
    face(:,:,5)=astro(:,[1 5 6 2]);
    face(:,:,6)=astro(:,[1 4 8 5]);

    x=matrix(face(1,:,:),4,6);
    y=matrix(face(2,:,:),4,6);
    z=matrix(face(3,:,:),4,6);

    plot3d(x,y,z, alpha=90, theta=360);
    //plot3d(x,y,z)
    e=gce(); e.color_mode=6;

endfunction

function a = tourneAstronaute(astro)
    tmps = %pi/45;
    R=[ cos(tmps) -sin(tmps) 0;
        sin(tmps)  cos(tmps) 0;
            0           0    1];

    a = astro - centreAstronaute*ones(1,size(astro,"c"));
    a = R*a+1/20;
    a = a + centreAstronaute*ones(1,size(astro,"c"));
endfunction


disp("Les fonctions ont bien été créées");
