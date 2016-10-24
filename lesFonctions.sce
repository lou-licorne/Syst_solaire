///////////////////////////////////////
//         lesFonctions.sce          //
///////////////////////////////////////

function result = coucherMatrice(matriceX, matriceY, matriceZ)
    result = [];
    for i=1:size(matriceX, "r")
        for j=1:size(matriceX, "c")
            
            disp("coucou")
            colResult = size(result, "c");
            
            result(1, colResult +1) = matriceX(i,j);
            result(2, colResult +1) = matriceY(i,j);
            result(3, colResult +1) = matriceZ(i,j);
        end
    end
    
endfunction;

function result = rotation(matrice, axe)
    
endfunction

disp("coucou")
