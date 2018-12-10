%% Estimating Natural Convection Heat Transfer for Arrays of Vertical Parallel Flat Plates
b = 8.57E-3; %gap between adjacent plates
c_p = 1.0063*1000; %J/(kg*K) specific heat at constant pressure
g_c = 9.81; %m/s^2 gravitational acceleration
k = 2.816E-2; %thermal conductivity of air
L = 48E-3; %m length of plate in vertical flow direction
T_a = 273+40;%temperature of ambient air
T_s = 273+96;  %temperature of heated surface
beta = 1/T_a; %coefficient of thermal expansion for air
ro = 1.086; %kg/m^3 density of air
nu = 1962.03E-6 % kg/m s dynamic viscosity of air
%% GRASHOF NUMBER for vertical flat plates
Gr = (g_c*beta*(T_s-T_a)*L^3)/nu^2; 
%% PRANDTL NUMBER
Pr = c_p*nu/k;
%% RAYLEIGH NUMBER
Ra = (ro^2*g_c*beta*c_p*(b^4)*(T_s-T_a))/(nu*k*L);
%% NUSSELT NUMBER
Nu = Ra*(1-exp(-35/Ra))^0.75;
%% HEAT TRANSFER COEFF
h = Nu*k/b;