MatA_prsd = MatA;
MatA_prsd(1,:) = [];
MatA_prsd(1,:) = [];
MatA_prsd(1,:) = [];
MatA_prsd(:,1) = [];
MatA_prsd(:,1) = [];
MatA_prsd(:,1) = [];
MatB_prsd = MatB;
MatB_prsd(1) = [];
MatB_prsd(1) = [];
MatB_prsd(1) = [];

x_mat = mldivide(MatA,MatB);


% x = mldivide(MatA_prsd,MatB_prsd);
% x_mat = zeros(N_total*3,1);
% for n = 4:N_total*3
%     x_mat(n) = x(n-3);
% end

R_mat = zeros(N_total,3);

for n = 1:3*N_total
    remainder = rem(n,3);
    if (remainder == 0)
        R_mat(n/3 ,3) = x_mat(n);
    elseif (remainder == 1)
        R_mat((n+2)/3,1) = x_mat(n);
    elseif (remainder == 2)
        R_mat((n+1)/3,2) = x_mat(n);
    end

end
