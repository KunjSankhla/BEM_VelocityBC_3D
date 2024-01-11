Nx = 4;
Ny = 4;
Nz = 4;
Lx = 1;
Ly = 1;
Lz = 1;
mu = 1;
% forming the coordinate options for each side;
N_total = 2*Nx*Ny + 2*Ny*Nz + 2*Nx*Nz;

x_diff_start = Lx/(2*Nx);
x_diff = Lx/Nx;
y_diff_start = Ly/(2*Ny);
y_diff = Ly/Ny;
z_diff_start =Lz/(2*Nz);
z_diff = Lz/Nz;
int_coordinates = zeros(N_total,3);

% surface 1 -
m = 0;
for i = 1:Ny
    for j = 1:Nx
        int_coordinates(j+m, 1) = x_diff_start + x_diff*(j-1);
        int_coordinates(j+m,2) = y_diff_start + y_diff*(i-1);
        int_coordinates(j+m,3) = 0;
    end
    m = m + Nx;
end

% surface 2 - 
m = Nx*Ny;
for i = 1:Nz
    for j = 1:Nx
        int_coordinates(j+m, 1) = x_diff_start + x_diff*(j-1);
        int_coordinates(j+m,2) = Ly;
        int_coordinates(j+m,3) = z_diff_start + z_diff*(i-1);
    end
    m = m + Nx;
end

% surface 3 - 
m = Nx*Ny + Nz*Nx;
for i = 1:Ny
    for j = 1:Nx
        int_coordinates(j+m, 1) = x_diff_start + x_diff*(j-1);
        int_coordinates(j+m,2) = Ly-(y_diff_start + y_diff*(i-1));
        int_coordinates(j+m,3) = Lz;
    end
    m = m + Nx;
end

% surface 4 - 
m = 2*Nx*Ny + Nx*Nz;
for i = 1:Nz
    for j = 1:Nx
        int_coordinates(j+m, 1) = x_diff_start + x_diff*(j-1);
        int_coordinates(j+m,2) = 0;
        int_coordinates(j+m,3) = Lz-(z_diff_start + z_diff*(i-1));
    end
    m = m + Nx;
end

% surface 5 - 
m = 2*Nx*Ny + 2*Nx*Nz;
for i = 1:Ny
    for j = 1:Nz
        int_coordinates(j+m, 1) = 0;
        int_coordinates(j+m,2) = y_diff_start + y_diff*(i-1);
        int_coordinates(j+m,3) = Lz-(z_diff_start + z_diff*(j-1));
    end
    m = m + Nz;
end

% surface 6 - 
m = 2*Nx*Ny + 2*Nx*Nz + Ny*Nz;
for i = 1:Ny
    for j = 1:Nz
        int_coordinates(j+m, 1) = Lx;
        int_coordinates(j+m,2) = y_diff_start + y_diff*(i-1);
        int_coordinates(j+m,3) = (z_diff_start + z_diff*(j-1));
    end
    m = m + Nz;
end

Velocity_boundaries = zeros(N_total,3);

for n = 1:N_total
% boundary 1 - 
if (n >= 1) && (n <= Nx*Ny)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 0; % z-velocity;

% for boundary 2 -
elseif(n> Nx*Ny) && (n <= Nx*Nz + Nx*Ny)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 0; % z-velocity;

% for boundary 3 -
elseif(n> Nx*Nz + Nx*Ny) && (n <= Nx*Nz + 2*Nx*Ny)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 0; % z-velocity;

% for boundary 4 -
elseif(n> Nx*Nz + 2*Nx*Ny) && (n <= 2*Nx*Nz + 2*Nx*Ny)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 0; % z-velocity;
% for boundary 5 -
elseif(n> 2*Nx*Nz + 2*Nx*Ny) && (n <= 2*Nx*Nz + 2*Nx*Ny + Ny*Nz)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 0; % z-velocity;

% for boundary 6 -
elseif(n> 2*Nx*Nz + 2*Nx*Ny + Ny*Nz) && (n <= 2*Nx*Nz + 2*Nx*Ny + 2*Ny*Nz)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 0; % z-velocity;
end
end

%internal/domain numbering
total_domain = Nx*Ny*Nz;
dom_int_coordinates = zeros(total_domain,3);
x_internal  = x_diff_start:x_diff:Lx;
y_internal  = y_diff_start:y_diff:Ly;
z_internal  = z_diff_start:z_diff:Lz;

m = 1;
for a = 1:Nz
    for b = 1:Ny
        for c= 1:Nx
            dom_int_coordinates(m,1) = x_internal(c);
            dom_int_coordinates(m,2) = y_internal(b);
            dom_int_coordinates(m,3) = z_internal(a);
            m = m+1;
        end
    end
end

