%% Estimating Natural Convection Heat Transfer Coefficient on a Flat Plate
%% Dimensionless Correlation
b = 8.57E-3; %gap between adjacent plates
c_p = 1.0063*1000; %J/(kg*K) specific heat at constant pressure
g_c = 9.81; %m/s^2 gravitational acceleration
k = 2.816E-2; %thermal conductivity of air
L = 5E-3; %m length of plate in vertical flow direction
T_a = 273+40;%temperature of ambient air
A = 0.0105 % m^2 base area
T_s = 50+T_a;  %temperature of heated surface
beta = 1/T_a; %coefficient of thermal expansion for air
ro = 1.086; %kg/m^3 density of air
nu = 1962.03E-6 % kg/m s dynamic viscosity of air
%% GRASHOF NUMBER flat plates
Gr = (g_c*beta*(T_s-T_a)*L^3)/nu^2; 
%% PRANDTL NUMBER
Pr = c_p*nu/k;
%% NUSSELT NUMBER
Nu = C*(Gr*Pr)^n
h = k*Nu/L
%% Simplified Formula 

%T_s = (60/C*A)^(1/(n+1))*L^(n/(n+1))+T_a;
h_simple = C*((T_s-T_a)/L)^n
%% PCB h
A = 14188E-6;
T_s = 273+40+100
L = 1E-3;
h_pcb = C*((T_s-T_a)/L)^n
%% GaN h

%% Simplified formula 
% Base of the heat-sink
C = 1.32;
n = 0.25;
T_s = (60/(C*A))^(1/(n+1))*L^(n/(n+1))+T_a;
h_base = C*((T_s-T_a)/L)^n
% Gan
L = 0.56E-3;
A = 60.35E-6;
T_s = (10/(C*A))^(1/(n+1))*L^(n/(n+1))+T_a;
h_gan = C*((T_s-T_a)/L)^n
% PCB
A = 14188E-6;
L = 1E-3;
T_s = (60/(C*A))^(1/(n+1))*L^(n/(n+1))+T_a;
h_pcb = C*((T_s-T_a)/L)^n
% Fins of the heat sink (Vertical heat problem)
C = 1.42;
n = 0.25;