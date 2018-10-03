%% Constants
powerLoss = 10; %Watts per GaN
R_jc = 0.5; %C/W
R_pcb = 3.39; %C/W 4 layer 1mm FR4 PCB
velocityOfFlow = 1.6; %m/s @8.03CFM brushless dc motor fan
Cp = 1.0047; %kJ/(kg*K)
k_air = 27.35E-3 % W/m-K
dynamic_viscosity = 18.03E-6 % Pa s
ambient_temperature = 273+18; %K
t_fin = 2.73E-3 %m thickness of fin
h_fin = 18E-3 %m fin height
k_fin = 205; %W/m-K
A_base = 0.01436; % meter^2
N_fin = 12; 
L = 0.11020 %m Length
A_fin = 2*h_fin*L
b = 8.5E-3 %m distance between fins
velocityOfFlow = 1.7171 %m/s @8.03CFM brushless dc motor fan
%% Constant Calculations 
%ro_air = density_air(ambient_temperature, pressure, percent_humidity);
ro_air = 1.127 %kg/m^3
Pr = (dynamic_viscosity*Cp*1000)/(k_air);
Re = (ro_air*velocityOfFlow*b*b)/(L*dynamic_viscosity)
Nu = (1/(Re*Pr*0.5)^3+1/(0.664*sqrt(Re)*(Pr^0.33)*sqrt(1+3.65/sqrt(Re)))^3)^-0.33
h = Nu*k_air/b; %W/m-K
%% Thermal Interface
R_tim = thermal_interface(5,1*10^-3,10^-3); %h,length at z, Area
%% Heat-sink Thermal Resistance calculation
R_hs = heat_sink_thermal_resistor_calculator(h,A_fin,N_fin,A_base,k_fin,t_fin,h_fin)