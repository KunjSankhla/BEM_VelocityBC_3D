function d = Sij_calc_int(x,xo,y,yo,z,zo,i,j,int_var1,int_var2,ll1,lu1,ll2,lu2)
% this function is going to integrate the Sij integral that is to be used.

% if int_var1 == 1 && int_var2 == 2 %integration about x then y
%     d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
% elseif int_var1 == 1 && int_var2 == 3 % integration about x then z
%     d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
% elseif int_var1 == 2 && int_var2 == 3 % integration about y then z
%     d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
% end

if i == 1 && j == 1
    f = @(x,xo,y,yo,z,zo) -1./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^0.5 - (x-xo).*(x-xo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^1.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 1 && j == 2
    f = @(x,xo,y,yo,z,zo) -(x-xo).*(y-yo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^1.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 1 && j == 3
    f = @(x,xo,y,yo,z,zo) -(x-xo).*(z-zo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^1.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 2 && j == 1
    f = @(x,xo,y,yo,z,zo) -(x-xo).*(y-yo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^1.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 2 && j == 2
    f = @(x,xo,y,yo,z,zo) -1./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^0.5 - (y-yo).*(y-yo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^1.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 2 && j == 3
    f = @(x,xo,y,yo,z,zo) -(y-yo).*(z-zo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^1.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 3 && j == 1
    f = @(x,xo,y,yo,z,zo) -(x-xo).*(z-zo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^1.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 3 && j == 2
    f = @(x,xo,y,yo,z,zo) -(y-yo).*(z-zo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^1.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

elseif i == 3 && j == 3
    f = @(x,xo,y,yo,z,zo) -1./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^0.5 - (z-zo).*(z-zo)./((x-xo).^2 + (y-yo).^2 + (z-zo).^2).^1.5;
    if int_var1 == 1 && int_var2 == 2
        d = quad2d(@(a,b) f(a,xo,b,yo,z,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 1 && int_var2 == 3
        d = quad2d(@(a,b) f(a,xo,y,yo,b,zo),ll1,lu1,ll2,lu2);
    elseif int_var1 == 2 && int_var2 == 3
        d = quad2d(@(a,b) f(x,xo,a,yo,b,zo),ll1,lu1,ll2,lu2);
    end

end

end