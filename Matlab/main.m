%% Defined Variables (FIXED)
powerLoss = 8; %Watts per GaN
R_jc = 0.5; %C/W
R_pcb = 3.39; %C/W 4 layer 1mm FR4 PCB

%% Thermal Interface (Chosen 2mm 1798-1267-ND)
sigmaThermalPad = 5 %W/m-K
length_z = 2*10^-3  %meter 
Area = (2.5*10^-2)^2 %Thermal interface Area meter
R_tim = 0.69/6;

%% Maximum allowable heat-sink resistance
maximumJunctionTemperature = 150; %C
ambientTemperature = 40 %C
offset = 10 %C 

R_total = (maximumJunctionTemperature-ambientTemperature-offset)/powerLoss;
R_heatsink_max = R_total-R_jc-R_pcb-R_tim
%% Heat-sink thermal resistance calculation (for 1 slice of pizza)
h = 5; % W/(m2.C) worst-case
A_base = 0.01436; % meter^2
N_fin = 12 ; %may be it can normalized?
eff_fin;
A_fin ; %Fin area normalized with fin number
reynoldNumberAir = reynoldNumber(velocityOfFlow,lengthOfFlow,kinematicViscosity) %Reynold Number (Uniteless)
R_hs = 1/(h*(A_base+N_fin*eff_fin*A_fin))
%%
function a = thermalResistance(area,length,conductivity)
a = length/(conductivity*area);
end

function b = reynoldNumber(velocityOfFlow,lengthOfFlow,kinematicViscosity)
b = velocityOfFlow/(kinematicViscosity*lengthOfFlow);
end

