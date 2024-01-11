A = cell(N_total);

for m = 1:N_total
    mat = zeros(3,3);
    A{m} = mat;
end



for m = 1:N_total
    xo = int_coordinates(m,1);
    yo = int_coordinates(m,2);
    zo = int_coordinates(m,3);

    for n = 1:N_total
        x = int_coordinates(n,1);
        y = int_coordinates(n,2);
        z = int_coordinates(n,3);
        mat_tmp = zeros(3,3);

                                                                                                                                                                                                                                                                            
        % boundary 1 -
        if (n >= 1) && (n <= Nx*Ny)
            ll1 = x - x_diff_start;
            lu1 = x + x_diff_start;
            ll2 = y + y_diff_start;
            lu2 = y - y_diff_start;
            for i = 1:3
                for j = 1:3
                    mat_tmp(i,j) = Sij_calc_int(x,xo,y,yo,z,zo,i,j,1,2,ll1,lu1,ll2,lu2);
                end
            end
            A{m,n} = mat_tmp;

            % for boundary 2 -
        elseif(n> Nx*Ny) && (n <= Nx*Nz + Nx*Ny)
            ll1 = x - x_diff_start;
            lu1 = x + x_diff_start;
            ll2 = z + z_diff_start;
            lu2 = z - z_diff_start;

            for i = 1:3
                for j = 1:3
                    mat_tmp(i,j) = Sij_calc_int(x,xo,y,yo,z,zo,i,j,1,3,ll1,lu1,ll2,lu2);
                end
            end
            A{m,n} = mat_tmp;



            % for boundary 3 -
        elseif(n> Nx*Nz + Nx*Ny) && (n <= Nx*Nz + 2*Nx*Ny)
            ll1 = x - x_diff_start;
            lu1 = x + x_diff_start;
            ll2 = y + y_diff_start;
            lu2 = y - y_diff_start;
            for i = 1:3
                for j = 1:3
                    mat_tmp(i,j) = Sij_calc_int(x,xo,y,yo,z,zo,i,j,1,2,ll1,lu1,ll2,lu2);
                end
            end
            A{m,n} = mat_tmp;
            

            % for boundary 4 -
        elseif(n> Nx*Nz + 2*Nx*Ny) && (n <= 2*Nx*Nz + 2*Nx*Ny)
            ll1 = x - x_diff_start;
            lu1 = x + x_diff_start;
            ll2 = z + z_diff_start;
            lu2 = z - z_diff_start;

            for i = 1:3
                for j = 1:3
                    mat_tmp(i,j) = Sij_calc_int(x,xo,y,yo,z,zo,i,j,1,3,ll1,lu1,ll2,lu2);
                end
            end
            A{m,n} = mat_tmp;

            % for boundary 5 -
        elseif(n> 2*Nx*Nz + 2*Nx*Ny) && (n <= 2*Nx*Nz + 2*Nx*Ny + Ny*Nz)
            ll1 = y - x_diff_start;
            lu1 = y + x_diff_start;
            ll2 = z + z_diff_start;
            lu2 = z - z_diff_start;

            for i = 1:3
                for j = 1:3
                    mat_tmp(i,j) = Sij_calc_int(x,xo,y,yo,z,zo,i,j,2,3,ll1,lu1,ll2,lu2);
                end
            end
            A{m,n} = mat_tmp;


            % for boundary 6 -
        elseif(n> 2*Nx*Nz + 2*Nx*Ny + Ny*Nz) && (n <= 2*Nx*Nz + 2*Nx*Ny + 2*Ny*Nz)
            ll1 = y - x_diff_start;
            lu1 = y + x_diff_start;
            ll2 = z + z_diff_start;
            lu2 = z - z_diff_start;

            for i = 1:3
                for j = 1:3
                    mat_tmp(i,j) = Sij_calc_int(x,xo,y,yo,z,zo,i,j,2,3,ll1,lu1,ll2,lu2);
                end
            end
            A{m,n} = mat_tmp;
        end
        
    end

end
MatA = cell2mat(A);