# BEM_VelocityBC_3D
Simulate stokes flow in 3D, using Boundary Element Method, with specified velocity boundary condition

To run the code, open all the files in matlab and run "Run_main"

To change input variables like number of discreatized points per boundary, or the boundary velocities, edit "Inputs_Grids.m" file

While Giving the boundary velocities, please ensure to maintain mass balance.

some cases to test are written below.


case 1:- Opposite boundary flow.


for n = 1:N_total
% boundary 1 - 
if (n >= 1) && (n <= Nx*Ny)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 1; % z-velocity;

% for boundary 2 -
elseif(n> Nx*Ny) && (n <= Nx*Nz + Nx*Ny)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 0; % z-velocity;

% for boundary 3 -
elseif(n> Nx*Nz + Nx*Ny) && (n <= Nx*Nz + 2*Nx*Ny)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 1; % z-velocity;

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


case 2:- Lid Driven cavity.


for n = 1:N_total
% boundary 1 - 
if (n >= 1) && (n <= Nx*Ny)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 0; % z-velocity;

% for boundary 2 -
elseif(n> Nx*Ny) && (n <= Nx*Nz + Nx*Ny)
    Velocity_boundaries(n,1) = 1; % x-velocity;
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




case 3:- Adjacent boundary flow cavity.

for n = 1:N_total
% boundary 1 - 
if (n >= 1) && (n <= Nx*Ny)
    Velocity_boundaries(n,1) = 0; % x-velocity;
    Velocity_boundaries(n,2) = 0; % y-velocity;
    Velocity_boundaries(n,3) = 1; % z-velocity;

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
    Velocity_boundaries(n,3) = -1; % z-velocity;
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
