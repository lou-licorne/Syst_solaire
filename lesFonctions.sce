///////////////////////////////////////
//         les Translations          //
///////////////////////////////////////

// Cette fonction retourne la position du barycentre de mat. (pour nous, cela représente le point de pivot et l'origine de l'objet)
function origin=getOrigin(mat) 
    origin = zeros(3, 1);
    origin(1) = mean(mat(1, :));
    origin(2) = mean(mat(2, :));
    origin(3) = mean(mat(3, :));
endfunction

// Cette fonction permet de faire une translation sur la matrice mat de vecteur.
function res=translation(mat, vector)
     res = mat;
     
     for i = 1:size(mat, 'r')
        for j = 1:size(mat, 'c')
            res(i, j) = mat(i, j) + vector(i);
        end
     end
endfunction

///////////////////////////////////////
//         lesFonctions.sce          //
///////////////////////////////////////

function result = coucherMatrice(matriceX, matriceY, matriceZ)
    result = [];
    for i=1:size(matriceX, "r")
        for j=1:size(matriceX, "c")

            colResult = size(result, "c");
            
            result(1, colResult +1) = matriceX(i,j); //X
            result(2, colResult +1) = matriceY(i,j); //Y
            result(3, colResult +1) = matriceZ(i,j); //Z
        end
    end
    
endfunction;

function result = rotation(matrice, x, y, z)
    result = matrice;
    
    vect = getOrigin(result);
    result = translation(result, -vect);
    
    result = [cos(z) -sin(z) 0;
              sin(z)  cos(z) 0;
                  0       0  1] * result;
           
    result = [cos(y) 0 -sin(y);
                  0  1      0 ;
              sin(y) 0  cos(y)] * result;
           
    result = [1     0       0 ;
              0 cos(x) -sin(x);
              0 sin(x)  cos(x)] * result;

    result = translation(result, vect);
endfunction

disp("coucou")
