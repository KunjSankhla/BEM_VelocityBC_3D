function d = Tijk_calc_int(x,xo,y,yo,z,zo,i,j,k,int_var1,int_var2,ll1,lu1,ll2,lu2)
mu = 1; % change mu here if it is to be changed for the code!!
% T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(z-zo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5;

% if int_var1 == 1 && int_var2 == 2 % integration wrt x then y
%     d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
% elseif int_var1 == 1 && int_var2 == 3 % integration wrt x then z
%     d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
% elseif int_var1 == 2 && int_var2 == 3 % integration wrt y then z
%     d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
% end

if i == 1 && j == 1 && k == 1
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(x-xo).*(x-xo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 1 && j == 1 && k == 2
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(x-xo).*(y-yo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 1 && j == 1 && k == 3
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(x-xo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 1 && j == 2 && k == 1
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(x-xo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 1 && j == 2 && k == 2
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(y-yo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 1 && j == 2 && k == 3
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 1 && j == 3 && k == 1
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(x-xo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 1 && j == 3 && k == 2
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(z-zo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 1 && j == 3 && k == 3
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(z-zo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 2 && j == 1 && k == 1
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(x-xo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 2 && j == 1 && k == 2
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(y-yo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 2 && j == 1 && k == 3
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 2 && j == 2 && k == 1
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(y-yo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 2 && j == 2 && k == 2
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(y-yo).*(y-yo).*(y-yo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 2 && j == 2 && k == 3
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(y-yo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 2 && j == 3 && k == 1
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 2 && j == 3 && k == 2
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(y-yo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 2 && j == 3 && k == 3
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(z-zo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 3 && j == 1 && k == 1
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(x-xo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 3 && j == 1 && k == 2
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 3 && j == 1 && k == 3
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(z-zo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 3 && j == 2 && k == 1
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 3 && j == 2 && k == 2
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(y-yo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 3 && j == 2 && k == 3
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(z-zo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 3 && j == 3 && k == 1
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(x-xo).*(z-zo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 3 && j == 3 && k == 2
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(z-zo).*(y-yo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
elseif i == 3 && j == 3 && k == 3
    T = @(x,xo,y,yo,z,zo) 6.*mu.*(z-zo).*(z-zo).*(z-zo)./(((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^2.5);
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) T(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) T(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) T(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end
end



end